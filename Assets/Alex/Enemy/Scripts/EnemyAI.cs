// * ALEX LIU *
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyAI : MonoBehaviour
{
	#region VARIABLES
	[Header("Movement")]
	[HideInInspector]
	public NavMeshAgent agent; //Public for EnemyAttack Script
	public Transform playerTransform;
	public PlayerMovement player;
	private Renderer rend;
	//Refenrence Player script for target
	public Vector3 wanderPoint;
	public float wanderRadius = 10f;
	[Header("Viewing Angle")]
	private float halfFov;
	public float fov = 120f;
	public float viewDistance = 10f;
	public float stopDistance = 2f;
	public float detectPlayerRange = 5f;
	public float lookAtPlayerSpeed = 1.2f;
	public bool isAware = false;
	public bool isAttacked = false;//NEED TO REFER TO PLAYER BULLET TO SET AWARE TRUE
	#endregion

	#region UNITY FUNCTIONS
	private void Start()
	{
		halfFov = fov / 2f;
		rend = GetComponent<Renderer>();//Renderer for material
		agent = GetComponent<NavMeshAgent>();
		wanderPoint = RandomWanderPoint();


	}
	//Drawing Field Of View
	private void OnDrawGizmos()
	{
		Gizmos.color = Color.blue;
		//Draw a left ray base on the fov/2
		Quaternion leftRayRotation = Quaternion.AngleAxis(-halfFov, Vector3.up);
		//Draw right ray base on the fov/2
		Quaternion rightRayRotation = Quaternion.AngleAxis(halfFov, Vector3.up);
		//Cast the ray upward from left side
		Vector3 leftRayDirection = leftRayRotation * transform.forward;
		//Cast the ray upward from the right
		Vector3 rightRayDirection = rightRayRotation * transform.forward;
		//Draw the rays
		Gizmos.DrawRay(transform.position, leftRayDirection * viewDistance);
		Gizmos.DrawRay(transform.position, rightRayDirection * viewDistance);
	}

	private void Update()
	{
		if (isAware)
		{
			//Change the color of the enemy into Aware state
			rend.material.color = Color.yellow;

			if (player == null)
			{
				return;
			}
			//Check if the enemy is close to the player
			if (Vector3.Distance(player.transform.position, transform.position) < stopDistance)
			{
				Stop();
			}
			else if (Vector3.Distance(player.transform.position, transform.position) > stopDistance)
			{
				Chase();
			}


		}
		else
		{
			SearchPlayer();
			DetectPlayerNearby();
			Wander();
			rend.material.color = Color.blue;
		}

	}
	#endregion
	#region FUNCTIONS
	public void SearchPlayer()
	{
		//Set the angle in the game object
		if (Vector3.Angle(Vector3.forward, transform.InverseTransformPoint(player.transform.position)) < halfFov)
		{
			//Set the distance from the angle

			if (Vector3.Distance(player.transform.position, transform.position) < viewDistance)
			{
				RaycastHit hit;
				//If the ray hit something
				if (Physics.Linecast(transform.position, player.transform.position, out hit, -1))
				{
					//If it hit Player
					if (hit.transform.CompareTag("Player"))
					{
						//Set enemy on aware state
						isAware = true;
						rend.material.color = Color.yellow;
					}
				}
			}
		}
	}

	
	public void Chase()
	{
		agent.speed = 5f;
		//Move the enemy to the target
		agent.SetDestination(player.transform.position);

	}
	public void Stop()
	{
		agent.speed = 0f;//Stop the movement
						 //Using Slerp to rotate slowly to the player direction
		Quaternion lookAtTarget = Quaternion.LookRotation(player.transform.position - transform.position);
		transform.rotation = Quaternion.Slerp(transform.rotation, lookAtTarget, lookAtPlayerSpeed * Time.deltaTime);
		//transform.LookAt(playerTransform);//Incase when it stop in range we have to rotate the enemy to face the player to shoot

	}
	public void Wander()
	{
		//FIXED BUG WHICH SOMETIME CASTING INFINITY VALUE 
		if (wanderPoint.x == Mathf.Infinity || wanderPoint.y == Mathf.Infinity || wanderPoint.z == Mathf.Infinity)
		{
			RandomWanderPoint();
			wanderPoint = RandomWanderPoint();
		}
		//Generate new randompoint value when reached destination
		if (Vector3.Distance(transform.position, wanderPoint) < 0.2f)
		{
			wanderPoint = RandomWanderPoint();
		}
		else
		{
			//Move to the randompoint location
			agent.SetDestination(wanderPoint);
		}
	}
	public Vector3 RandomWanderPoint()
	{
		//Set the Range of the random position
		Vector3 randomPoint = (Random.insideUnitSphere * wanderRadius) + transform.position;
		NavMeshHit navHit;
		//Set the random point value in the sampleposition
		NavMesh.SamplePosition(randomPoint, out navHit, wanderRadius, -1);
		//Return the value in vector3 so we can use set agent desitination into the hit position
		return new Vector3(navHit.position.x, transform.position.y, navHit.position.z);
	}
	public void DetectPlayerNearby()
	{
		if (Vector3.Distance(transform.position, player.transform.position) <= detectPlayerRange)
		{
			isAware = true;
		}
	}
	#endregion
}
