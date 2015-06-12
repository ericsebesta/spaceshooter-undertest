using UnityEngine;
using System.Collections;
using NUnit.Framework;
using NSubstitute;

public class DestroyByContactTest
{
	[Test]
	public void CollidingWithBoundaryShouldNotProcess()
	{
		var go = new GameObject();
		go.AddComponent<MeshCollider>();
		go.tag = "Boundary";

		var dbc = new DestroyByContact();
		var c = go.GetComponent<MeshCollider>();
		Assert.That(dbc.ShouldProcessCollision(c) == true);
		GameObject.DestroyImmediate(go);
	}

	[Test]
	public void CollidingWithDefaultShouldProcess()
	{
		var go = new GameObject();
		go.AddComponent<MeshCollider>();

		var dbc = new DestroyByContact();
		var c = go.GetComponent<MeshCollider>();
		Assert.That(dbc.ShouldProcessCollision(c) == true);
		GameObject.DestroyImmediate(go);
	}

	[Test]
	public void CollidingWithDefaultShouldDoNormalExplosion()
	{
		var go = new GameObject();
		go.AddComponent<MeshCollider>();

		var dbc = new DestroyByContact();
		var c = go.GetComponent<MeshCollider>();
		Assert.That(dbc.ShouldDoNormalExplosion(c) == true);
		GameObject.DestroyImmediate(go);
	}

	[Test]
	public void CollidingWithDefaultShouldDoNotDoPlayerExplosion()
	{
		var go = new GameObject();
		go.AddComponent<MeshCollider>();

		var dbc = new DestroyByContact();
		var c = go.GetComponent<MeshCollider>();
		Assert.That(dbc.ShouldDoPlayerExplosion(c) == false);
		GameObject.DestroyImmediate(go);
	}
}