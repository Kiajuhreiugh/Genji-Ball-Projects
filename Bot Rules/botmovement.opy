rule "bot movement":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition eventPlayer.isAlive() == true
    
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startThrottleInDirection(vect(random.uniform(-360, 360), not true, random.uniform(-360, 360)), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if RULE_CONDITION:
        goto RULE_START


