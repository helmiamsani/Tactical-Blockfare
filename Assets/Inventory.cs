using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{
    private bool _showInv;
    private Vector2 scr;

    // Start is called before the first frame update
    void Start()
    {
        Time.timeScale = 1;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            _showInv = !_showInv;
            if (_showInv)
            {
                Time.timeScale = 0;
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                return;
            }
            else
            {
                Time.timeScale = 1;
                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
                return;
            }
        }
    }

    private void OnGUI()
    {
        if (_showInv)
        {
            GUI.Box(new Rect(0, 0, Screen.width / 3, Screen.height), "Inventory");

            scr.x = Screen.width / 3;
            scr.y = Screen.height;
            GUI.Box(new Rect(scr.x / 2f, scr.y, 1f, 1f),"Boom");
            Layout();
        }
    }

    void Layout()
    {
    }
}
