// * ALEX LIU *
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyAI : MonoBehaviour
{
	private NavMeshAgent agent;
	public PlayerMovement player;
	private Renderer rend;
	//Refenrence Player script for target
	public Vector3 wanderPoint;
	public float wanderRadius = 10f;
	private float halfFov;
	public float fov = 120f;
	public float viewDistance = 7f;
	public bool isAware = false;

	//Drawing Field Of View
	

	private void Start()
	{
		halfFov = fov / 2f;
		rend = GetComponent<Renderer>();//Renderer for material
		agent = GetComponent<NavMeshAgent>();
		wanderPoint = RandomWanderPoint();

	}
	private void OnDrawGizmos()
	{
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
			//Move the enemy to the target
			agent.SetDestination(player.transform.position);
			//Change the color of the enemy into Aware state
			rend.material.color = Color.yellow;
		}
		else
		{
			SearchPlayer();
			Wander();
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
						OnAware();
					}
				}
			}
		}
	}
	public void OnAware()
	{
		isAware = true;
	}
	public void Wander()
	{
		//Generate new randompoint value when reached destination
		if (Vector3.Distance(transform.position, wanderPoint) < 0.5f)
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
}
