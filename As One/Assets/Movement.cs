using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class anim : MonoBehaviour
{

    public Vector3 speed = 0;
    public float acceleration;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //keyboard controls acceleration
        if (keyboard_pressed)
        {
            if (Key = left)
            {
                speed.x += -10;
            }
            if (KeyCode = right)
            {

            }
            if (KeyCode = up)
            {

            }
        }
        speed -= slowing

        Pos += speed;

        Vector3 dist = charposition - mouseposition
        if (dist > some amount)
            speed = dist * 0.5;




    }
}
