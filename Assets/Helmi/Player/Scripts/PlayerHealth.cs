using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;


public class PlayerHealth : MonoBehaviour
{
    public int maxHealth = 100;
    private int curHealth;
    private int minHealth = 0;
	public GameObject deathPanel;
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
				StartCoroutine("Death");
            }
        }
    }
    // Start is called before the first frame update
    void Start()
    {
        CurHealth = maxHealth;
    }      
	IEnumerator Death()
	{
		deathPanel.SetActive(true);
		yield return new WaitForSeconds(3.5f);
		SceneManager.LoadScene(0);
	}
}
