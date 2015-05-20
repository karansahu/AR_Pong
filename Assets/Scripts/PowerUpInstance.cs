using UnityEngine;
using System.Collections;

public class PowerUpInstance : MonoBehaviour {

    public float scale = .2f;

	void Start () {
        var parentGO = GameObject.FindGameObjectWithTag("PowerUpContainer");

        transform.SetParent(parentGO.transform, true);
        transform.localScale = Vector3.one * scale;
	}
	
}
