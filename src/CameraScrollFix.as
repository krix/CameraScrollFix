package
{
	import org.flixel.*;
	
	[SWF(width="640", height="480", backgroundColor="#000000")]
	//[Frame(factoryClass="Preloader")]

	public class CameraScrollFix extends FlxGame
	{
		public function CameraScrollFix():void
		{
			super(320, 240, GameState, 2, 60, 60);
			forceDebugger = true;
		}
	}
}
