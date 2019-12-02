using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIManager : MonoBehaviour
{
    [Header("Health")]
    [SerializeField] private TextMeshProUGUI healthText;
    [SerializeField] private PlayerHealth plyrHealth;

    [Header("Weapons")]
    [SerializeField] private Weapon primaryWeapon;
    [SerializeField] private Weapon secondaryWeapon;

    [Header("Ammo")]
    public TextMeshProUGUI curAmmoText;
    public TextMeshProUGUI maxAmmoText;

    // Start is called before the first frame update
    void Start()
    {
        healthText = GetComponentInChildren<TextMeshProUGUI>();
        plyrHealth = GetComponentInParent<PlayerHealth>();
    }

    // Update is called once per frame
    void Update()
    {
        healthText.text = plyrHealth.CurHealth.ToString();
    }
}
