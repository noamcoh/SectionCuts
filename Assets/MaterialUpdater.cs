using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MaterialUpdater : MonoBehaviour
{
    public GameObject Quad;
    public Material mat;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        mat.SetVector("_QuadPosition", Quad.transform.position);
        mat.SetVector("_QuadNormal", Quad.transform.forward);
    }
}
