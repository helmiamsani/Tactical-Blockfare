using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsumableItem : MonoBehaviour
{
    private PlayerInput _plyrInput;
    public Transform rayOut;
    public float detectRange = 10f;

    private Vector3 fwd;
    
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawRay(rayOut.position,fwd * detectRange);
    }

    // Start is called before the first frame update
    void Start()
    {
        _plyrInput = GetComponent<PlayerInput>();
    }

    // Update is called once per frame
    void Update()
    {
        fwd = rayOut.TransformDirection(Vector3.forward);
        if (_plyrInput.interact)
        {
            RaycastHit hit;  
            if (Physics.Raycast(rayOut.position, fwd, out hit, detectRange))
            {
                if (hit.collider.CompareTag("Item"))
                {
                    Debug.Log("It's an item");
                }
            }
        }
    }
    
}
