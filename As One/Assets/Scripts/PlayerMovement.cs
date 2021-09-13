using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    // To-DO: use acceleration
    public float acceleration;
    
    public CharacterController controller;
    public float rotationSpeed = 1f;
    public float moveSpeed = 0.1f;
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
        rotation = new Vector3(0, Input.GetAxis("Horizontal") * rotationSpeed, 0);
        Vector3 move = new Vector3(0, 0, Input.GetAxis("Vertical"));
        move = transform.TransformDirection(move);
        controller.Move(move * moveSpeed);
        transform.Rotate(rotation);
    }
}