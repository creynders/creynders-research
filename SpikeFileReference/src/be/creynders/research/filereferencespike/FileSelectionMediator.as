package be.creynders.research.filereferencespike
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class FileSelectionMediator extends Mediator
	{
		public function FileSelectionMediator()
		{
			super();
		}
		
		[Inject]
		public var view : FileSelectionView;
		
		override public function onRegister():void{
			view.saveFileSignal.add( this._onMouseClick );
		}
		
		private function _onMouseClick( e : MouseEvent ) : void {
			this.dispatch( new SaveFileEvent( SaveFileEvent.SAVE_FILE ) );
		}
	}
}