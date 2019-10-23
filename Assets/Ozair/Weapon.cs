using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
    #region Variables
    [SerializeField] protected int maxAmmo;
    [SerializeField] protected int curAmmo;
    [SerializeField] protected float timeBetweenShot;
    [SerializeField] protected float nextShotTime;
    [SerializeField] protected Projectile projectile;
    #endregion

    

    #region Methods
    protected virtual void Reload()
    { }

    protected virtual void Fire()
    { }

    protected virtual void Damage()
    { }
    #endregion

    #region Unity events
    protected virtual void Awake()
    {

    }
    protected virtual void Start()
    {

    }
    protected virtual void Update()
    {

    }
    #endregion
}
