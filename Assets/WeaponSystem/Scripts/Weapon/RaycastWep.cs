using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaycastWep : Weapon
{
    #region Unity Functions
    protected override void Start()
    {
        base.Start();
        type = WeaponType.Raycast;

    }

    protected override void Update()
    {
        base.Update();
    }
    #endregion

    #region User Functions
    protected override void CheckUserInput()
    {
        base.CheckUserInput();
        if (fireTimer >= actualROF && burstCounter < burstRate && canFire)
        {
            if (Input.GetButton("Fire1"))
            {
                Fire();
                Debug.Log("I am Shooting");
            }

        }

        // Reset the Burst
        if (burstCounter >= burstRate)
        {
            burstTimer += Time.deltaTime;
            if (burstTimer >= burstPause)
            {
                burstCounter = 0;
                burstTimer = 0.0f;
            }
        }

        // If the weapon is semi-auto and the user lets up on the button, set canFire to true
        if (Input.GetButtonUp("Fire1"))
            canFire = true;
    }

    protected override void Fire()
    {
        base.Fire();

        // Reset the fireTimer to 0 (for ROF)
        fireTimer = 0.0f;

        // Increment the burst counter
        burstCounter++;

        // If this is a semi-automatic weapon, set canFire to false (this means the weapon can't fire again until the player lets up on the fire button)
        if (auto == Auto.Semi)
            canFire = false;

        // First make sure there is ammo
        if (currentAmmo <= 0)
        {
            DryFire();
            return;
        }

        // Subtract 1 from the current ammo
        if (!infiniteAmmo)
            currentAmmo--;

        // Fire once for each shotPerRound value
        for (int i = 0; i < shotPerRound; i++)
        {
            // Calculate accuracy for this shot
            float accuracyVary = (100 - currentAccuracy) / 1000;
            Vector3 direction = raycastStartSpot.forward;
            direction.x += UnityEngine.Random.Range(-accuracyVary, accuracyVary);
            direction.y += UnityEngine.Random.Range(-accuracyVary, accuracyVary);
            direction.z += UnityEngine.Random.Range(-accuracyVary, accuracyVary);
            currentAccuracy -= accuracyDropPerShot;
            if (currentAccuracy <= 0.0f)
                currentAccuracy = 0.0f;

            // The ray that will be used for this shot
            Ray ray = new Ray(raycastStartSpot.position, direction);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, range))
            {


                float damage = power;

                // Damage
                //hit.collider.gameObject.SendMessageUpwards("ChangeHealth", -damage, SendMessageOptions.DontRequireReceiver);
                hit.collider.gameObject.SendMessageUpwards("TakeDamage", -damage, SendMessageOptions.DontRequireReceiver);

                // Add force to the object that was hit
                if (hit.rigidbody)
                {
                    hit.rigidbody.AddForce(ray.direction * power * forceMultiplier);
                }
            }
        }

        // Recoil
        if (recoil)
            Recoil();

        // Instantiate shell props
        if (spitShells)
        {
            Debug.Log("Instantiating Shell");
            GameObject shellGO = Instantiate(shell, shellSpitPosition.position, shellSpitPosition.rotation) as GameObject;
            shellGO.GetComponent<Rigidbody>().AddRelativeForce(new Vector3(shellSpitForce + Random.Range(0, shellForceRandom), 0, 0), ForceMode.Impulse);
            shellGO.GetComponent<Rigidbody>().AddRelativeTorque(new Vector3(shellSpitTorqueX + Random.Range(-shellTorqueRandom, shellTorqueRandom), shellSpitTorqueY + Random.Range(-shellTorqueRandom, shellTorqueRandom), 0), ForceMode.Impulse);
        }

        // Play the gunshot sound
        GetComponent<AudioSource>().PlayOneShot(fireSound);
    }
    #endregion



}
