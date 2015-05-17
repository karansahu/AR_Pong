using UnityEngine;
using System.Collections;

public class CustomSerialization : MonoBehaviour {
	public float health = 100f;
	public GameObject sphere;
	private void Update()
	{ 
        if (this.gameObject.GetComponent<NetworkView> ().isMine) 
        {
			if (Input.GetKey (KeyCode.A))
					Network.Instantiate (sphere, Vector3.zero, Quaternion.identity, 0);
			if (Input.GetKey (KeyCode.UpArrow))
					transform.position += Vector3.up * Time.deltaTime * 5;
			if (Input.GetKey (KeyCode.DownArrow))
					transform.position -= Vector3.up * Time.deltaTime * 5;
		}
		else
		if (Input.GetKey (KeyCode.Space))
			this.gameObject.GetComponent<NetworkView> ().RPC ("TakeDamage", RPCMode.All, new object[]{10});
	}
	private void OnSerializeNetworkView(BitStream stream, NetworkMessageInfo info)
	{
		if (stream.isWriting) 
		{	
			Vector3 pos = transform.position;
			stream.Serialize(ref health);
			stream.Serialize(ref pos);
		} 
		else 
		{	
			Vector3 pos = Vector3.zero;
			stream.Serialize(ref health);
			stream.Serialize(ref pos);
			transform.position = pos;
		}
	}
	[RPC]
	public void TakeDamage(int damage)
	{
		health -= damage;
	}
}
