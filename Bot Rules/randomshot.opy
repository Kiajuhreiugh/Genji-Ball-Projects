#Global variables

globalvar ballPosition 3


rule "random shot":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(ballPosition, eventPlayer.getEyePosition()) < 5
    
    eventPlayer.startFacing(vect(random.uniform(-25, 25), random.randint(0, 5), random.uniform(-25, 25)), 10000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait()


