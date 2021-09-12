using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    // new variables
    public float moveSpeed = 5f;
    public Rigidbody rb;

    // Start is called before the first frame update
    void Start()
    {
        rb = gameObject.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {

    }

    // for consistency 
    private void FixedUpdate() 
    {
        float moveX = Input.GetAxis("Horizontal");
        float moveZ = Input.GetAxis("Vertical");

        Vector3 moveDirection = new Vector3(moveX, 0, moveZ);
        
        rb.velocity = moveDirection * moveSpeed;

        if (moveDirection.magnitude > 0) { 
            transform.rotation = Quaternion.LookRotation(moveDirection);
        }
    }
}
