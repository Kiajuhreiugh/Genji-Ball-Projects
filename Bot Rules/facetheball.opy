#Global variables

globalvar ballPosition 3


rule "face the ball":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition distance(eventPlayer.getEyePosition(), ballPosition) >= 5
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), ballPosition), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait()
    if RULE_CONDITION:
        goto RULE_START


