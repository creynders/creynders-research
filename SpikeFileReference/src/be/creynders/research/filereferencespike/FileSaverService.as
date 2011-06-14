package be.creynders.research.filereferencespike
{
	import flash.net.FileReference;

	public class FileSaverService implements IFileSaverService
	{
		public function FileSaverService()
		{
		}
		
		private var _filereference : FileReference;
		
		public function saveFile():void
		{
			_filereference = new FileReference();
			_filereference.save( 'Lorem ipsum' );
		}
	}
}