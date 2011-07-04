package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	/**
	 * ...
	 * @author Dirk Bunk
	 */
	public class Player extends FlxSprite 
	{
		[Embed(source = 'player.png')] private var ImgPlayer:Class;
		
		public function Player(x:Number, y:Number) 
		{
			super(x, y, ImgPlayer);
			drag.x = 600;
			drag.y = 600;
			maxVelocity.x = 120;
			maxVelocity.y = 120;
		}
		
		override public function update():void
		{
			//MOVEMENT
			acceleration.x = 0;
			acceleration.y = 0;
			
			if(FlxG.keys.LEFT)
			{
				acceleration.x -= drag.x;
			}
			else if(FlxG.keys.RIGHT)
			{
				acceleration.x += drag.x;
			}
			
			if(FlxG.keys.UP)
			{
				acceleration.y -= drag.y;
			}
			else if(FlxG.keys.DOWN)
			{
				acceleration.y += drag.y;
			}


		}
		
	}

}