using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    [HideInInspector] public float mouseX;
    [HideInInspector] public float mouseY;
    [HideInInspector] public float moveToward;
    [HideInInspector] public float moveSide;
    [HideInInspector] public bool fire1;
    [HideInInspector] public bool scope;
    [HideInInspector] public bool run;
    [HideInInspector] public bool jump;
    [HideInInspector] public bool crouch;
    [HideInInspector] public bool getDown;
    [HideInInspector] public bool interact;
    [HideInInspector] public float mouseScroll;
    [HideInInspector] public bool num1;
    [HideInInspector] public bool num2;
    [HideInInspector] public bool reload;

    // Update is called once per frame
    void Update()
    {
        mouseX = Input.GetAxis("Mouse X"); // Input for moving mouse on the X axis.
        mouseY = Input.GetAxis("Mouse Y"); // Input for moving mouse on the Y axis.
        moveToward = Input.GetAxis("Horizontal"); // Input for moving player toward.
        moveSide = Input.GetAxis("Vertical"); // Input for moving player backward.
        fire1 = Input.GetMouseButtonDown(0); // Input for firing.
        scope = Input.GetMouseButton(1); // Input for scoping.
        run = Input.GetKey(KeyCode.LeftShift); // Input for run.
        jump = Input.GetKeyDown(KeyCode.Space); // Input for jumping.
        crouch = Input.GetKeyDown(KeyCode.C); // Input for crouch.
        getDown = Input.GetKeyDown(KeyCode.LeftControl); // Input for getdown.
        reload = Input.GetKeyDown(KeyCode.R); // Input for getdown.
        interact = Input.GetKey(KeyCode.E); // Input for interact.
        mouseScroll = Input.GetAxis("Mouse ScrollWheel");
        num1 = Input.GetKeyDown(KeyCode.Alpha1);
        num2 = Input.GetKeyDown(KeyCode.Alpha2);
    }
}
