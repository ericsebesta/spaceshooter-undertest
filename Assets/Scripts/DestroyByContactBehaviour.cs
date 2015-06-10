using UnityEngine;
using System.Collections;

public class DestroyByContactBehaviour : MonoBehaviour
{
	public GameObject explosion;
	public GameObject playerExplosion;
	public int scoreValue;

	private GameController gameController;
	private readonly DestroyByContact destroyByContact;

	DestroyByContactBehaviour()
	{
		this.destroyByContact = new DestroyByContact();
	}

	void Start()
	{
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag("GameController");
		if (gameControllerObject != null)
		{
			gameController = gameControllerObject.GetComponent<GameController>();
		}
		if (gameController == null)
		{
			Debug.Log("Cannot find 'GameController' script");
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if (destroyByContact.ShouldProcessCollision(other))
		{
			if (destroyByContact.ShouldDoNormalExplosion(other))
			{
				Instantiate(explosion, transform.position, transform.rotation);
			}
			if (destroyByContact.ShouldDoPlayerExplosion(other))
			{
				Instantiate(playerExplosion, other.transform.position, other.transform.rotation);
				gameController.GameOver();
			}
			gameController.AddScore(scoreValue);
			Destroy(other.gameObject);
			Destroy(gameObject);
		}
	}
}

public class DestroyByContact
{
	public bool ShouldProcessCollision(Collider other)
	{
		return (other.tag != "Boundary" && other.tag != "Enemy");
	}

	public bool ShouldDoNormalExplosion(Collider other)
	{
		return (other.tag != "Boundary" && other.tag != "Enemy");
	}

	public bool ShouldDoPlayerExplosion(Collider other)
	{
		return (other.tag == "Player");
	}
}
