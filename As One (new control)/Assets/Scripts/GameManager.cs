using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    bool paused = false;
    public GameObject pauseMenu;

    void Start () 
    {

    }
 
    void Update ()
    {
        if (Input.GetKeyDown ("escape")) {
            paused = !paused;                 
            Time.timeScale = (paused)? 0.00f : 1.00f; //If your time scale isn't working, change Paused to !Paused
            pauseMenu.SetActive(paused);
        }
    }
}
