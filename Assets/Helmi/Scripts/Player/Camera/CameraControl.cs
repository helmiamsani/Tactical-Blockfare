using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour
{
    public float turnSpeed = 1.5f;
    public float turnSmooth = .1f;
    public float tiltMax = 75f;
    public float tiltMin = 45f;

    private float _lookAngle;
    private float _tiltAngle;

    private float _smoothX = 0;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
