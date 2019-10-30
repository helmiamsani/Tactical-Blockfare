﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seek : SteeringBehaviour
{
    public Transform target;

    public override Vector3 GetForce(AI owner)
    {
        // SET force to zero
        Vector3 force = Vector3.zero;

        // Implement SEEK here

        // If target is not null
        if (target)
        {
            //  SET desiredForce to target - current(position)
            Vector3 desiredForce = target.position - transform.position;
            //  SET force to desiredForce normalized x weighting
            force += desiredForce.normalized * weighting;
        }

        // RETURN force
        return force;
    }
}
