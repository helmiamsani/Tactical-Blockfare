using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyMovementWayPoints : MonoBehaviour
{
	[Header("Movement")]
	[HideInInspector]
	public NavMeshAgent agent; //Public for EnemyAttack Script
	public Transform playerTransform;
	public PlayerMovement player;
	private Renderer rend;
	//Refenrence Player script for target
	private float halfFov;
	public float fov = 120f;
	public float viewDistance = 10f;
	public float stopDistance = 2f;
	public float detectPlayerRange = 5f;
	public bool isAware = false;
	public bool isAttacked = false;//NEED TO REFER TO PLAYER BULLET TO SET AWARE TRUE
	[Header("Waypoints")]
	public Transform target;
	[SerializeField]
	private int wayPointIndex;

	


	private void Start()
	{
		halfFov = fov / 2f;
		rend = GetComponent<Renderer>();//Renderer for material
		agent = GetComponent<NavMeshAgent>();
		target = Waypoint.wayPoints[0];

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
			else
			{
				Chase();
			}


		}
		else
		{
			SearchPlayer();
			DetectPlayerNearby();
			Patrol();
			rend.material.color = Color.blue;
		}

	}

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

	public void Patrol()
	{
		agent.SetDestination(target.position);

		//Just In Case it generate waypoint index higher than the waypoint index length
		if (wayPointIndex >= Waypoint.wayPoints.Length + 1)
		{
			wayPointIndex = 0;
			target = Waypoint.wayPoints[wayPointIndex];
		}
		
		//Set the range value higher so it will switch into the next waypoint index
		if (Vector3.Distance(transform.position,target.position)<=3f)
		{
			wayPointIndex++;
			if(wayPointIndex >=Waypoint.wayPoints.Length)
			{
				wayPointIndex = 0;
			}
			target = Waypoint.wayPoints[wayPointIndex];
				
		}

		else
		{
			agent.SetDestination(target.position);
		}
		
	}
	public void Chase()
	{
		agent.speed = 3.5f;
		//Move the enemy to the target
		agent.SetDestination(player.transform.position);

	}
	public void Stop()
	{
		agent.speed = 0f;//Stop the movement
						 //Using Slerp to rotate slowly to the player direction
		Quaternion lookAtTarget = Quaternion.LookRotation(player.transform.position - transform.position);
		transform.rotation = Quaternion.Slerp(transform.rotation, lookAtTarget, 1.3f * Time.deltaTime);
		//transform.LookAt(playerTransform);//Incase when it stop in range we have to rotate the enemy to face the player to shoot
		//COULD BE ATTACK FUNCTION HERE
	}
	public void DetectPlayerNearby()
	{
		if(Vector3.Distance(transform.position,player.transform.position) <= detectPlayerRange )
		{
			isAware = true;
		}
	}
	
	
}
