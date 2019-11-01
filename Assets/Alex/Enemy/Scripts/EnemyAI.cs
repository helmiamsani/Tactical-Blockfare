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

	public float fov = 120f;
	public float viewDistance = 7f;
	public bool isAware = false;

	private void Start()
	{
		rend = GetComponent<Renderer>();
		agent = GetComponent<NavMeshAgent>();
		wanderPoint = RandomWanderPoint();

	}

	private void Update()
	{
		if(isAware)
		{
			agent.SetDestination(player.transform.position);
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
		if(Vector3.Angle(Vector3.forward,transform.InverseTransformPoint(player.transform.position)) < fov /2f )
		{
			if(Vector3.Distance(player.transform.position,transform.position)<viewDistance)
			{
				RaycastHit hit;
				if(Physics.Linecast(transform.position,player.transform.position,out hit,-1))
				{
					if(hit.transform.CompareTag("Player"))
					{
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
		if(Vector3.Distance(transform.position,wanderPoint)<0.5f)
		{
			wanderPoint = RandomWanderPoint();
		}
		else
		{
			agent.SetDestination(wanderPoint);
		}
	}
	public Vector3 RandomWanderPoint()
	{
		Vector3 randomPoint = (Random.insideUnitSphere * wanderRadius) + transform.position;
		NavMeshHit navHit;
		NavMesh.SamplePosition(randomPoint,out navHit,wanderRadius,-1);
		return new Vector3(navHit.position.x,transform.position.y,navHit.position.z);
	}
}
