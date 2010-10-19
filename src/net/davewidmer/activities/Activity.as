/**
 * The base class to use for all activities.
 *
 * @author	Dave Widmer
 * @see		http://www.davewidmer.net
 *
 * @license	MIT (http://www.opensource.org/licenses/mit-license.php)
 * @copyright	2010 © Dave Widmer
 */
package net.davewidmer.activities
{
	import net.davewidmer.display.BaseSprite;

	public class Activity extends BaseSprite
	{
		/** The internal variable for the isCorrect getter. */
		protected var _isCorrect:Boolean = false;

		/** Creates a new Activity instance. */
		public function Activity()
		{
			super();
		}

		/** Is this activity correct? */
		public function get isCorrect():Boolean
		{
			return _isCorrect;
		}

	}
}