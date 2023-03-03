#Global variables

globalvar targetedPlayer 0
globalvar ballIsOut 5


rule "bot dash offensive":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition ballIsOut == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility2() == true
    
    wait(0.1, Wait.ABORT_WHEN_FALSE)
    if targetedPlayer == eventPlayer.isUsingAbility1() or targetedPlayer == eventPlayer.isUsingAbility2():
        eventPlayer.forceButtonPress(Button.ABILITY_1)


