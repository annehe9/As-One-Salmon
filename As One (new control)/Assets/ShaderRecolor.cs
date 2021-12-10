using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShaderRecolor : MonoBehaviour
{

    Renderer rend;
    public GameObject player;

    // Start is called before the first frame update
    void Start()
    {
        rend = GetComponent<Renderer> ();

        // Use the Specular shader on the material
        rend.material.shader = Shader.Find("Stylized Water Mobile");
        print(rend.material.shader);
    }

    // Update is called once per frame
    void Update()
    {
        float xpos = player.transform.position.x;
        Vector4 result = new Vector4(0f,0f,0f,1f);
        Vector4 lightblue = new Vector4(59.0f/255.0f, 183.0f/255.0f, 233.0f/255.0f, 1.0f);
        Vector4 red = new Vector4(1.0f, 0f, 0f, 0f); //looks orange
        if (xpos >= 13000) {
            result = red;
        } else if ( xpos>= 12000) {
            float frac = (xpos-12000.0f)/(13000.0f-12000.0f);
            float inv = 1.0f-frac;
            //Debug.Log(frac);
            //Debug.Log(inv);
            result = frac * red + inv * lightblue;
            //Debug.Log(result);
        }
        rend.sharedMaterial.SetColor("_WaterColorDeep", result);
        //Debug.Log("hello");
    }
}
