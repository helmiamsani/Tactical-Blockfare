using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum WeaponType
{
    Projectile,
    Raycast,
    Beam
}
public enum Auto
{
    Full,
    Semi
}
public class Weapon : MonoBehaviour
{
    #region Variables
    // Weapon Type
    public WeaponType type = WeaponType.Projectile;		// Which weapon system should be used
    

    // General
    [Header("General")]
    // Auto
    public Auto auto = Auto.Full;                       // How does this weapon fire - semi-auto or full-auto
    public bool playerWeapon = true;
    public GameObject weaponModel;                      // The actual mesh for this weapon
    public Transform raycastStartSpot;                  // The spot that the raycasting weapon system should use as an origin for rays
    

    // Projectile
    [Header("Projectile Weapon Only")]
    public GameObject projectile;						// The projectile to be launched (if the type is projectile)
	public Transform projectileSpawnSpot;               // The spot where the projectile should be instantiated (if the type is projectile)

    // Power
    [Header("Power")]
    public float power = 80.0f;							// The amount of power this weapon has (how much damage it can cause) (if the type is raycast or beam)
	public float forceMultiplier = 10.0f;				// Multiplier used to change the amount of force applied to rigid bodies that are shot
    // Range
    public float range = 9999.0f;                       // How far this weapon can shoot (for raycast and beam)
                                                        //public float beamPower = 1.0f;						// Damage caused by beam weapons.  This will be much lower as this amount is applied to the target every frame while firing



    // Rate of Fire
    [Header("Rate Of Fire")]
    public float rateOfFire = 10;						// The number of rounds this weapon fires per second
    public float delayBeforeFire = 0.0f;                // An optional delay that causes the weapon to fire a specified amount of time after it normally would (0 for no delay)
    protected float actualROF;							// The frequency between shots based on the rateOfFire
	protected float fireTimer;                            // Timer used to fire at a set frequency
    // Burst
    public int burstRate = 3;                           // The number of shots fired per each burst
    public float burstPause = 0.0f;                     // The pause time between bursts
    protected int burstCounter = 0;                       // Counter to keep track of how many shots have been fired per burst
    protected float burstTimer = 0.0f;                    // Timer to keep track of how long the weapon has paused between bursts

    // Ammo
    [Header("Ammunition")]
    public bool infiniteAmmo = false;                   // Whether or not this weapon should have unlimited ammo
    public int ammoCapacity = 12;                       // The number of rounds this weapon can fire before it has to reload
    public int shotPerRound = 1;                        // The number of "bullets" that will be fired on each round.  Usually this will be 1, but set to a higher number for things like shotguns with spread
    protected int currentAmmo;                            // How much ammo the weapon currently has
    public float reloadTime = 2.0f;                     // How much time it takes to reload the weapon
    public bool showCurrentAmmo = true;                 // Whether or not the current ammo should be displayed in the GUI
    public bool reloadAutomatically = true;             // Whether or not the weapon should reload automatically when out of ammo

    // Accuracy
    [Header("Ammunition")]
    public float accuracy = 80.0f;                      // How accurate this weapon is on a scale of 0 to 100
    protected float currentAccuracy;                      // Holds the current accuracy.  Used for varying accuracy based on speed, etc.
    public float accuracyDropPerShot = 1.0f;            // How much the accuracy will decrease on each shot
    public float accuracyRecoverRate = 0.1f;            // How quickly the accuracy recovers after each shot (value between 0 and 1)



    // Recoil
    [Header("Recoil")]
    public bool recoil = true;                          // Whether or not this weapon should have recoil
    public float recoilKickBackMin = 0.1f;              // The minimum distance the weapon will kick backward when fired
    public float recoilKickBackMax = 0.3f;              // The maximum distance the weapon will kick backward when fired
    public float recoilRotationMin = 0.1f;              // The minimum rotation the weapon will kick when fired
    public float recoilRotationMax = 0.25f;             // The maximum rotation the weapon will kick when fired
    public float recoilRecoveryRate = 0.01f;            // The rate at which the weapon recovers from the recoil displacement

    // Crosshairs
    [Header("Crosshair")]
    public bool showCrosshair = true;                   // Whether or not the crosshair should be displayed
    public Texture2D crosshairTexture;                  // The texture used to draw the crosshair
    public int crosshairLength = 10;                    // The length of each crosshair line
    public int crosshairWidth = 4;                      // The width of each crosshair line
    public float startingCrosshairSize = 10.0f;         // The gap of space (in pixels) between the crosshair lines (for weapon inaccuracy)
    protected float currentCrosshairSize;                 // The gap of space between crosshair lines that is updated based on weapon accuracy in realtime

    // Effects
    [Header("Effects")]
    public bool spitShells = false;                     // Whether or not this weapon should spit shells out of the side
    public GameObject shell;                            // A shell prop to spit out the side of the weapon
    public float shellSpitForce = 1.0f;                 // The force with which shells will be spit out of the weapon
    public float shellForceRandom = 0.5f;               // The variant by which the spit force can change + or - for each shot
    public float shellSpitTorqueX = 0.0f;               // The torque with which the shells will rotate on the x axis
    public float shellSpitTorqueY = 0.0f;               // The torque with which the shells will rotate on the y axis
    public float shellTorqueRandom = 1.0f;              // The variant by which the spit torque can change + or - for each shot
    public Transform shellSpitPosition;					// The spot where the weapon should spit shells from

    // Audio
    [Header("Audio")]
    public AudioClip fireSound;                         // Sound to play when the weapon is fired
    public AudioClip reloadSound;                       // Sound to play when the weapon is reloading
    public AudioClip dryFireSound;                      // Sound to play when the user tries to fire but is out of ammo

