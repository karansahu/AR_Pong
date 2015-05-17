// --------------------------------------------------------------------------------------------------------------------
// <copyright file="WorkerMenu.cs" company="Exit Games GmbH">
//   Part of: Photon Unity Networking
// </copyright>
// --------------------------------------------------------------------------------------------------------------------

using System;
using UnityEngine;
using Random = UnityEngine.Random;

public class WorkerMenu : MonoBehaviour
{
    public GUISkin Skin;
    public Vector2 WidthAndHeight = new Vector2(600,400);
    private string roomName = "myRoom";
    private Vector2 scrollPos = Vector2.zero;
    private bool connectFailed = false;
    public static readonly string SceneNameMenu = "DemoWorker-Scene";
    public static readonly string SceneNameGame = "DemoWorkerGame-Scene";

    private string errorDialog;
    private double timeToClearDialog;
	private PhotonView myPhotonView;
	public Transform paddle1Pos;
	public Transform paddle2Pos;

    public GameObject paddle1;
    public GameObject paddle2;

	private GameObject ImageTarget;
	private string paddleName;
    public GameObject[] lobbyCanvasObjects;
	bool shoutMarco ;
	public bool gameStarted;
	public GameObject FunManager;
    
    public string ErrorDialog
    {
        get 
        { 
            return errorDialog; 
        }
        private set
        {
            errorDialog = value;
            if (!string.IsNullOrEmpty(value))
            {
                timeToClearDialog = Time.time + 4.0f;
            }
        }
    }

    public void Awake()
    {
        // this makes sure we can use PhotonNetwork.LoadLevel() on the master client and all clients in the same room sync their level automatically
        PhotonNetwork.automaticallySyncScene = true;

        // the following line checks if this client was just created (and not yet online). if so, we connect
        if (PhotonNetwork.connectionStateDetailed == PeerState.PeerCreated)
        {
            // Connect to the photon master-server. We use the settings saved in PhotonServerSettings (a .asset file in this project)
            PhotonNetwork.ConnectUsingSettings("0.9");
        }

        // generate a name for this player, if none is assigned yet
        if (String.IsNullOrEmpty(PhotonNetwork.playerName))
        {
            PhotonNetwork.playerName = "Guest" + Random.Range(1, 9999);
        }
		ImageTarget = GameObject.Find ("ImageTarget");

        // if you wanted more debug out, turn this on:
        // PhotonNetwork.logLevel = NetworkLogLevel.Full;
    }

    public void OnGUI()
    {
        if (this.Skin != null)
        {
            GUI.skin = this.Skin;
        }
    }
		public void CreateRoom()
        {
            PhotonNetwork.CreateRoom("Room", new RoomOptions() { maxPlayers = 10 }, null);
            
        }
        public void JoinRoom()
        {
            PhotonNetwork.JoinRoom("Room");
        }
        public void JoinRandom()
        {
            PhotonNetwork.JoinRandomRoom();
        }
		// We have two options here: we either joined(by title, list or random) or created a room.
		public void OnJoinedRoom()
		{
			if (PhotonNetwork.player.ID == 1) 
            {
                GameObject paddleClone = PhotonNetwork.Instantiate("Paddle1", paddle1Pos.position, paddle1Pos.rotation, 0) as GameObject;
                paddleClone.name = "paddle1";
                paddleClone.transform.SetParent(ImageTarget.transform, true);
                myPhotonView = paddleClone.GetComponent<PhotonView>();
		    } 
            else 
            {
                GameObject paddleClone = PhotonNetwork.Instantiate("Paddle2", paddle2Pos.position, paddle2Pos.rotation, 0) as GameObject;
                paddleClone.name = "paddle2";
                paddleClone.transform.SetParent(ImageTarget.transform, true);
                myPhotonView = paddleClone.GetComponent<PhotonView>();
		    }
			gameStarted = true;
            foreach (GameObject lobbyobjects in lobbyCanvasObjects)
            {
                lobbyobjects.SetActive(false);   
            }
	}


    public void OnPhotonCreateRoomFailed()
    {
        this.ErrorDialog = "Error: Can't create room (room name maybe already used).";
        Debug.Log("OnPhotonCreateRoomFailed got called. This can happen if the room exists (even if not visible). Try another room name.");
    }

    public void OnPhotonJoinRoomFailed()
    {
        this.ErrorDialog = "Error: Can't join room (full or unknown room name).";
        Debug.Log("OnPhotonJoinRoomFailed got called. This can happen if the room is not existing or full or closed.");
    }
    public void OnPhotonRandomJoinFailed()
    {
        this.ErrorDialog = "Error: Can't join random room (none found).";
        Debug.Log("OnPhotonRandomJoinFailed got called. Happens if no room is available (or all full or invisible or closed). JoinrRandom filter-options can limit available rooms.");
    }

    public void OnCreatedRoom()
    {
        Debug.Log("OnCreatedRoom");
       // PhotonNetwork.LoadLevel(SceneNameGame);
    }

    public void OnDisconnectedFromPhoton()
    {
        Debug.Log("Disconnected from Photon.");
    }

    public void OnFailedToConnectToPhoton(object parameters)
    {
        this.connectFailed = true;
        Debug.Log("OnFailedToConnectToPhoton. StatusCode: " + parameters + " ServerAddress: " + PhotonNetwork.networkingPeer.ServerAddress);
    }
}
