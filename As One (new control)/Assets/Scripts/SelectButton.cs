using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectButton : MonoBehaviour
{
    public SpriteRenderer spriteRenderer;
    public Sprite defaultSprite;
    public Sprite selectedSprite;

    // Start is called before the first frame update
    void Start()
    {
        spriteRenderer = gameObject.GetComponent<SpriteRenderer>();
        spriteRenderer.sprite = defaultSprite;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnTriggerStay(Collider target) {
        if(target.tag == "Player") {
            spriteRenderer.sprite = selectedSprite;
        }
    }

    void OnTriggerExit(Collider target) {
        if (target.tag == "Player") {
            spriteRenderer.sprite = defaultSprite;
        }
    }
}
