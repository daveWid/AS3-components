/**
 * The BaseSprite is the foundation for all of the display objects
 * that are used in this set of classes.
 *
 * @author	Dave Widmer
 * @see		http://www.davewidmer.net
 *
 * @license	MIT (http://www.opensource.org/licenses/mit-license.php)
 * @copyright	2010 © Dave Widmer
 */
package net.davewidmer.display
{
	import flash.display.Sprite;
	import flash.events.Event;

	public class BaseSprite extends Sprite
	{
		/** Holder for the enabled getter/setter */
		private var _enabled:Boolean;

		/** Creates a new BaseSprite instance. */
		public function BaseSprite()
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler, false, 0, true);
		}

		/** A boolean value that indicates whether the BaseSprite is enabled. */
		public function get enabled():Boolean
		{
			return _enabled;
		}
		public function set enabled(value:Boolean):void
		{
			_enabled = value;
			(_enabled) ? enable() : disable();
		}

		/**
		 * This function runs after this instance has been added to the stage.
		 *
		 * @param	event	ADDED_TO_STAGE event
		 */
		private function addedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler, false, 0, true);
			init();
		}

		/**
		 * This function runs after this instance has been removed from the stage.
		 *
		 * @param	event	REMOVED_FROM_STAGE event
		 */
		private function removedFromStageHandler(event:Event):void
		{
			removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			dispose();
		}

		/**
		 * Use this function as your constructor to make sure everything has been
		 * inialized on stage.
		 */
		protected function init():void
		{
			enabled = true;
		}

		/**
		 * Use this function to clean up everything (stage removal).
		 */
		protected function dispose():void
		{
			enabled = false;
		}

		/**
		 * This function is called when enabled is set to true.
		 * Use it to get your instance ready to be used.
		 */
		protected function enable():void{}

		/**
		 * This function is called when enabled is set to false.
		 * Use it to turn your instance off.
		 */
		protected function disable():void{}

	}
}
