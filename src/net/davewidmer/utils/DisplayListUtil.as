/**
 * A set of utility (helper) functions for the DisplayList.
 *
 * @author	Dave Widmer
 * @see		http://www.davewidmer.net
 *
 * @license	MIT (http://www.opensource.org/licenses/mit-license.php)
 * @copyright	2010 © Dave Widmer
 */
package net.davewidmer.utils
{
	import flash.display.DisplayObjectContainer;

	public class DisplayListUtil
	{
		/** Helper class, don't use the constructor. */
		public function DisplayListUtil(){	}

		/**
		 * Finds all of the children in the target object that are
		 * the class.
		 *
		 * @param	target		The target Display Object to search
		 * @param	targetClass	The class to search for
		 * @return	array		All of the found children in an array
		 */
		public static function findChildren(target:DisplayObjectContainer, targetClass:Class):Array
		{
			var found:Array = [];

			var child:*;

			var len:int = target.numChildren;
			for (var i:int = 0; i < len; i++)
			{
				child = target.getChildAt(i);
				if (child is targetClass)
				{
					found.push(child);
				}
			}

			return found;
		}

	}
}