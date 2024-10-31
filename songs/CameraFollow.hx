// Thank you Care for letting me borrow this code btw !! :3


function postUpdate() {
   for(a in strumLines.members) switch(a.characters[0].getAnimName()){
        case "singLEFT":
            camFollow.x -= 20;
        case "singRIGHT":
            camFollow.x += 20;
        case "singDOWN":
            camFollow.y += 20;
        case "singUP":
            camFollow.y -= 20;
    }
}