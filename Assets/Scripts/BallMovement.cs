using UnityEngine;
using System.Collections;

public class BallMovement : MonoBehaviour 
{
    private GameObject table;
    private float lengthOfTable;
    private float maxDivertAngle;
    private Vector3 intersectVector;
    private float intersectPoint;
    private static bool isRendered = false;
    private bool ballDirChange = true;
	PhotonView photonView;
    public float initialBallSpeed;
    public float ballSpeed;
    public Vector3 ballSpeedVec;

	void Awake () 
    {
        table = GameObject.Find("Table");
        lengthOfTable = table.transform.localScale.z;
        ballSpeed = initialBallSpeed;
        ballSpeedVec = new Vector3(0,0,1);
        maxDivertAngle = 75;
		photonView = PhotonView.Get (this);
		photonView.RPC ("resetBallNetwork",PhotonTargets.All);
      
	}
	
	void FixedUpdate () 
    {
      if (isRendered && PhotonNetwork.playerList.Length >= 2)
       {
            this.gameObject.transform.Translate(ballSpeedVec * ballSpeed/100);

            Collider[] hit = Physics.OverlapSphere(transform.position, transform.localScale.x);
            for (int i = 0; i < hit.Length; i++)
            {
                if (hit[i].gameObject.tag == "Paddle1Goal")
                {
                    //add points //reset the ball to center //add random rotation
                    if (this.name == "ballPrefab(Clone)")
                    {
                        PowerUp.ballList.Remove(this.gameObject);
                        Destroy(this.gameObject);
                    }
					if(this.name == "ballPrefab")
					{	
	                    Score.updateScore(1, 1);
						photonView.RPC ("resetBallNetwork",PhotonTargets.All);
					}
                }
                else if (hit[i].gameObject.tag == "Paddle2Goal")
                {
                    //add points //reset the ball to center //add random rotation
					if (this.name == "ballPrefab(Clone)")
					{
						PowerUp.ballList.Remove(this.gameObject);
						Destroy(this.gameObject);
					}
					if(this.name == "ballPrefab")
					{
						Score.updateScore(2, 1);
						photonView.RPC ("resetBallNetwork",PhotonTargets.All);
					}
                }
                else if (hit[i].gameObject.tag == "SideWall")
                {
                    //change the y rotation sign
                    transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x, -transform.rotation.eulerAngles.y, transform.rotation.eulerAngles.z);
                }
                else if (hit[i].gameObject.tag == "Paddle")
                {
                    intersectVector = (this.gameObject.transform.position - hit[i].gameObject.transform.position);
                    //Debug.Log("Paddle pos" + hit[i].gameObject.transform.position + "Ball pos" + this.gameObject.transform.position + "Intersect Vector" + intersectVector);
                    //Debug.Log("intersectVector * 10" + intersectVector * 10);
                    
                    Vector3 normalizedRelIntersection = intersectVector.normalized;
                    intersectPoint = intersectVector.x;
                    //Debug.Log("normalizedRelIntersection" + normalizedRelIntersection);

                    float bounceAngle = intersectPoint * maxDivertAngle;

                    //ballSpeedVec.x = (ballSpeed / 2) * Mathf.Cos(bounceAngle);

                    //ballSpeedVec.z = (ballSpeed / 2) * -Mathf.Sin(bounceAngle);
                    transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x, -transform.rotation.eulerAngles.y + 180, transform.rotation.eulerAngles.z);
                }

                if (hit[i].gameObject.name == "BallSizeDown(Clone)")
                {
                    DestroyPowerupRPC(hit[i].gameObject, powerUpStates.SizeDown);
                }
                if (hit[i].gameObject.name == "BallSizeUp(Clone)")
                {
                    DestroyPowerupRPC(hit[i].gameObject, powerUpStates.SizeUp);
                }
                if (hit[i].gameObject.name == "BallSpeedDown(Clone)")
                {
                    DestroyPowerupRPC(hit[i].gameObject, powerUpStates.SpeedDown);
                }
                if (hit[i].gameObject.name == "BallSpeedUp(Clone)")
                {                    
                    DestroyPowerupRPC(hit[i].gameObject, powerUpStates.SpeedUp);
                }
                if (hit[i].gameObject.name == "BallSpawn(Clone)")
                {
                    DestroyPowerupRPC(hit[i].gameObject, powerUpStates.SpawnBalls);
                }
            }
        }
	}

    [RPC]
    public void DestroyPowerupRPC(GameObject goToDestroy, powerUpStates powerup)
    {
        PowerUp.powerUpEnum = powerup;
        Destroy(goToDestroy);
    }

    public static void checkRendering(bool check)
    {
        isRendered = check;
    }
	
    public void resetBall()
    {
        photonView.RPC("resetBallNetwork", PhotonTargets.All);
    }

    [RPC]
    public void resetBallNetwork()
    {
        float rotY = 0;
        if (ballDirChange)
        {
            rotY = Random.Range(-45, 45);
            ballDirChange = !ballDirChange;
        }
        else
        {
            rotY = Random.Range(135, 225);
            ballDirChange = !ballDirChange;
        }
        transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x, rotY, transform.rotation.eulerAngles.z);
        this.transform.localPosition = new Vector3(0, 0, 0);
        ballSpeed = initialBallSpeed;
        ballSpeedVec = new Vector3(0, 0, 1);

        var container = GameObject.FindGameObjectWithTag("PowerUpContainer").transform;

        foreach (Transform item in container)
        {
            Destroy(item.gameObject);
        }

    }
}
