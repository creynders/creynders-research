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
			this.eventMap.mapListener( view.saveFileButton, MouseEvent.CLICK, _onMouseClick, MouseEvent );
		}
		
		private function _onMouseClick( e : Event ) : void {
			e.stopImmediatePropagation();
			this.dispatch( new SaveFileEvent( SaveFileEvent.SAVE_FILE ) );
		}
	}
}