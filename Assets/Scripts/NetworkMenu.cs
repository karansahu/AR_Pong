using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class NetworkMenu : MonoBehaviour
{
    string registeredGameName = "AR_Game";
    bool isRefreshing = false;
    float refreshRequestLength = 3.0f;
    int spaceHeight;
    float spaceWidth = 5f;
    public HostData[] hostData;
    public GameObject ServerSlots;
    private GameObject Canvas;
    //public GameObject status;
    public string statusText;
    public NetworkView nView;
    public bool connected;
    public Transform paddle1Pos;
    public Transform paddle2Pos;
    public GameObject paddle;
    private GameObject ImageTarget;
    public GameObject status;

    void Start()
    {
        Canvas = GameObject.Find("Canvas");
        nView = this.GetComponent<NetworkView>();
        ImageTarget = GameObject.Find("ImageTarget");
        connected = false;

    }
    public void StartServer()
    {
        Network.InitializeServer(16, 25002, false);
        MasterServer.RegisterHost(registeredGameName, "AR_GameServer", "Testing IMplementation");
    }
    void OnServerInitialized()
    {
        Debug.Log("Server has been initialized");
        SpawnPlayer(paddle1Pos);
        Canvas.gameObject.SetActive(false);

    }
    void OnPlayerDisconnected(NetworkPlayer player)
    {
        Network.RemoveRPCs(player);
        Network.DestroyPlayerObjects(player);
    }
    void OnApplicationQuit()
    {
        if (Network.isServer)
        {
            if (Network.isServer)
            {
                Network.Disconnect(200);
                MasterServer.UnregisterHost();
            }
            if (Network.isClient)
                Network.Disconnect(200);
        }
    }
    void OnMasterServerEvent(MasterServerEvent masterServerEvent)
    {
        if (masterServerEvent == MasterServerEvent.RegistrationSucceeded)
        {
            Debug.Log("Registration Successful");
            Canvas.gameObject.SetActive(false);
        }

    }
    public void SpawnPlayer(Transform paddlePos)
    {
        Debug.Log("Spawning player..");
        GameObject paddleClone = Network.Instantiate(paddle, paddlePos.position, paddlePos.rotation, 0) as GameObject;
        paddleClone.transform.SetParent(ImageTarget.transform, true);

    }
    public void RefreshHostList()
    {
        StartCoroutine("_RefreshHostList");
    }

    public IEnumerator _RefreshHostList()
    {
        Debug.Log("Refreshing...");
        MasterServer.RequestHostList(registeredGameName);
        float timeStarted = Time.time;
        float timeEnd = Time.time + refreshRequestLength;

        while (Time.time < timeEnd)
        {
            hostData = MasterServer.PollHostList();
            yield return new WaitForEndOfFrame();
        }
        if (hostData == null || hostData.Length == 0)
            Debug.Log("No Active Servers have been found");
        else
            Debug.Log(hostData.Length + " have been found");
    }

    void Udpate()
    {
       
        
    }

    public void StatusUpdate()
    {
        if (Network.isServer)
            statusText = "Running as Server";
        else
            statusText = "Running as Client";
        status.GetComponent<Text>().text = statusText;
    }

    void OnConnectedToServer()
    {
        SpawnPlayer(paddle2Pos);
        connected = true;
        Canvas.gameObject.SetActive(false);

    }
    void OnGUI()
    {
        if (hostData != null)
        {
            for (int i = 0; i < hostData.Length; i++)
            {
                if (GUI.Button(new Rect(Screen.width / 2, Screen.height / 2, 300f, 100f), hostData[i].gameName))
                {
                    Network.Connect(hostData[i]);
                   status.GetComponent<Text>().text = "reached";
                    Debug.Log("Spawning");
                }

            }
        }
    }
}