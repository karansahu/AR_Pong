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
	public bool paused = false;

	void Awake () 
    {
        table = GameObject.Find("Table");
        lengthOfTable = table.transform.localScale.z;
        ballSpeed = initialBallSpeed;
        ballSpeedVec = new Vector3(0,0,1);
        maxDivertAngle = 75;
		photonView = PhotonView.Get (this);
		photonView.RPC ("resetBall",PhotonTargets.All,null);
      
	}
	
	void FixedUpdate () 
    {
      if (isRendered)
       {
				if(!paused)
            this.gameObject.transform.Translate(ballSpeedVec * ballSpeed/100);

            Collider[] hit = Physics.OverlapSphere(transform.position, 0.1f);
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
						paused = true;
						photonView.RPC ("resetBall",PhotonTargets.All,null);
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
						paused = true;
						photonView.RPC ("resetBall",PhotonTargets.All,null);
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
                    PowerUp.powerUpEnum = powerUpStates.SizeDown;
                    Destroy(hit[i].gameObject);
                }
                if (hit[i].gameObject.name == "BallSizeUp(Clone)")
                {
                    PowerUp.powerUpEnum = powerUpStates.SizeUp;
                    Destroy(hit[i].gameObject);
                }
                if (hit[i].gameObject.name == "BallSpeedDown(Clone)")
                {
                    PowerUp.powerUpEnum = powerUpStates.SpeedDown;
                    Destroy(hit[i].gameObject);
                }
                if (hit[i].gameObject.name == "BallSpeedUp(Clone)")
                {                    
                    PowerUp.powerUpEnum = powerUpStates.SpeedUp;
                    Destroy(hit[i].gameObject);
                }
                if (hit[i].gameObject.name == "BallSpawn(Clone)")
                {
                    PowerUp.powerUpEnum = powerUpStates.SpawnBalls;
                    Destroy(hit[i].gameObject);
                }
            }
        }
	}

    public static void checkRendering(bool check)
    {
        isRendered = check;
    }
	[RPC]
    public void resetBall()
    {
	
        float rotY = 0;
        if(ballDirChange)
        {
            rotY = Random.Range(-45,45);
            ballDirChange = !ballDirChange;
        }
        else
        {
            rotY = Random.Range(135,225);
            ballDirChange = !ballDirChange;
        }
        transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x, rotY, transform.rotation.eulerAngles.z);
        this.transform.localPosition = new Vector3(0, 0.087f, 0);
        ballSpeed = initialBallSpeed;
        ballSpeedVec = new Vector3(0, 0, 1);
		Debug.Log("Reached the reset ballllllllllllllLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL");
		paused = false;


    }
}
