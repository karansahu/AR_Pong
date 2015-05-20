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
	private PhotonView photonView;
	public static bool checkRender;
    public GameObject[] powerupItems;
    public static powerUpStates powerUpEnum = powerUpStates.Default;
	string objName;

    void Start()
    {
        imageTarget = GameObject.Find("ImageTarget");
		photonView = PhotonView.Get (this);
    }

	public void checkRendering () 
	{
        Debug.Log("Render checked");

		Paddle1 = GameObject.Find ("paddle1");
		Paddle2 = GameObject.Find ("paddle2");
		origBall = GameObject.Find ("ballPrefab");
        spawnTransform = origBall.transform;
        ballList.Add(origBall);
		Debug.Log (PhotonNetwork.player.ID);
		
        if(PhotonNetwork.player.ID==1)
		    InvokeRepeating ("SpawnItem", 3f, 5f);
	}
    void SpawnItem()
	{ 
        int itemNumber = (int)Random.Range(0,4);
        Vector3 scale = powerupItems[itemNumber].transform.localScale;

        Debug.Log("SPAWNED A POWER UP");

        GameObject itemClone = PhotonNetwork.Instantiate(powerupItems[itemNumber].name, 
            new Vector3(transform.localPosition.x + Random.Range(-0.5f, 0.5f), 
                transform.localPosition.y, 
                transform.localPosition.z + Random.Range(-0.6f, 0.6f)),
                Quaternion.identity,0) as GameObject;

        //itemClone.transform.parent = transform;
        //itemClone.transform.localScale = scale;
    }
	
	void Update () 
	{
		if (checkRender == true && ballList.Count < 1)
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
				    photonView.RPC("SizeUp",PhotonTargets.All,new Vector3(0.015f,0.015f,0.015f));
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SizeDown:
				    photonView.RPC("SizeDown",PhotonTargets.All,new Vector3(0.015f,0.015f,0.015f));
                    powerUpEnum = powerUpStates.Default;
	
                    break;
                case powerUpStates.SpeedUp:
				    photonView.RPC("SpeedUp",PhotonTargets.All,1f);
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SpeedDown:
				    photonView.RPC("SpeedDown",PhotonTargets.All,1f);
                    powerUpEnum = powerUpStates.Default;
                    break;
                case powerUpStates.SpawnBalls:
				    photonView.RPC ("SpawnBall", PhotonTargets.All,null);
                    powerUpEnum = powerUpStates.Default;
                    break;
                default:
                    break;
            }
        }
	}


	[RPC]
	void SizeUp(Vector3 Size)
	{
		foreach(GameObject ball in ballList)
		{
            if (ball.transform.localScale.x < 0.15f)
				ball.transform.localScale += Size; // 
		}
	}
	[RPC]
    void SizeDown(Vector3 Size)
    {
        foreach (GameObject ball in ballList)
        {
            if (ball.transform.localScale.x > 0.05f)
				ball.transform.localScale -= Size;
        }

    }
	[RPC]
	void SpeedUp(float speed)
	{
		foreach (GameObject ball in ballList) 
        {
			ball.GetComponent<BallMovement>().ballSpeed +=speed;
		}

	}
	[RPC]
	void SpeedDown(float speed)
	{
		foreach (GameObject ball in ballList) 
        {
            if (ball.GetComponent<BallMovement>().ballSpeed > 1)
				ball.GetComponent<BallMovement>().ballSpeed -=speed;
		}
		
	}
	[RPC]
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