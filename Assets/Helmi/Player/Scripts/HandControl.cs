using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandControl : MonoBehaviour
{
    //public Transform scopeAimPos;
    //public GameObject rayOut;
    //public Transform _normalRayOutPos;
    public float moveSpeed = 2;
    public Transform handHolder;

    [Header("Weapon")]
    public Transform primaryWeaponPos;
    public Transform secondWeaponPos;


    [Header("Field Of View")]
    public float ironSightFOV = 30f;
    private float _normalFOV;

    [Header("POSITION & ROTATION"),Space(5)]
    [Header("Default")]
    public Vector3 ironSightPosition;
    public Vector3 ironSightRotation;
    [Header("Scope Prime")]
    public Vector3 scopePrimWeaponPos;
    public Vector3 scopePrimWeaponRot;
    [Header("Scope Secondary")]
    public Vector3 scopeSecondWeaponPos;
    public Vector3 scopeSecondWeaponRot;

    private PlayerInput _plyrInput;

    private Camera _mainCam;

    //private Quaternion _normalPrimaryWeaponRotation;
    private Vector3 _originalPosition;
    private Vector3 _normalPrimaryWeaponPos;
    private Vector3 _normalSecondaryWeaponPos;


    private void Start()
    {       
        _plyrInput = GetComponent<PlayerInput>();
        _mainCam = Camera.main;
        _normalFOV = _mainCam.fieldOfView;
        _originalPosition = handHolder.localPosition;
        _normalPrimaryWeaponPos = primaryWeaponPos.localPosition;
        //_normalPrimaryWeaponRotation = primaryWeaponPos.localRotation;
        _normalSecondaryWeaponPos = secondWeaponPos.localPosition;
    }

    private void FixedUpdate()
    {
        if (_plyrInput.scope)
        {
            handHolder.localPosition = Vector3.Lerp(handHolder.localPosition, ironSightPosition, Time.deltaTime * moveSpeed);
            primaryWeaponPos.localPosition = scopePrimWeaponPos;
            secondWeaponPos.localPosition = scopeSecondWeaponPos;
           //primaryWeaponPos.localRotation = Quaternion.Lerp(primaryWeaponPos.localRotation, Quaternion.Euler(scopePrimWeaponRot), Time.deltaTime * moveSpeed); 
            //secondWeaponPos.localRotation = Quaternion.Lerp(secondWeaponPos.localRotation, Quaternion.Euler(scopeSecondWeaponRot), Time.deltaTime * moveSpeed); 
            _mainCam.fieldOfView = ironSightFOV;
            
        }
        else
        {
            handHolder.localPosition = Vector3.Lerp(handHolder.localPosition, _originalPosition, Time.deltaTime * moveSpeed);
            _mainCam.fieldOfView = _normalFOV;
            //primaryWeaponPos.localRotation = Quaternion.Lerp(primaryWeaponPos.localRotation, Quaternion.Euler(ironSightRotation), Time.deltaTime * moveSpeed);
            //secondWeaponPos.localRotation = Quaternion.Lerp(secondWeaponPos.localRotation, Quaternion.Euler(ironSightPosition), Time.deltaTime * moveSpeed);
            primaryWeaponPos.localPosition = _normalPrimaryWeaponPos;
            secondWeaponPos.localPosition = _normalSecondaryWeaponPos;
            //primaryWeaponPos.localRotation = _normalPrimaryWeaponRotation;
        }
    }
}
