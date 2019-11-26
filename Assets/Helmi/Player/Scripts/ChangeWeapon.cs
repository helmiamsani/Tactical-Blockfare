using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeWeapon : MonoBehaviour
{
    public GameObject mainWeapon;
    public GameObject secondWeapon;

    private PlayerInput plyrInput;

    // Start is called before the first frame update
    void Start()
    {
        mainWeapon = GameObject.FindGameObjectWithTag("Main Weapon");
        secondWeapon = GameObject.FindGameObjectWithTag("Second Weapon");
        secondWeapon.SetActive(false);
        plyrInput = GetComponent<PlayerInput>();
    }

    // Update is called once per frame
    void Update()
    {
        if(plyrInput.mouseScroll > 0)
        {
            mainWeapon.SetActive(false);
            secondWeapon.SetActive(true);
        }
        else if(plyrInput.mouseScroll < 0)
        {
            mainWeapon.SetActive(true);
            secondWeapon.SetActive(false);
        }

        if (plyrInput.num1)
        {
            mainWeapon.SetActive(true);
            secondWeapon.SetActive(false);
        }

        else if (plyrInput.num2)
        {
            mainWeapon.SetActive(false);
            secondWeapon.SetActive(true);
        }
    }
}
