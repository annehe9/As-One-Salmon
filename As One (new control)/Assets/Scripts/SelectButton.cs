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
    public Animator anim;
    bool inbutton = false;

    // Start is called before the first frame update
    void Start(){}

    // Update is called once per frame
    void Update()
    {
        
        if (Input.GetKeyDown("return"))
        {
            pressed = true;
            if (inbutton) StartCoroutine(DelayLoadLevel(sceneToLoad));
        }
        else {
            pressed = false;
        }
    }

    void OnTriggerStay(Collider target) {
        if(target.tag == "Player") {
            spriteRenderer.sprite = selectedSprite;
            inbutton = true;
        }
        if (pressed) {
            StartCoroutine(DelayLoadLevel(sceneToLoad));
            //anim.SetTrigger("Start");
            //SceneManager.LoadScene(sceneToLoad);
        }
    }

    void OnTriggerEnter(Collider target) {
        if(target.tag == "Player") {
            spriteRenderer.sprite = selectedSprite;
            inbutton = true;
        }
        if (pressed) {
            StartCoroutine(DelayLoadLevel(sceneToLoad));
            //anim.SetTrigger("Start");
            //SceneManager.LoadScene(sceneToLoad);
        }
    }

    void OnTriggerExit(Collider target) {
        if (target.tag == "Player") {
            spriteRenderer.sprite = defaultSprite;
            inbutton = false;
        }
    }

    IEnumerator DelayLoadLevel(string lvl)
    {
        anim.SetTrigger("Start");
        yield return new WaitForSeconds(1.0f);
        SceneManager.LoadScene(lvl);
    }
}
