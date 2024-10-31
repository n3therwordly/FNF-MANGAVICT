//

function postCreate() {
    red = new FlxSprite();
    red.makeSolid(20000, 15000, FlxColor.RED);
    red.screenCenter();
    red.alpha = 0;
    red.cameras = [camGame];
    add(red);
}

function onPlayerMiss() {
    red.alpha = 0.85;
    FlxTween.tween(red, {alpha: 0}, 0.5);
}