using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public CharacterController controller;
    public float rotationSpeed = 1f;
    public float moveSpeed = 0.1f;

    // constants
    private float accelerationDiff = 0.01f;
    private float deceleration = 0.02f;
    private float accelerationMax = 0.5f;
    private float speedMax = 1f;
    
    // state
    private float acceleration;
    private Vector3 move;
    private Vector3 lastMove; // for drag
    private Vector3 rotation;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    // for consistency 
    private void FixedUpdate() 
    {
        // resistance
        if (Input.GetKey("up") || Input.GetKey("down")) { 
            acceleration += accelerationDiff;
            move = new Vector3(0, 0, Input.GetAxis("Vertical"));
            move = transform.TransformDirection(move);
            lastMove = move;
        } else { 
            acceleration -= deceleration;
            if (acceleration > 0) { 
                move = lastMove;
            } else { 
                move = Vector3.zero;
            }
        }
        acceleration = Mathf.Clamp(acceleration, 0, accelerationMax);
        moveSpeed = Mathf.Clamp(moveSpeed + acceleration, 0, speedMax);

        controller.Move(move * moveSpeed);
        rotation = new Vector3(0, Input.GetAxis("Horizontal") * rotationSpeed, 0);
        transform.Rotate(rotation);
    }
    
}