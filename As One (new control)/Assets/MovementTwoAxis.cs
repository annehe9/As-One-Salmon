using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementTwoAxis : MonoBehaviour
{
    //since it's 3d I had to freeze the rotation of the capsule on the rigidbody to prevent the capsule from tumbling around
    public Rigidbody rb;
    public float moveSpeed = 5f;
    public bool frozen = false;
    public float torque = 5.0f;
    public Animator anim;

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
        anim.SetBool("talking", frozen);
    }

    //I put the physics update here - fixed framerate = consistent
    //any physics in the Update() has to be multiplied by Time.deltaTime to be frame independent
    private void FixedUpdate()
    {
        if (!frozen)
        {
            float thrust = Input.GetAxis("Vertical");

            float turn = Input.GetAxis("Horizontal");
            print(turn + " " + torque);
            rb.AddTorque(transform.up * torque * turn);
            rb.AddForce(transform.forward * thrust * moveSpeed);
            
        }
    }

    //this functions can be called by the dialogue manager and block the controls
    public void Freeze()
    {
        frozen = true;
    }

    public void UnFreeze()
    {
        frozen = false;
    }
}
