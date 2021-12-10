using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseButtons : MonoBehaviour
{
    public Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void returnToStart() {
        StartCoroutine(DelayLoadLevel("Title Screen"));
        //anim.SetTrigger("Start");
        //SceneManager.LoadScene("Title Screen");
    }

    public void quit() {
        Application.Quit();
    }

    IEnumerator DelayLoadLevel(string lvl)
    {
        anim.SetTrigger("Start");
        yield return new WaitForSeconds(1.0f);
        SceneManager.LoadScene(lvl);
    }
}
