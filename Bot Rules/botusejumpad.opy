rule "bot use jumpad":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    
    eventPlayer.startForcingButton(Button.JUMP)


