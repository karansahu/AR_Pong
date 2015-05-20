using UnityEngine;
using System.Collections;

[RequireComponent(typeof(MeshRenderer))]
[RequireComponent(typeof(Canvas))]
public class Bro : MonoBehaviour {
    private Canvas canvas;

    public void Start( )
    {
        canvas = GetComponent<Canvas>();
    }

    public void Update()
    {
        canvas.enabled = renderer.enabled;
    }
}
