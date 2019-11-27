using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthItem : MonoBehaviour
{
    public int heal = 20;
    private PlayerHealth player;
    

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerHealth>();
    }

    public void Heal()
    {
        if(player.CurHealth < 100)
        {
            player.CurHealth += heal;
            Destroy(gameObject);
            Debug.Log("Heal");
        }
    }
}
