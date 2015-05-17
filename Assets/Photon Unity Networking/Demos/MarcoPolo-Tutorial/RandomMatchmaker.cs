using UnityEngine;

public class RandomMatchmaker : Photon.MonoBehaviour
{
    private PhotonView myPhotonView;
	public Transform paddle1Pos;
	public Transform paddle2Pos;
	public GameObject paddle;
	public Transform paddlePos;
	private GameObject ImageTarget;
	bool shoutMarco ;
    // Use this for initialization
    void Start()
    {
        PhotonNetwork.ConnectUsingSettings("0.1");
		ImageTarget = GameObject.Find ("ImageTarget");

	}
	
	void OnJoinedLobby()
    {
        Debug.Log("JoinRandom");
        PhotonNetwork.JoinRandomRoom();
    }

    void OnPhotonRandomJoinFailed()
    {
        PhotonNetwork.CreateRoom(null);
    }

    void OnJoinedRoom()
    {	
		if (PhotonNetwork.player.ID == 1)
			paddlePos = paddle1Pos;
		else
			paddlePos = paddle2Pos;
		GameObject paddleClone = PhotonNetwork.Instantiate("paddle", paddlePos.position, paddlePos.rotation, 0) as GameObject;
       // monster.GetComponent<myThirdPersonController>().isControllable = true;
		paddleClone.transform.SetParent(ImageTarget.transform, true);
        myPhotonView = paddleClone.GetComponent<PhotonView>();
    }

    void OnGUI()
    {
        GUILayout.Label(PhotonNetwork.connectionStateDetailed.ToString());

        if (PhotonNetwork.connectionStateDetailed == PeerState.Joined)
        {
     
			shoutMarco= GameLogic.playerWhoIsIt == PhotonNetwork.player.ID;
            if (shoutMarco && GUILayout.Button("Marco!"))
            {
                myPhotonView.RPC("Marco", PhotonTargets.All);
            }
            if (!shoutMarco && GUILayout.Button("Polo!"))
            {
                myPhotonView.RPC("Polo", PhotonTargets.All);
            }
        }
		Debug.Log (PhotonNetwork.player.ID);
    }
}
