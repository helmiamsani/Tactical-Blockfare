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
    public Transform handsGO;


    [Header("Field Of View")]
    public float ironSightFOV = 20f;
    public float normalFOV = 30;

    [Header("Position & Rotation")]
    public Vector3 cameraPosition;
    public Vector3 ironSightPosition;
    public Vector3 originalPosition;

    [Header("References")]
    public ParticleSystem[] muzzleFlash;
    public AudioSource gunShotAudioSource;
    public GameObject impactPrefab;
    public Animator weaponAnimator;

    public bool debugAim = true;

    private PlayerInput _plyrInput;
    private WaitForSeconds _fRate;

    private float _targetShake;
    private float _targetFOV;

    private Camera _mainCam;
    private CameraControl _camControl;
    private Transform _camHolderTransfrom;

    private Quaternion _originalRotation;
    private Vector3 _targetPosition;
    private Quaternion _targetRotation;


    private void Start()
    {
        _plyrInput = GetComponent<PlayerInput>();
    }

}
