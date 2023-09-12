  
    function opponentNoteHit(note:Note)
    {
        var animToPlay:String = game.singAnimations[Std.int(Math.abs(Math.min(game.singAnimations.length-1, note.noteData)))];

        if(game.gf != null){
            game.gf.playAnim(animToPlay, true);
            game.gf.holdTimer = 0;
        }
    }