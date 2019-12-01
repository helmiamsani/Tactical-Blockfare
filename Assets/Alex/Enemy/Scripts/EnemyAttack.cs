﻿//*ALEX LIU*
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
	public int damage = 5;

	[Header("Health")]
	public float curHealth = 100f;
	private float minHealth = 0f;

	//Stopping Distance Modifier
	private float originalStopDistance = 25f;
	private float tempChaseDistance = 5f;

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
					PlayerHealth playerHealth = player.GetComponent<PlayerHealth>();
					//This Is to make enemy to chase the player if the player is not in the ray hit
					//Making Enemy Cannot Shoot trough an object
					if (hit.collider.tag != player.tag)
					{
						if (hit.collider.tag == player.tag)
						{
							canAttack = true;
						}
						canAttack = false;
						enemyAI.stopDistance = tempChaseDistance;//Chase the player
					}
					else
						enemyAI.stopDistance = originalStopDistance;//Set back to the originalStopping Distance
					if (Time.time > fireTime && ammoAmount > 0 && canAttack == true)
					{
						if (player == null)
						{
							return;
						}
						if (player && playerHealth.CurHealth > 0)
						{
							playerHealth.CurHealth -= damage;
							fireTime = Time.time + fireRate;
							ammoAmount--;
							if (ammoAmount == 0)
							{
								canAttack = false;
							}
							Debug.Log("is attacking");
						}

					}
					if (ammoAmount == 0 && canAttack == false)
					{
						StartCoroutine("Reload");
					}


				}

			}
			else
			{
				canAttack = false;
			}
			Debug.Log(player.tag);
		}
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
	public void TakeDamage(int damage)
	{
		enemyAI.isAware = true;
		curHealth += damage;

		if (curHealth <= minHealth)
		{
			curHealth = minHealth;
			Destroy(gameObject);
			Debug.Log("enemy dead");
		}

		Debug.Log("I got hit - " + damage);
	}
}
