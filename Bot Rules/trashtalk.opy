#Global variables

globalvar trashTalk 93


rule "trash talk":
    @Event playerEarnedElimination
    @Condition eventPlayer.isDummy() == true
    
    trashTalk = random.randint(1, 3)
    if trashTalk == 1:
        createInWorldText(getAllPlayers(), "I have the high ground!!!", updateEveryTick(eventPlayer.getPosition()), 2, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.RED, SpecVisibility.DEFAULT)
        wait(3)
        destroyInWorldText(getLastCreatedText())
    else:
        if trashTalk == 2:
            createInWorldText(getAllPlayers(), "You underestimate my power!!", updateEveryTick(eventPlayer.getPosition()), 2, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.RED, SpecVisibility.DEFAULT)
            wait(3)
            destroyInWorldText(getLastCreatedText())
        else:
            if trashTalk == 3:
                createInWorldText(getAllPlayers(), "Don't try it!", updateEveryTick(eventPlayer.getPosition()), 2, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.RED, SpecVisibility.DEFAULT)
                wait(3)
                destroyInWorldText(getLastCreatedText())


