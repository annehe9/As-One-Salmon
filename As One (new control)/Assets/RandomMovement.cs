using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomMovement : MonoBehaviour
{
    //since it's 3d I had to freeze the rotation of the capsule on the rigidbody to prevent the capsule from tumbling around
    public Rigidbody rb;
    public float moveSpeed = 5.0f;
    public float torque = 5.0f;
    public Animator anim;
    public float turnChance = 0.1f;
    public float moveChance = 0.1f;

    // Start is called before the first frame update
    void Start()
    {
        //cache the rigidbody on this game object
        rb = gameObject.GetComponent<Rigidbody>();
        anim = gameObject.GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        

    }

    //I put the physics update here - fixed framerate = consistent
    //any physics in the Update() has to be multiplied by Time.deltaTime to be frame independent
    private void FixedUpdate()
    {
        if (Random.value < moveChance)
        {
            float thrust = Random.Range(2.0f, 50.0f);
            rb.AddForce(transform.forward * thrust * moveSpeed);
        }
        if (Random.value < turnChance)
        {
            float turn = Random.Range(2.0f, 20.0f);
            rb.AddTorque(transform.up * torque * turn);
        }

}
}