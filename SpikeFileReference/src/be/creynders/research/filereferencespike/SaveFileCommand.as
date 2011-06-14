package be.creynders.research.filereferencespike
{
	import org.robotlegs.mvcs.Command;
	
	public class SaveFileCommand extends Command
	{
		public function SaveFileCommand()
		{
			super();
		}
		
		[Inject]
		public var service : IFileSaverService;
		
		override public function execute():void{
			service.saveFile();
		}
	}
}