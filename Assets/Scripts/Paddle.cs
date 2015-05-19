using UnityEngine;
using System.Collections;

public class Paddle : MonoBehaviour 
{
    public static bool isRendered = false;

    private GameObject cam;
    private GameObject table;
    private GameObject ball;

    private float tableZScale;
    private float paddleZScale;
    private float paddlePosOffset;
    private float paddleNegOffset;
    public float paddleSpeed = 5.0f;
    private Vector2 screenSize = new Vector2(Screen.width, Screen.height);
	private PhotonView photonView;

    void Start()
    {
        cam = GameObject.Find("ARCamera");
        ball = GameObject.Find("Ball");
        table = GameObject.Find("Table");

        tableZScale = Mathf.Abs(table.transform.localScale.z / 2);
        paddleZScale = Mathf.Abs(this.gameObject.transform.localScale.z / 2);
		photonView = this.gameObject.GetComponent<PhotonView> ();
    }
	
	void Update () 
    {
		if (isRendered || photonView.isMine)
        {
            float rotSpeed = Mathf.Abs(cam.transform.rotation.z * 20) + 1;

            paddleNegOffset = this.gameObject.transform.localPosition.x - (this.gameObject.transform.localScale.z / 2);
            paddlePosOffset = this.gameObject.transform.localPosition.x + (this.gameObject.transform.localScale.z / 2);

            
            //KEYBOARD INPUT
			if(Input.GetKey(KeyCode.LeftArrow))
			{
                this.transform.position += (Vector3.left * paddleSpeed * Time.deltaTime) / 3.0f;
			}
			   //move right
			if(Input.GetKey(KeyCode.RightArrow))
                this.transform.position += (Vector3.right * paddleSpeed * Time.deltaTime) / 3.0f;
            /*
            //MOVEMENT USING DEVICE ROTAION
            //POSITIVE ROTATION : MOVE LEFT || NEGATIVE ROTATION : MOVE RIGHT
            //move left
            if (cam.transform.rotation.z > 0 && paddleNegOffset > (-tableZScale))
                this.transform.position += (Vector3.left * rotSpeed * Time.deltaTime) / 3.0f;

            //move right
            if (cam.transform.rotation.z < 0 && paddlePosOffset < tableZScale)
                this.transform.position += (Vector3.right * rotSpeed * Time.deltaTime) / 3.0f;
            */
            //TOUCH CONTROLS
			if(Input.touchCount > 0)
			{
				if (Input.GetTouch(0).position.x > (Screen.width/2)) {
	                this.transform.position += (Vector3.left * paddleSpeed * Time.deltaTime) / 3.0f;
	            }
	            else
	            {
	                this.transform.position += (Vector3.right * paddleSpeed * Time.deltaTime) / 3.0f;
	            }
			}
        }
	}
}
