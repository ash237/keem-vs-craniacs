package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuCharacter extends FlxSprite
{
	public var character:String;

	public function new(x:Float, character:String = 'bf')
	{
		super(x);

		this.character = character;

		var tex = FlxAtlasFrames.fromSparrow('assets/images/peeps.png', 'assets/images/peeps.xml');
		frames = tex;

		animation.addByPrefix('bf', "BF idle dance", 24);
		animation.addByPrefix('bfConfirm', 'BF idle dance', 24, false);
		animation.addByPrefix('gf', "Drac", 24);
		animation.addByPrefix('dad', "KeemstarIdle", 24);
		animation.addByPrefix('spooky', "spooky dance idle BLACK LINES", 24);
		animation.addByPrefix('pico', "Pico Idle Dance", 24);
		animation.addByPrefix('mom', "Mom Idle BLACK LINES", 24);
		animation.addByPrefix('parents-christmas', "Parent Christmas Idle", 24);
		animation.addByPrefix('senpai', "SENPAI idle Black Lines", 24);
		// Parent Christmas Idle

		animation.play(character);
		updateHitbox();
	}
}
