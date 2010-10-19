/**
 * A Sprite that designates where DragSprite objects can be dropped.
 *
 * @author	Dave Widmer
 * @see		http://www.davewidmer.net
 *
 * @license	MIT (http://www.opensource.org/licenses/mit-license.php)
 * @copyright	2010 © Dave Widmer
 */
package net.davewidmer.display
{
	public class DropZone extends BaseSprite
	{
		/** Creates a new DropZone instance. */
		public function DropZone()
		{
			super();
		}

		/** @inheritDoc */
		override protected function init():void
		{
			super.init();
			mouseChildren = false;
		}

	}
}