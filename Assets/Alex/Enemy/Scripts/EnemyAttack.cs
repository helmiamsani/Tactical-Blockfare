using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttack : MonoBehaviour
{
	private GameObject player;
	private EnemyAI enemyAI;
	//Need Player Health Reference Script
	public float fireRate = 1f;
	private float fireTime;
	public float attackRange = 5f;
	public int ammoAmount;
	public bool canAttack;

	private void OnDrawGizmos()
	{
		
		Gizmos.color = Color.red;
		Gizmos.DrawRay(transform.position, transform.forward * attackRange);
	}
	private void Start()
	{
		ammoAmount = 4;
		player = GameObject.FindGameObjectWithTag("Player");
		enemyAI = GetComponent<EnemyAI>();
	}
	private void Update()
	{
		if (enemyAI.isAware)
		{

			if (Vector3.Distance(enemyAI.transform.position, transform.position) < attackRange)
			{
				RaycastHit hit;
				if (Physics.Raycast(transform.position, transform.forward, out hit, attackRange))
				{
					canAttack = true;
					
					//Player Script Health reference here
					//PlayerHealth player = GetComponent<PlayerHealth>();

					{
						if (Time.time > fireTime && ammoAmount > 0 && canAttack == true)
						{
							if(player)
							{
								//Debug.Log(hit.transform.name + " Take Damage");
								fireTime = Time.time + fireRate;
								ammoAmount--;
								if(ammoAmount ==0)
								{
									canAttack = false;
								}
							}
							
						}
						if (ammoAmount == 0 && canAttack == false)
						{
							StartCoroutine("Reload");
						}
					}

				}
			}
			else
			{
				canAttack = false;
			}

		}
		Debug.Log(ammoAmount);
	}
	IEnumerator Reload()
	{
		enemyAI.agent.speed = 0f;
		canAttack = false;
		yield return new WaitForSeconds(3f);
		ammoAmount = 4;
		enemyAI.agent.speed = 3.5f;
		canAttack = true;
	}
}
