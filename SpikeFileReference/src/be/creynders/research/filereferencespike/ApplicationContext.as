package be.creynders.research.filereferencespike
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class ApplicationContext extends Context
	{
		public function ApplicationContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void{
			this.injector.mapSingletonOf( IFileSaverService, FileSaverService );
			this.commandMap.mapEvent( SaveFileEvent.SAVE_FILE, SaveFileCommand );
			this.mediatorMap.mapView( FileSelectionView, FileSelectionMediator );
		}
	}
}