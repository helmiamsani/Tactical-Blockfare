using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;


public class PlayerHealth : MonoBehaviour
{
    public int maxHealth = 100;
    private int curHealth;
    private int minHealth = 0;
    public int CurHealth
    {
        get
        {
            return curHealth; 
        }
        set
        {
     curHealth = value;
            curHealth = Mathf.Clamp(curHealth, minHealth, maxHealth);
            if(curHealth <= minHealth)
            {
                //DEATH SHIT DO HERE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! :P 
                Debug.Log("Death");
            }
        }
    }
    // Start is called before the first frame update
    void Start()
    {
        CurHealth = maxHealth;
    }      
}
