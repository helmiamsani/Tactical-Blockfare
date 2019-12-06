﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuButton : MonoBehaviour
{
    public static bool GameIsPause = false;
    public GameObject pauseMenuUI;

	void Update ()
    {
		if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (GameIsPause)
            {
				
				Resume();
            }
            else
            {
				
                Pause();
            }
        }
       
	}
    public void Resume()
    {
        pauseMenuUI.SetActive(false);
		Time.timeScale = 1f;
        GameIsPause = false;
    }
    void Pause()
    {
        pauseMenuUI.SetActive(true);
		Time.timeScale = 0f;
        GameIsPause = true;
    }
    public void Quit()
    {
        Debug.Log("Quit");
        Application.Quit();

    }
}
