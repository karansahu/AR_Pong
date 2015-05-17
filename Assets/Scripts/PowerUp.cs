using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum powerUpStates
{
    SizeUp,
    SizeDown,
    SpeedUp,
    SpeedDown,
    SpawnBalls,
    Default
};

public class PowerUp : MonoBehaviour 
{
	private GameObject Paddle1;
	private GameObject Paddle2;
    private GameObject tempball;
    private GameObject origBall;
    private Transform spawnTransform;
    public static List<GameObject> ballList = new List<GameObject>();
    private GameObject imageTarget;

	public static bool checkRender;
    public GameObject[] powerupItems;
    public static powerUpStates powerUpEnum = powerUpStates.Default;

    void Start()
    {
        imageTarget = GameObject.Find("ImageTarget");
    }

	public void checkRendering () 
	{	
		Paddle1 = GameObject.Find ("paddle1");
		Paddle2 = GameObject.Find ("paddle2");
		origBall = GameObject.Find ("ballPrefab");
        spawnTransform = origBall.transform;
        ballList.Add(origBall);
        StartCoroutine("spawnItem", 5.0f);
	}

    IEnumerator spawnItem(float spawnTime)
    {
        yield return new WaitForSeconds(spawnTime);
        int itemNumber = (int)Random.Range(0,4);
        Vector3 scale = powerupItems[itemNumber].transform.localScale;
        GameObject itemClone = Instantiate(powerupItems[itemNumber], new Vector3(this.transform.localPosition.x + Random.Range(-0.5f, 0.51f), this.transform.localPosition.y, this.transform.localPosition.z + Random.Range(-0.6f, 0.61f)), Quaternion.identity) as GameObject;
        itemClone.transform.parent = this.transform;
        itemClone.transform.localScale = scale;
        itemClone.AddComponent<Rigidbody>();
        itemClone.GetComponent<Rigidbody>().useGravity = true;
        StartCoroutine("spawnItem", spawnTime);
    }
	void Update () 
    {
		if (checkRender == true && ballList.Count <1)
			checkRendering ();



        if (checkRender)
            Time.timeScale = 1.0f;
        else if (!checkRender)
            Time.timeScale = 0.0f;

        if(powerUpEnum != powerUpStates.Default)
        {
            switch (powerUpEnum)
            {
                case powerUpStates.SizeUp:
                    SizeUp();
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SizeDown:
                    SizeDown();
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SpeedUp:
                    SpeedUp();
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SpeedDown:
                    SpeedDown();
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SpawnBalls:
                    SpawnBall();
                    powerUpEnum = powerUpStates.Default;
                    break;
                default:
                    break;
            }
        }
	}



	void SizeUp()
	{
		foreach(GameObject ball in ballList)
		{
            if (ball.transform.localScale.x < 0.15f)
			    ball.transform.localScale += new Vector3(0.015f,0.015f,0.015f);
		}
	}
    void SizeDown()
    {
        foreach (GameObject ball in ballList)
        {
            if (ball.transform.localScale.x > 0.05f)
                ball.transform.localScale -= new Vector3(0.015f, 0.015f, 0.015f);
        }

    }
	void SpeedUp()
	{
		foreach (GameObject ball in ballList) 
        {
			ball.GetComponent<BallMovement>().ballSpeed +=1f;
		}

	}
	void SpeedDown()
	{
		foreach (GameObject ball in ballList) 
        {
            if (ball.GetComponent<BallMovement>().ballSpeed > 1)
			    ball.GetComponent<BallMovement>().ballSpeed -=1f;
		}
		
	}
	void SpawnBall()
	{	
        tempball = ballList [ballList.Count - 1];

		GameObject newball1 = PhotonNetwork.Instantiate("ballPrefab",tempball.transform.localPosition,Quaternion.identity,0);
        newball1.transform.parent = imageTarget.transform;
        newball1.transform.position = new Vector3(newball1.transform.position.x, origBall.transform.position.y, newball1.transform.position.z);
        newball1.transform.localScale = tempball.transform.localScale;

        GameObject newball2 = PhotonNetwork.Instantiate("ballPrefab", tempball.transform.localPosition, Quaternion.identity, 0);
        newball2.transform.parent = imageTarget.transform;
        newball2.transform.position = new Vector3(newball2.transform.position.x, origBall.transform.position.y, newball2.transform.position.z);
        newball2.transform.localScale = tempball.transform.localScale;

		ballList.Add (newball1);
        ballList.Add (newball2);
	}

    public void defaultSetting()
    {
        origBall.transform.localPosition = spawnTransform.localPosition;
        origBall.transform.localScale = spawnTransform.localScale;
        origBall.transform.localRotation = spawnTransform.localRotation;

        foreach (GameObject ball in ballList)
        {
            if (ball.name == "ballPrefab(Clone)")
            {
                PowerUp.ballList.Remove(ball.gameObject);
                Destroy(ball.gameObject);
            }
        }
    }
}