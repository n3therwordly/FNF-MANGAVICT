// BITCH.
import hxvlc.flixel.FlxVideoSprite;

var video = null;

function postCreate() {
    dad.x = 385;
    dad.y = 185;
    boyfriend.x = 576;
    boyfriend.y = 164;
    black = new FlxSprite(100, 0);
    black.makeSolid(20000, 15000, FlxColor.BLACK);
    black.alpha = 0;
    black.cameras = [camGame];  
    add(black);

    //VIDEO FOR THE HARDSTYLE SECTION
    video = new FlxVideoSprite();
    video.load(Assets.getPath(Paths.file("videos/FUCK.mp4")));
    video.cameras = [camGame];
    video.x = 1120;
    video.scale.set(2.5, 2.5);
    video.screenCenter(FlxAxes.Y);
}

function stepHit() {
    switch(curStep) {
        case 512 | 1024 | 1280:
            fg.alpha = 1;
        case 640 | 1152 | 1536 | 2560:
            fg.alpha = 0;
        case 1788:
            defaultCamZoom = 1.8;
        case 1792:
            FlxTween.tween(black, {alpha: 0.5}, 2);
            dad.cameraOffset.y = -325;
        case 2048:
            for(spr in [missesTxt, accuracyTxt, scoreTxt, healthBar, healthBarBG, iconP1, iconP2]) {
                spr.visible = false;
            }
            fg.alpha = 1;
            insert(10, video);
            video.play();
            defaultCamZoom = 0.8;
            dad.cameraOffset.y = 105;
        case 2304:
            dad.y = -245;
            dad.cameraOffset.x = 825;
            dad.scale.set(0.75, 0.75);
            for(spr in [missesTxt, accuracyTxt, scoreTxt, healthBar, healthBarBG, iconP1, iconP2]) {
                spr.visible = true;
            }
            FlxTween.tween(black, {alpha: 0}, 2);
            video.kill();
    }
}