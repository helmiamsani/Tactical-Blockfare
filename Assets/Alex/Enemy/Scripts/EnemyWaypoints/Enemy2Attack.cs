//*ALEX LIU*
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy2Attack : MonoBehaviour
{
	#region VARIABLES
	private GameObject player;
	private EnemyMovementWayPoints enemyMovement;
	[Header("Shooting Modifier")]
	public float fireRate = 0.2f;
	private float fireTime;
	public float attackRange = 25f;
	public float spreadRadius = 0.02f;
	public int currentAmmo;
	private int maxAmmo = 30;
	public bool canAttack;
	public int damage = 1;
	//Burst
	public int burstRate = 5;
	private int burstCounter = 0;
	public float burstPause = 0.7f;
	private float burstTimer = 0f;

	[Header("Health")]
	public float curHealth = 100f;
	private float minHealth = 0f;
	//"Stopping Distance Modifier"
	private float originalStopDistance =25f;
	private float tempChaseDistance = 5f;

	[Header("AUDIO")]
	public AudioClip shootSound;
	public AudioClip reloadSound;
	#endregion

	#region UNITY FUNCTIONS
	private void OnDrawGizmos()
	{

		Gizmos.color = Color.red;
		Gizmos.DrawRay(transform.position, transform.forward * attackRange);
	}
	private void Start()
	{
		currentAmmo = maxAmmo;
		player = GameObject.FindGameObjectWithTag("Player");
		enemyMovement = GetComponent<EnemyMovementWayPoints>();
	}
	private void Update()
	{
		if (enemyMovement.isAware)
		{

			if (Vector3.Distance(enemyMovement.transform.position, transform.position) < attackRange)
			{

				RaycastHit hit;
				if (Physics.Raycast(transform.position, transform.forward, out hit, attackRange))
				{
					//Player Script Health reference here
					PlayerHealth playerHealth = player.GetComponent<PlayerHealth>();

					if (hit.collider.tag == player.tag && playerHealth.CurHealth > 0)
					{
						canAttack = true;
						//Set back to the originalStopping Distance,so doesnt chase target
						enemyMovement.stopDistance = originalStopDistance;
						if (Time.time > fireTime && currentAmmo > 0 && canAttack && burstCounter < burstRate)
						{
							GetComponent<AudioSource>().PlayOneShot(shootSound);
							//Storing SpreadRadius Direction and Value
							Vector3 direction = transform.forward;
							//RANDOM THE SPREAD RANGE on X,Y,Z
							direction.x += Random.Range(-spreadRadius, spreadRadius);
							direction.y += Random.Range(-spreadRadius, spreadRadius);
							direction.z += Random.Range(-spreadRadius, spreadRadius);

							RaycastHit spreadHit;

							burstCounter++;//INCREASE BURST COUNTER for BURST SHOOTING
							currentAmmo--;//REDUCE AMMO WHEN CAST A RAY
							fireTime = Time.time + fireRate;

							if (Physics.Raycast(transform.position, direction, out spreadHit, attackRange))
							{

								if (player && playerHealth.CurHealth > 0)
								{
									playerHealth.CurHealth -= damage;
									Debug.Log("is Hit");
								}

							}
							else
							{
								Debug.Log("Missed");
							}
						}

					}
					//CHASE PLAYER WHEN PLAYER IS OUT OF SIGHT
					else if (hit.collider.tag != player.tag)
					{
						canAttack = false;
						enemyMovement.stopDistance = tempChaseDistance;
					}
				}
				//RESET BURST LOGIC
				if (burstCounter >= burstRate)
				{
					burstTimer += Time.deltaTime;
					if (burstTimer >= burstPause)
					{
						burstCounter = 0;
						burstTimer = 0f;
					}
				}
				if (currentAmmo == 0)
				{
					StartCoroutine("Reload");
				}
			}
			else
			{
				canAttack = false;
			}

		}
	}
	#endregion

	#region FUNCTIONS
	IEnumerator Reload()
	{
		enemyMovement.agent.speed = 0f;
		yield return new WaitForSeconds(3f);
		currentAmmo = maxAmmo;
		enemyMovement.agent.speed = 5f;
	}
	public void TakeDamage(int damage)
	{
		enemyMovement.isAware = true;
		curHealth += damage;

		if (curHealth <= minHealth)
		{
			curHealth = minHealth;
			Destroy(gameObject);
			Debug.Log("enemy dead");
		}

		Debug.Log("I got hit - " + damage);
	}
	#endregion
}
