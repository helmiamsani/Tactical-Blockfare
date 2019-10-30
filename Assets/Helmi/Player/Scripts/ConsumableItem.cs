using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsumableItem : MonoBehaviour
{
    private PlayerInput _plyrInput;
    private Camera _mainCam;
    private Transform _rayOut;

    // Start is called before the first frame update
    void Start()
    {
        _plyrInput = GetComponent<PlayerInput>();
        _mainCam = GetComponentInChildren<Camera>();
        _rayOut = _mainCam.GetComponentInChildren<Transform>();
    }

    // Update is called once per frame
    void Update()
    {
        if (_plyrInput.interact)
        {
            RaycastHit hit;

            if (Physics.Raycast(_rayOut.position, Vector3.forward, out hit, 10))
            {
                if (hit.collider.CompareTag("Item"))
                {
                    Debug.Log("It's an item");
                }
            }
        }
    }
}
