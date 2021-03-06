using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public CharacterController controller;
    public float rotationSpeed = 1f;
    public float moveSpeed = 0.01f;

    // constants
    private float accelerationDiff = 0.07f;
    private float deceleration = 0.2f;
    private float speedMax = 0.8f;

    // state
    private Vector3 rotation;
    private bool climbing;

    // Start is called before the first frame update
    void Start()
    {
        climbing = false;
    }

    // Update is called once per frame
    void Update()
    {

    }

    // for consistency 
    private void FixedUpdate() 
    {
        rotation = new Vector3(0, Input.GetAxis("Horizontal") * rotationSpeed, 0);
        transform.Rotate(rotation);
        // accel and decel
        if (Input.GetKey("up")) {
            //moveSpeed += accelerationDiff;
            if (climbing)
            {
                transform.position = new Vector3(transform.position.x, transform.position.y + 0.2f, transform.position.z);
            }
            else
            {
                moveSpeed += accelerationDiff;
            }
        } else {
            moveSpeed -= deceleration;
        }
        moveSpeed = Mathf.Clamp(0, moveSpeed, speedMax);
        transform.position += transform.forward * Time.fixedDeltaTime * moveSpeed;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Wall")
        {
            climbing = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Wall")
        {
            climbing = false;
        }
    }
}