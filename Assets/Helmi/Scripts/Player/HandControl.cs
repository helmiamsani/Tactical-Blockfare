using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandControl : MonoBehaviour
{
    public bool canFire = true;
    public float fireRate = 0.1f;
    public float positionShakeSpeed = 5f;
    public float changeShakeRate = 15;
    public float moveSpeed = 2;
    public Transform handHolder;


    [Header("Field Of View")]
    public float ironSightFOV = 10f; // Default
    public float normalFOV = 50f; // Default

    [Header("Position & Rotation")]
    
    public Vector3 ironSightPosition;
    public Vector3 ironSightRotation;

    [Header("References")]
    public ParticleSystem[] muzzleFlash;
    public AudioSource gunShotAudioSource;
    public GameObject impactPrefab;
    public Animator weaponAnimator;
    public CameraShake camShake;

    private PlayerInput _plyrInput;
    private WaitForSeconds _fRate;

    private float _targetShake;

    private Camera _mainCam;
    private CameraControl _camControl;
    private Transform _camShake;

    private Quaternion _originalRotation;
    private Quaternion _targetRotation;
    private Vector3 _originalPosition;
    private Vector3 _targetPosition;
    private Vector3 _camShakeInitialPos;
    private Vector3 _cameraPosition;


    private void Start()
    {
        _plyrInput = GetComponent<PlayerInput>();
        _camControl = GetComponentInChildren<CameraControl>();
        camShake = FindObjectOfType<CameraShake>();
        _mainCam = Camera.main;
        _camShake = camShake.transform;
        _camShakeInitialPos = camShake.transform.localPosition;
        _mainCam.fieldOfView = normalFOV;
        _originalPosition = Vector3.zero;
        _originalRotation = Quaternion.identity;
        _fRate = new WaitForSeconds(fireRate);
    }

    private void FixedUpdate()
    {
        if (_plyrInput.scope)
        {
            handHolder.localPosition = ironSightPosition;
            _targetShake = 0;
            _mainCam.fieldOfView = ironSightFOV;
            _camShake.localPosition = Vector3.Lerp(_camShake.localPosition, _cameraPosition, Time.deltaTime * moveSpeed * 2);
        }
        else
        {
            handHolder.localPosition = _originalPosition;
            _targetShake = 0.1f;
            _mainCam.fieldOfView = normalFOV;
            _camShake.localPosition = Vector3.Lerp(_camShake.localPosition, _camShakeInitialPos, Time.deltaTime * moveSpeed * 2);
           // _camShake.localPosition = _camShakeInitialPos;
        }
    }
}
