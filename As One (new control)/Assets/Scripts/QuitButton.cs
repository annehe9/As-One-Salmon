using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuitButton : MonoBehaviour
{
    public SpriteRenderer spriteRenderer;
    public Sprite defaultSprite;
    public Sprite selectedSprite;
    private bool pressed = false;

    // Start is called before the first frame update
    void Start(){}

    // Update is called once per frame
    void Update()
    {
        
        if (Input.GetKeyDown("return"))
        {
            pressed = true;
        }
        else {
            pressed = false;
        }
    }

    void OnTriggerStay(Collider target) {
        if(target.tag == "Player") {
            spriteRenderer.sprite = selectedSprite;
        }
        if (pressed) {
            Application.Quit();
        }
    }

    void OnTriggerExit(Collider target) {
        if (target.tag == "Player") {
            spriteRenderer.sprite = defaultSprite;
        }
    }
}
