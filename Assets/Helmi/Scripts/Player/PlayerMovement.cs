using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(PlayerInput))]
public class PlayerMovement : MonoBehaviour
{
    #region Public Variables
    public float runSpeed = 60f;
    public float moveSpeed = 50f;
    public float aimingSpeed = 25f;
    public float curSpeed;
    public float walkMovement = 5f;
    #endregion

    #region Private Variables
    private PlayerInput _plyrInput;
    private Rigidbody _rigid;
    private Transform _cameraHolder;

    private float _horizontal;
    private float _vertical;
    private float _walkMovement;
    private bool _fire1;
    #endregion

    // Start is called before the first frame update
    void Start()
    {
        _plyrInput = GetComponent<PlayerInput>();
        _rigid = GetComponent<Rigidbody>();
        _cameraHolder = this.gameObject.transform.GetChild(0).transform;
        _rigid.useGravity = true;
        _walkMovement = walkMovement;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        _horizontal = _plyrInput.moveToward; // get horizontal input.
        _vertical = _plyrInput.moveSide; // get vertical input.

        if (_plyrInput.scope) // when scoping.
        {
            curSpeed = aimingSpeed; // current speed changes to aim
        }
        else // else
        {
            curSpeed = moveSpeed; // current speed changes to normal speed
        }

        if(!_plyrInput.scope && _plyrInput.run) // when run
        {
            curSpeed = runSpeed; // current speed changes to run speed
        }

        _rigid.AddForce(_cameraHolder.forward * _vertical * curSpeed);
        _rigid.AddForce(_cameraHolder.right * _horizontal * curSpeed);
    }
    private void Update()
    {
        DetailMovement();
    }

    void DetailMovement()
    {
        if (curSpeed == moveSpeed)
        {
            Debug.Log("Time = " + Time.deltaTime);
            if (Time.time > walkMovement)
            {
                Debug.Log("Walk Movement = " + walkMovement);
                Debug.Log("Second Walk Movement = " + _walkMovement);
                if (this.gameObject.transform.localPosition.x <= 1.2f)
                {
                    _rigid.AddForce(this.gameObject.transform.up * curSpeed);
                    _rigid.useGravity = false;
                }
                else
                {
                    _rigid.useGravity = true;
                }
                walkMovement = walkMovement + _walkMovement;
            }
        }
    }
}
