//
import flixel.text.FlxTextBorderStyle;

public var camOther = null;
var titleCard:FunkinText;


function postCreate() {
    camHUD.visible = false;
    camGame.visible = false;
    FlxG.cameras.add(camOther = new HudCamera(), false);
    camOther.bgColor = 0;
    titleCard = new FunkinText(0, 0, 0, "");
    titleCard.setFormat(Paths.font("vcr.ttf"), 64, 0xFFFFFF, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.GRAY);
    titleCard.text = SONG.meta.displayName + '.';
    titleCard.screenCenter();
    titleCard.borderSize = 3;
    titleCard.cameras = [camOther];
    add(titleCard);
}

function onCountdown(e) {
    e.cancel();
}

function onSongStart() {
    FlxTween.tween(titleCard, {alpha: 0}, (Conductor.stepCrochet / 1000) * 128);
    camHUD.visible = true;
    camGame.visible = true;
}