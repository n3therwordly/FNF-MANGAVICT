// Thank you Care for letting me borrow this code btw !! :3

var angle:Float = 0.0;
function postUpdate() {
    camGame.angle = FlxMath.lerp(camGame.angle, angle, 0.04);
    switch(strumLines.members[curCameraTarget].characters[0].getAnimName()){
        case "singLEFT":
            camFollow.x -= 20;
            angle = -2;
        case "singRIGHT":
            camFollow.x += 20;
            angle = 2;
        case "singDOWN":
            camFollow.y += 20;
            angle = 0;
        case "singUP":
            camFollow.y -= 20;
            angle = 0;
        default: angle = 0;
    }
}