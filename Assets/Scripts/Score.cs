using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Score : MonoBehaviour 
{
    public static int paddle1Points = 0;
    public static int paddle2Points = 0;

    public static bool isRendered = false;
    private string scoreboardText = "<color=yellow><size=30>P1        P2</size></color>";
   
    void Update()
    {
        if(isRendered)
            this.GetComponent<Text>().text = scoreboardText + '\n'+ paddle2Points + " - " + paddle1Points;
    }

    public static void updateScore(int paddleNum, int score)
    {
        if(paddleNum == 1)
            paddle1Points += score;
        if(paddleNum == 2)
            paddle2Points += score;
    }

    public void restartGame()
    {
        paddle1Points = paddle2Points = 0;
        GameObject ball = GameObject.Find("ballPrefab");
        ball.GetComponent<BallMovement>().resetBall();
    }
	void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info)
	{
		if (stream.isWriting)
		{
			// We own this player: send the others our data
			stream.SendNext(paddle1Points);
			stream.SendNext(paddle2Points);
			
		}
		else
		{
			// Network player, receive data
			paddle1Points = (int)stream.ReceiveNext();
			paddle2Points = (int)stream.ReceiveNext();
		}
	}
}
