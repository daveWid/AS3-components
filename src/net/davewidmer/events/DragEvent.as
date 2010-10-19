/**
 * Events that are fired during drag activities.
 *
 * @author	Dave Widmer
 * @see		http://www.davewidmer.net
 *
 * @license	MIT (http://www.opensource.org/licenses/mit-license.php)
 * @copyright	2010 © Dave Widmer
 */
package net.davewidmer.events
{
	import flash.events.Event;

	public class DragEvent extends Event
	{
		/** When the dragging event is starting. */
		public static const DRAG_START:String = "dragStart";

		/** When the dragging event has stopped. */
		public static const DRAG_STOP:String = "dragStop";

		/**
		 * Creates a new DragEvent instance.
		 * @inheritDoc
		 */
		public function DragEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		/** @inheritDoc */
		override public function clone():Event
		{
			return new DragEvent(type, bubbles, cancelable);
		}

	}
}