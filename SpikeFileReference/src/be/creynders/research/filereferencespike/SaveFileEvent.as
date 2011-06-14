package be.creynders.research.filereferencespike
{
	import flash.events.Event;
	
	public class SaveFileEvent extends Event
	{
		static public const SAVE_FILE : String = 'be.creynders.research.filereferencespike::SaveFileEvent/SAVE_FILE';
		
		public function SaveFileEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}