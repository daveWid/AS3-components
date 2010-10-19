/**
 * A Sprite than can be moved around on the screen.
 *
 * @author	Dave Widmer
 * @see		http://www.davewidmer.net
 *
 * @license	MIT (http://www.opensource.org/licenses/mit-license.php)
 * @copyright	2010 © Dave Widmer
 */
package net.davewidmer.display
{
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;

	import net.davewidmer.events.DragEvent;

	public class DragSprite extends BaseSprite
	{
		/** The rectangle that the DragSprite is bound to. */
		public var bounds:Rectangle;

		/** Creates a new DragSprite instance. */
		public function DragSprite()
		{
			super();
		}

		/** @inheritDoc */
		override protected function init():void
		{
			super.init();

			mouseChildren = false;
			// Create the default bounds [the stage]
			bounds = new Rectangle(0, 0, stage.stageWidth - width, stage.stageHeight - height);
		}

		/** @inheritDoc */
		override protected function enable():void
		{
			buttonMode = true;

			addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler, false, 0, true);
			addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler, false, 0, true);
		}

		/** @inheritDoc */
		override protected function disable():void
		{
			buttonMode = false;

			removeEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			removeEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
		}

		/**
		 * Handles when the mouse has been pressed.
		 *
		 * @param	event	MOUSE_DOWN event.
		 */
		private function mouseDownHandler(event:MouseEvent):void
		{
			startDrag(false, bounds);
			dispatchEvent(new DragEvent(DragEvent.DRAG_START));
		}

		/**
		 * Handles when the mouse has been pressed.
		 *
		 * @param	event	MOUSE_DOWN event.
		 */
		private function mouseUpHandler(event:MouseEvent):void
		{
			stopDrag();
			dispatchEvent(new DragEvent(DragEvent.DRAG_STOP));
		}

	}
}