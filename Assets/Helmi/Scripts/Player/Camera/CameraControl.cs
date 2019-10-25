using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour
{
    #region Public Variables
    public float sensitivity = 1f; // Default value
    public float turnSmooth = .1f; // Default value
    public float tiltMax = 45f; // Default value
    public float tiltMin = -45f; // Default value

    public bool addShake;
    public float shakeAmountX = 0f;
    public float shakeAmountY = 0.3f;
    #endregion

    #region Private Variables
    private float _yAxisRotation;
    private float _xAxisRotation;

    private float _smoothX = 0f;
    private float _smoothY = 0f;
    private float _smoothXVelocity = 0f;
    private float _smoothYVelocity = 0f;

    private Transform _cam;
    private Transform _pivot;
    private PlayerInput _plyrInput;
    #endregion

    // Start is called before the first frame update
    void Start()
    {
        _cam = Camera.main.transform; // Reference main camera
        _pivot = _cam.parent.parent.transform; // Reference pivot
        Cursor.lockState = CursorLockMode.Locked; // Hide cursor

        _plyrInput = GetComponentInParent<PlayerInput>(); // reference player input
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        RotationMovementSetUp();
    }

    void RotationMovementSetUp()
    {
        float inputX = _plyrInput.mouseX; // Get the value of mouse x axis.
        float inputY = _plyrInput.mouseY; // Get the value of mouse Y axis.

        if (addShake)
        {
            inputX += shakeAmountX;
            inputY += shakeAmountY;
        }

        if(turnSmooth > 0)
        {
            _smoothX = Mathf.SmoothDamp(_smoothX, inputX, ref _smoothXVelocity, turnSmooth); // Smooth camera movement.
            _smoothY = Mathf.SmoothDamp(_smoothY, inputY, ref _smoothYVelocity, turnSmooth); // Smooth camera movement.

        }
        else
        {
            _smoothX = inputX; // set value to inputX.
            _smoothY = inputY; // set value to inputY.
        }

        _yAxisRotation += _smoothX * sensitivity; // get the value from _smoothX * sensitivity.
        transform.rotation = Quaternion.Euler(0f, _yAxisRotation, 0); // By rotating CameraHolder(gameObject) on its Y axis, it manipulates the camera to rotate on Y axis.

        _xAxisRotation -= _smoothY * sensitivity; // get the value from _smoothY * sensitivity.
        _xAxisRotation = Mathf.Clamp(_xAxisRotation, tiltMin, tiltMax); // 

        _pivot.localRotation = Quaternion.Euler(_xAxisRotation, 0, 0); // By rotating Pivot(gameObbject) on its X axis, it manipulates the camera to rotate on X axis.
    }
}
