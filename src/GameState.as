package  
{
	import org.flixel.*;
	
	/**
	 * GameState
	 * @author Dirk Bunk
	 */
	public class GameState extends FlxState 
	{
		[Embed(source = 'tiles.png')] private var MapTiles:Class;
        [Embed(source = 'map.csv', mimeType = "application/octet-stream")] private var MapData:Class;
		
		private var _map:FlxTilemap;
		private var _player:Player;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff336699;
			
			_map = new FlxTilemap();
            _map.loadMap(new MapData, MapTiles);
			FlxG.camera.setBounds(0, 0, _map.width, _map.height, true);
			add(_map);
			
			_player = new Player(50, 50);
			FlxG.camera.follow(_player, FlxCamera.STYLE_LOCKON);
			add(_player)
		}
		
		override public function update():void
		{
			super.update();
			FlxG.collide(_map, _player);
		}
		
	}

}