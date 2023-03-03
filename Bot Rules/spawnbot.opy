rule "spawn bot":
    createDummy(Hero.GENJI, Team.ALL, 11, vect(0, 10, 0), vect(0, 0, 0))
    getAllPlayers().startForcingName("jimothy")


