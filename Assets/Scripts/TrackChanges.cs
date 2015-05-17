using UnityEngine;
using System.Collections;

namespace Vuforia
{
	public class TrackChanges : MonoBehaviour, ITrackableEventHandler
	{	
		private TrackableBehaviour mTrackBehavior;
		private bool isRendered = false;
		private DefaultTrackableEventHandler sDefTrackHandler;

		void Start () 
		{	
            //cam = GameObject.Find ("ARCamera");
            //ball = GameObject.Find("Ball");
			mTrackBehavior = this.gameObject.transform.parent.GetComponent<TrackableBehaviour> ();
			if(mTrackBehavior)
			{
				mTrackBehavior.RegisterTrackableEventHandler(this);
			}
			OnTrackingLost ();

            //tableZScale = Mathf.Abs(table.transform.localScale.z/2);
            //paddleZScale = Mathf.Abs(this.gameObject.transform.localScale.z/2);
		}

		public void OnTrackableStateChanged(TrackableBehaviour.Status previousStatus,TrackableBehaviour.Status newStatus)
		{
			if (newStatus == TrackableBehaviour.Status.DETECTED ||
			    newStatus == TrackableBehaviour.Status.TRACKED ||
			    newStatus == TrackableBehaviour.Status.EXTENDED_TRACKED)
			{
				OnTrackingFound();
			}
			else
			{
				OnTrackingLost();
			}
		}

		private void OnTrackingLost()
		{
			isRendered = false;
            BallMovement.checkRendering(false);
            Paddle.isRendered = false;
            PowerUp.checkRender = false;
            Score.isRendered = false;
        }

		
		private void OnTrackingFound()
		{
			isRendered = true;
            BallMovement.checkRendering(true);
            Paddle.isRendered = true;
			PowerUp.checkRender = true;
            Score.isRendered = true;
		}

	}
}
