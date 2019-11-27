using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileWep : Weapon
{
    #region Unity Functions
    protected override void Start()
    {
        base.Start();
        type = WeaponType.Projectile;

    }

    protected override void Update()
    {
        base.Update();
    }
    #endregion

    protected override void CheckUserInput()
    {
        base.CheckUserInput();
        if (type == WeaponType.Projectile)
        {
            if (fireTimer >= actualROF && burstCounter < burstRate && canFire)
            {
                if (Input.GetButton("Fire1"))
                {
                    Fire();
                    Debug.Log(actualROF);
                }
                
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
    }

    protected override void Fire()
    {
        base.Fire();

        // Reset the fire timer to 0 (for ROF)
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
            // Instantiate the projectile
            if (projectile != null)
            {
                GameObject proj = Instantiate(projectile, projectileSpawnSpot.position, projectileSpawnSpot.rotation) as GameObject;

                //// Warmup heat
                //if (warmup)
                //{
                //    if (multiplyPower)
                //        proj.SendMessage("MultiplyDamage", heat * powerMultiplier, SendMessageOptions.DontRequireReceiver);
                //    if (multiplyForce)
                //        proj.SendMessage("MultiplyInitialForce", heat * initialForceMultiplier, SendMessageOptions.DontRequireReceiver);

                //    heat = 0.0f;
                //}
            }
            else
            {
                Debug.Log("Projectile to be instantiated is null.  Make sure to set the Projectile field in the inspector.");
            }
        }

        // Recoil
        if (recoil)
            Recoil();

        //// Muzzle flash effects
        //if (makeMuzzleEffects)
        //{
        //    GameObject muzfx = muzzleEffects[Random.Range(0, muzzleEffects.Length)];
        //    if (muzfx != null)
        //        Instantiate(muzfx, muzzleEffectsPosition.position, muzzleEffectsPosition.rotation);
        //}

        // Instantiate shell props
        if (spitShells)
        {
            GameObject shellGO = Instantiate(shell, shellSpitPosition.position, shellSpitPosition.rotation) as GameObject;
            shellGO.GetComponent<Rigidbody>().AddRelativeForce(new Vector3(shellSpitForce + Random.Range(0, shellForceRandom), 0, 0), ForceMode.Impulse);
            shellGO.GetComponent<Rigidbody>().AddRelativeTorque(new Vector3(shellSpitTorqueX + Random.Range(-shellTorqueRandom, shellTorqueRandom), shellSpitTorqueY + Random.Range(-shellTorqueRandom, shellTorqueRandom), 0), ForceMode.Impulse);
        }

        // Play the gunshot sound
        GetComponent<AudioSource>().PlayOneShot(fireSound);
    }
}
