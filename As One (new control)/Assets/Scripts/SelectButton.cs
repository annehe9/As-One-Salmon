  using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SelectButton : MonoBehaviour
{
    public SpriteRenderer spriteRenderer;
    public Sprite defaultSprite;
    public Sprite selectedSprite;
    public string sceneToLoad;
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
            SceneManager.LoadScene(sceneToLoad);
        }
    }

    void OnTriggerExit(Collider target) {
        if (target.tag == "Player") {
            spriteRenderer.sprite = defaultSprite;
        }
    }
}
