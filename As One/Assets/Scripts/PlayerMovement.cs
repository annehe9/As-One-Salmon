using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    // To-DO: use acceleration
    public float acceleration;


    float yRotateSpeed = 1f;
    float yRotation = 0f;
    public CharacterController controller;
    public float speed = 5f;

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
        // rotation
        if (Input.GetKey("left") || Input.GetKey("right")) { 
            yRotation = Input.GetKey("left") ? -yRotateSpeed : yRotateSpeed;
            transform.Rotate(Vector3.up * yRotation);
        }
       
       // position
       if (Input.GetKey("up") || Input.GetKey("down")) { 
            float moveX = Input.GetAxis("Horizontal");
            float moveZ = Input.GetAxis("Vertical");
            Vector3 move = transform.right * moveX + transform.forward * moveZ;
            controller.Move(move * speed);
       }
    }
}