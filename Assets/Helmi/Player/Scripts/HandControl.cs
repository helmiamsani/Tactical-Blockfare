﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandControl : MonoBehaviour
{
    //public Transform scopeAimPos;
    //public GameObject rayOut;
    //public Transform _normalRayOutPos;
    public float moveSpeed = 2;
    public Transform handHolder;
    public Transform primaryWeaponPos;


    [Header("Field Of View")]
    public float ironSightFOV = 10f; // Default
    private float _normalFOV; // Default

    [Header("Position & Rotation")]
    
    public Vector3 ironSightPosition;
    //public Vector3 ironSightRotation;
    public Vector3 scopePrimWeaponPos;

    [Header("References")]
    public ParticleSystem[] muzzleFlash;
    public AudioSource gunShotAudioSource;
    public GameObject impactPrefab;
    public Animator weaponAnimator;
    public CameraShake camShake;

    private PlayerInput _plyrInput;
    private WaitForSeconds _fRate;

    private float _targetShake;
    private float _cameraFOVVelocity = 0;

    private Camera _mainCam;
    private CameraControl _camControl;
    private Transform _camShake;

    private Quaternion _originalRotation;
    private Quaternion _targetRotation;
    private Vector3 _originalPosition;
    private Vector3 _targetPosition;
    private Vector3 _camShakeInitialPos;
    private Vector3 _cameraPosition;
    private Vector3 _normalPrimaryWeaponPos;


    private void Start()
    {
        _plyrInput = GetComponent<PlayerInput>();
        _camControl = GetComponentInChildren<CameraControl>();
        camShake = FindObjectOfType<CameraShake>();
        _mainCam = Camera.main;
        _camShake = camShake.transform;
        _camShakeInitialPos = camShake.transform.localPosition;
        _normalFOV = _mainCam.fieldOfView;
        _originalPosition = handHolder.localPosition;
        _originalRotation = Quaternion.identity;
        _normalPrimaryWeaponPos = primaryWeaponPos.localPosition;
        //_normalRayOutPos = rayOut.transform;
        //_normalRayOutPos.position = rayOut.transform.position;
       // Debug.Log(_normalRayOutPos.position);
    }

    private void FixedUpdate()
    {
        if (_plyrInput.scope)
        {
            handHolder.localPosition = Vector3.Lerp(handHolder.localPosition, ironSightPosition, Time.deltaTime * moveSpeed);
            _targetShake = 0;
            primaryWeaponPos.localPosition = scopePrimWeaponPos; 
            _mainCam.fieldOfView = ironSightFOV;
            _camShake.localPosition = Vector3.Lerp(_camShake.localPosition, _cameraPosition, Time.deltaTime * moveSpeed);
            //rayOut.transform.position = scopeAimPos.transform.position;
            
        }
        else
        {
            handHolder.localPosition = Vector3.Lerp(handHolder.localPosition, _originalPosition, Time.deltaTime * moveSpeed);
            _targetShake = 0.1f;
            _mainCam.fieldOfView = _normalFOV;
            _camShake.localPosition = Vector3.Lerp(_camShake.localPosition, _camShakeInitialPos, Time.deltaTime * moveSpeed);
            primaryWeaponPos.localPosition = _normalPrimaryWeaponPos;
            //rayOut.transform.position = _normalRayOutPos.position;
            // _camShake.localPosition = _camShakeInitialPos;
        }
    }
}
