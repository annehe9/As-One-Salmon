using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Avoidance : MonoBehaviour
{
    public float ANGLE = 30f;
    public float RAYCAST_DIST = 5f;
    public Rigidbody rb;
    public float rotationSpeed = 10;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {

        //you can check only objects that are on a certain layer
        LayerMask layer = LayerMask.GetMask("Ground");

        RaycastHit hitLeft, hitRight;

        Vector3 left = transform.TransformDirection(Quaternion.Euler(0, -ANGLE, 0) * Vector3.forward);
        Ray rayLeft = new Ray(transform.position, left);

        Debug.DrawLine(rayLeft.origin, rayLeft.origin + rayLeft.direction * RAYCAST_DIST, Color.red);


        Vector3 right = transform.TransformDirection(Quaternion.Euler(0, ANGLE, 0) * Vector3.forward);
        Ray rayRight = new Ray(transform.position, right);

        Debug.DrawLine(rayRight.origin, rayRight.origin + rayRight.direction * RAYCAST_DIST, Color.red);


        if (Physics.Raycast(rayLeft, out hitLeft, RAYCAST_DIST, layer))
        {
            //rb.AddTorque(transform.up * -rotationTorque * hitLeft.distance * Time.fixedDeltaTime);
            float r = Map(hitLeft.distance, RAYCAST_DIST, RAYCAST_DIST / 2, 0, rotationSpeed);
            transform.Rotate(0, r, 0.0f, Space.Self);
        }
        else if (Physics.Raycast(rayRight, out hitRight, RAYCAST_DIST, layer))
        {
            //rb.AddTorque(transform.up * -rotationTorque * hitRight.distance * Time.fixedDeltaTime);

            float r = Map(hitRight.distance, RAYCAST_DIST, RAYCAST_DIST / 2, 0, rotationSpeed);
            transform.Rotate(0, -r, 0.0f, Space.Self);
        }
    }

    public float Map(float OldValue, float OldMin, float OldMax, float NewMin, float NewMax, bool clamp = false)
    {
        float OldRange = (OldMax - OldMin);
        float NewRange = (NewMax - NewMin);
        float NewValue = (((OldValue - OldMin) * NewRange) / OldRange) + NewMin;

        if (clamp)
            NewValue = Mathf.Clamp(NewValue, NewMin, NewMax);

        return (NewValue);
    }
}