    // Other
    protected bool canFire = true;                        // Whether or not the weapon can currently fire (used for semi-auto weapons)
    #endregion

    #region Unity Funtions
    protected virtual void Start()
    {

        
        // Calculate the actual ROF to be used in the weapon systems.  The rateOfFire variable is
        // designed to make it easier on the user - it represents the number of rounds to be fired
        // per second.  Here, an actual ROF decimal value is calculated that can be used with timers.
        if (rateOfFire != 0)
            actualROF = 1.0f / rateOfFire;
        else
            actualROF = 0.01f;

        // Initialize the current crosshair size variable to the starting value specified by the user
        currentCrosshairSize = startingCrosshairSize;

        // Make sure the fire timer starts at 0
        fireTimer = 0.0f;

        // Start the weapon off with a full magazine
        currentAmmo = ammoCapacity;
    }

    protected virtual void Update()
    {

        
        // Calculate the current accuracy for this weapon
        currentAccuracy = Mathf.Lerp(currentAccuracy, accuracy, accuracyRecoverRate * Time.deltaTime);

        // Calculate the current crosshair size.  This is what causes the crosshairs to grow and shrink dynamically while shooting
        currentCrosshairSize = startingCrosshairSize + (accuracy - currentAccuracy) * 0.8f;

        // Update the fireTimer
        fireTimer += Time.deltaTime;

        // CheckForUserInput() handles the firing based on user input
        CheckUserInput();

        // Reload if the weapon is out of ammo
        if (reloadAutomatically && currentAmmo <= 0)
            Reload();

        // Recoil Recovery
        if (recoil && type != WeaponType.Beam)
        {
            Debug.Log("Recoil Recover");
            weaponModel.transform.position = Vector3.Lerp(weaponModel.transform.position, transform.position, recoilRecoveryRate * Time.deltaTime);
            weaponModel.transform.rotation = Quaternion.Lerp(weaponModel.transform.rotation, transform.rotation, recoilRecoveryRate * Time.deltaTime);
        }
    }
    #endregion

    #region Defined Functions
    protected virtual void CheckUserInput()
    {

    }

    protected virtual void Fire()
    { }

    protected void Recoil()
    {
        
        // Make sure the user didn't leave the weapon model field blank
        if (weaponModel == null)
        {
            Debug.Log("Weapon Model is null.  Make sure to set the Weapon Model field in the inspector.");
            return;
        }

        // Calculate random values for the recoil position and rotation
        float kickBack = Random.Range(recoilKickBackMin, recoilKickBackMax);
        float kickRot = Random.Range(recoilRotationMin, recoilRotationMax);

        // Apply the random values to the weapon's postion and rotation
        weaponModel.transform.Translate(new Vector3(0, 0, -kickBack), Space.Self);
        weaponModel.transform.Rotate(new Vector3(-kickRot, 0, 0), Space.Self);
    }

    protected void Reload()
    {
        currentAmmo = ammoCapacity;
        fireTimer = -reloadTime;
        GetComponent<AudioSource>().PlayOneShot(reloadSound);

        // Send a messsage so that users can do other actions whenever this happens
        //SendMessageUpwards("OnEasyWeaponsReload", SendMessageOptions.DontRequireReceiver);
    }

    protected void DryFire()
    {
        GetComponent<AudioSource>().PlayOneShot(dryFireSound);
    }

    #endregion

    #region OnGUI
    void OnGUI()
    {

        // Crosshairs
        if (type == WeaponType.Projectile || type == WeaponType.Beam)
        {
            currentAccuracy = accuracy;
        }
        // Untuk scope menghilangkan GUI.
        if (showCrosshair)
        {
            // Hold the location of the center of the screen in a variable
            Vector2 center = new Vector2(Screen.width / 2, Screen.height / 2);

            // Draw the crosshairs based on the weapon's inaccuracy
            // Left
            Rect leftRect = new Rect(center.x - crosshairLength - currentCrosshairSize, center.y - (crosshairWidth / 2), crosshairLength, crosshairWidth);
            GUI.DrawTexture(leftRect, crosshairTexture, ScaleMode.StretchToFill);
            // Right
            Rect rightRect = new Rect(center.x + currentCrosshairSize, center.y - (crosshairWidth / 2), crosshairLength, crosshairWidth);
            GUI.DrawTexture(rightRect, crosshairTexture, ScaleMode.StretchToFill);
            // Top
            Rect topRect = new Rect(center.x - (crosshairWidth / 2), center.y - crosshairLength - currentCrosshairSize, crosshairWidth, crosshairLength);
            GUI.DrawTexture(topRect, crosshairTexture, ScaleMode.StretchToFill);
            // Bottom
            Rect bottomRect = new Rect(center.x - (crosshairWidth / 2), center.y + currentCrosshairSize, crosshairWidth, crosshairLength);
            GUI.DrawTexture(bottomRect, crosshairTexture, ScaleMode.StretchToFill);
        }

        // Ammo Display
        if (showCurrentAmmo)
        {
            if (type == WeaponType.Raycast || type == WeaponType.Projectile)
                GUI.Label(new Rect(10, Screen.height - 30, 100, 20), "Ammo: " + currentAmmo);
            //else if (type == WeaponType.Beam)
                //GUI.Label(new Rect(10, Screen.height - 30, 100, 20), "Heat: " + (int)(beamHeat * 100) + "/" + (int)(maxBeamHeat * 100));
        }
    }
    #endregion
}
