#Global variables

globalvar targetedPlayer 0
globalvar previousTargetedPlayer 1
globalvar ballSpeed 2
globalvar ballPosition 3
globalvar ballSpawnCountdown 4
globalvar ballIsOut 5
globalvar ballDeleteRequested 6
globalvar roundInProgress 7
globalvar bouncePadCooldownLength 8
globalvar ballSpawnSpeed 9
globalvar maxBallSpeed 10
globalvar isInFinalDuel 11
globalvar bouncePadDistance 13
globalvar bouncePadStrength 14
globalvar bouncePad1 15
globalvar bouncePad2 16
globalvar bouncePad3 17
globalvar bouncePad4 18
globalvar deathSphere 19
globalvar deathSphereRad 20
globalvar isEnoughPlayersToStart 21
globalvar waitingForPlayersHUD 22
globalvar centerOffLimitsSize 23
globalvar sphereSize 24
globalvar circleCenter 25
globalvar redGreenColorblindMode 26
globalvar watermarkEnabled 27
globalvar bouncepadDashingEnabled 28
globalvar gameEndEnabled 29
globalvar cooldownDashingEnabled 30
globalvar deathSpherePos 31
globalvar deathBeam 32
globalvar ballDirection 33
globalvar ballCollisionSurfaceNormal 34
globalvar prevBallPos 35
globalvar prevBallPos2 36
globalvar ballTail1 38
globalvar ballTail2 39
globalvar highestScore 41
globalvar tieBreakerActive 42
globalvar randomExplosionPicker 43
globalvar explosionSoundVolume 44
globalvar improvedExplosions 45
globalvar randomExplosionSounds 46
globalvar finalDuelNuke 47
globalvar ballDirectionRate 48
globalvar entityReference 49
globalvar __currentMap___ 50
globalvar allowMatchEnd 51
globalvar passingDamage 52
globalvar isPassingTeam1 53
globalvar isPassingTeam2 54
globalvar scoreToWin 55
globalvar passingEnabled 56
globalvar bouncePadSuperjumpNerf 57
globalvar passingPlayer 58
globalvar passingAssistId 59
globalvar passingPlayerName 60
globalvar passingAuraToggle 61
globalvar torbBall 62
globalvar ballHero 63
globalvar playerHero 64
globalvar ballPlayer 65
globalvar ballPlayerMock 66
globalvar ballHeroRegretText 67
globalvar ballHeroRandom 68
globalvar name 69
globalvar wasFinalDuel 70
globalvar startingText 71
globalvar arenaType 72
globalvar startingBallSpeed 73
globalvar bouncePadRange 74
globalvar maxRoundsToggle 75
globalvar maxRounds 76
globalvar currentRound 77
globalvar bouncePadToggle 78
globalvar perspectiveMode 79
globalvar rulesetMode 80
globalvar bouncePadCooldownLengthStart 81
globalvar invisibleBall 82
globalvar invisiblePlayers 83
globalvar endlessBall 84
globalvar ballTailColor 85
globalvar tournamentMode 86
globalvar breaksEnabled 87
globalvar breakFrequency 88
globalvar breakLength 89
globalvar stressTorbs 90
globalvar breakInProgress 91
globalvar spawnPoints 92
globalvar trashTalk 93


#Player variables

playervar hasMoved 0
playervar currentUltPercent 1
playervar bouncePadCooldown 2
playervar playerDeflects 4
playervar playerKills 5
playervar playerDeaths 6
playervar playerEffects 7
playervar isDashEnabled 9
playervar moveSpeed 10
playervar maxBallSpeed 11
playervar antiFloatProtection 12
playervar antiStuckProtection 13
playervar toggleHUD 14
playervar dashNerf 15
playervar passingSignal 16
playervar thirdPerson 17
playervar yeetPlayer 18
playervar latency 19
playervar latencyToggle 20


#Subroutine names

subroutine CoolDeathEffects 0
subroutine UpdatedDeathEffects 1
subroutine DeflectFailed 2
subroutine ShortFun 3
subroutine LongFun 4
subroutine StartBreak 5
subroutine BallCurve 6


#Activated extensions

#!extension explosionSounds
#!extension explosionSounds
#!extension kineticExplosionEffects
#!extension kineticExplosionEffects
#!extension kineticExplosionEffects
#!extension kineticExplosionEffects
#!extension kineticExplosionEffects
#!extension explosionSounds
#!extension explosionSounds
#!extension explosionSounds
#!extension explosionSounds
#!extension explosionSounds
#!extension explosionSounds


rule "OverPy Map Detection":
    if getCurrentMap() in [Map.AYUTTHAYA, Map.ANTARCTIC_PENINSULA, Map.BLACK_FOREST, Map.BLACK_FOREST, Map.BLIZZ_WORLD, Map.BLIZZ_WORLD, Map.BUSAN, Map.BUSAN, Map.BUSAN, Map.CASTILLO, Map.CHATEAU_GUILLARD, Map.CHATEAU_GUILLARD, Map.CIRCUIT_ROYAL, Map.COLOSSEO, Map.DORADO, Map.ECOPOINT_ANTARCTICA, Map.ECOPOINT_ANTARCTICA, Map.EICHENWALDE, Map.EICHENWALDE, Map.ESPERANCA, Map.HANAMURA, Map.HANAMURA, Map.HAVANA, Map.HOLLYWOOD, Map.HOLLYWOOD, Map.HORIZON_LUNAR_COLONY, Map.ILIOS, Map.ILIOS, Map.ILIOS, Map.ILIOS, Map.JUNKENSTEIN, Map.JUNKERTOWN, Map.KANEZAKA, Map.KINGS_ROW, Map.KINGS_ROW, Map.LIJIANG_CONTROL_CENTER, Map.LIJIANG_CONTROL_CENTER, Map.LIJIANG_GARDEN, Map.LIJIANG_GARDEN, Map.LIJIANG_NIGHT_MARKET, Map.LIJIANG_NIGHT_MARKET, Map.LIJIANG_TOWER, Map.LIJIANG_TOWER, Map.MALEVENTO, Map.MIDTOWN, Map.NECROPOLIS, Map.NEPAL, Map.NEPAL, Map.NEPAL, Map.NEPAL, Map.NEPAL, Map.NEW_QUEEN_STREET, Map.OASIS, Map.OASIS, Map.OASIS, Map.OASIS, Map.PARAISO, Map.PARIS, Map.PETRA, Map.PRACTICE_RANGE, Map.RIALTO, Map.ROUTE66, Map.TEMPLE_OF_ANUBIS, Map.VOLSKAYA, Map.WATCHPOINT_GIBRALTAR, Map.WORKSHOP_CHAMBER, Map.WORKSHOP_EXPANSE, Map.WORKSHOP_EXPANSE, Map.WORKSHOP_GREEN_SCREEN, Map.WORKSHOP_ISLAND, Map.WORKSHOP_ISLAND, Map.SHAMBALI_MONASTERY]:
        __currentMap___ = getCurrentMap()
        return
    __currentMap___ = raycast(vect(500, 100, 500), vect(-500, -100, -500), null, null, false).getHitPosition()
    if __currentMap___ == vect(0, 0, 0) or __currentMap___ == vect(-500, -100, -500):
        __currentMap___ = raycast(vect(30, 5, 0), vect(-30, -10, -10), null, null, false).getHitPosition()
        if __currentMap___ == vect(-30, -10, -10):
            __currentMap___ = raycast(vect(200, 20, 100), vect(100, -100, -100), null, null, false).getHitPosition()
            if __currentMap___ == vect(100, -100, -100):
                __currentMap___ = raycast(vect(300, 20, -100), vect(300, -100, 100), null, null, false).getHitPosition()
                if __currentMap___ == vect(300, -100, 100):
                    __currentMap___ = raycast(vect(50, 100, -150), vect(-50, -100, -160), null, null, false).getHitPosition()
                    if __currentMap___ == vect(-50, -100, -160):
                        __currentMap___ = raycast(vect(0, 300, 340), vect(0, -100, -300), null, null, false).getHitPosition()
                        if __currentMap___ == vect(0, -100, -300):
                            __currentMap___ = raycast(vect(140, 10, -240), vect(200, -10, -300), null, null, false).getHitPosition()
                            if __currentMap___ == vect(200, -10, -300):
                                __currentMap___ = raycast(vect(-180, 30, 60), vect(-180, -50, -60), null, null, false).getHitPosition()
    __currentMap___ = 100 * ceil(__currentMap___.y) + 10 * round(__currentMap___.x) + floor(__currentMap___.z)
    if __currentMap___ == 10121:
        __currentMap___ = raycast(vect(-60, 20, -60), vect(60, -10, 60), null, null, false).getHitPosition()
        if __currentMap___ == vect(60, -10, 60):
            __currentMap___ = raycast(vect(-180, -70, 60), vect(-180, -100, -60), null, null, false).getHitPosition()
        __currentMap___ = 100 * ceil(__currentMap___.y) + 10 * round(__currentMap___.x) + floor(__currentMap___.z)


rule "// SETTINGS":
    perspectiveMode = createWorkshopSetting(enum["Toggle 1st/3rd Person", "1st Person", "3rd Person"], "Dodgeball Settings", "Perspective Mode", 0, 0)
    rulesetMode = createWorkshopSetting(enum["Modern", "Retro"], "Dodgeball Settings", "Genji Dodgeball Ruleset", 0, 1)
    arenaType = createWorkshopSetting(enum["Standard", "Airbending", "Earth/waterbending", "Firebending"], "Dodgeball Settings", "Arena Type", 0, 2)
    startingBallSpeed = createWorkshopSetting(int[30:100], "Dodgeball Settings", "Starting Ball Speed", 40, 3)
    maxBallSpeed = createWorkshopSetting(int[100:500], "Dodgeball Settings", "Maximum Ball Speed", 500, 4)
    endlessBall = createWorkshopSetting(bool, "Dodgeball Settings", "Endless Ball", false, 5)
    bouncePadToggle = createWorkshopSetting(bool, "Dodgeball Settings", "Bouncepads", true, 6)
    passingEnabled = createWorkshopSetting(bool, "Dodgeball Settings", "Passing", false, 7)
    torbBall = createWorkshopSetting(enum["Please don't.", "Torb Ball"], "Fun Settings", "Torb Ball", 0, 0)
    ballTailColor = createWorkshopSetting(enum["Sky Blue", "Lethality", "Lethality+"], "Fun Settings", "Ball Tail Color", 0, 1)
    invisibleBall = createWorkshopSetting(bool, "Fun Settings", "Invisible Ball", false, 2)
    invisiblePlayers = createWorkshopSetting(bool, "Fun Settings", "Invisible Players", false, 3)
    tournamentMode = createWorkshopSetting(bool, "Tournament Settings (FFA Only)", "Tournament Mode", false, 0)
    maxRounds = createWorkshopSetting(int[1:50], "Tournament Settings (FFA Only)", "Total Rounds", 30, 1)
    breaksEnabled = createWorkshopSetting(bool, "Tournament Settings (FFA Only)", "Breaks", true, 2)
    breakFrequency = createWorkshopSetting(int[1:25], "Tournament Settings (FFA Only)", "Run Break Every __ Rounds", 10, 3)
    allowMatchEnd = createWorkshopSetting(bool, "Teams Settings", "Allow Match to End At Score", true, 0)
    scoreToWin = createWorkshopSetting(int[1:30], "Teams Settings", "Score to Win", 10, 1)
    passingAuraToggle = createWorkshopSetting(bool, "Teams Settings", "Passing Aura", true, 2)
    #Currently, there is an issue where the server will end, based on how many players there are. If there are less it will take longer to crash. But it WILL crash. This rule simply lets there be a "winner" at the end VS crashing in the middle of Final Duel.
    gameEndEnabled = createWorkshopSetting(bool, "Teams Settings", "Allow Match to End At Time", false, 2)
    watermarkEnabled = createWorkshopSetting(bool, "Visual Settings", "Watermark", true, 0)
    cooldownDashingEnabled = true
    redGreenColorblindMode = createWorkshopSetting(bool, "Visual Settings", "Red/Green Colorblind Mode", false, 2)
    finalDuelNuke = createWorkshopSetting(bool, "Visual Settings", "Final Duel Explosion", true, 3)


rule "// MAP ZONES":
    targetedPlayer = 0


rule "Set Workshop Island":
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    circleCenter = vect(0, 1.199, 0)
    sphereSize = 60


rule "Set Workshop Chamber":
    @Condition __currentMap___ == Map.WORKSHOP_CHAMBER
    
    circleCenter = vect(0, 1.199, 0)
    sphereSize = 29.7


rule "Set Workshop Expanse Center":
    @Condition (__currentMap___ == Map.WORKSHOP_EXPANSE or __currentMap___ == 96) == true
    
    circleCenter = vect(0, 1.199, 0)
    if arenaType == 2:
        sphereSize = 60
    else:
        sphereSize = 20


rule "Set Workshop Green Screen Center":
    @Condition __currentMap___ == Map.WORKSHOP_GREEN_SCREEN
    
    circleCenter = vect(0, 1.199, 0)
    sphereSize = 20


rule "Set Oasis University Center":
    @Condition __currentMap___ == 345
    
    circleCenter = vect(-192.609, 60.349, 2.252)
    sphereSize = 20


rule "Set Kings Row center (NOTE: Lower the max players! This arena is smaller then the others!)":
    @Condition __currentMap___ == Map.KINGS_ROW
    
    circleCenter = vect(-20.504, 40.538, -74.601)
    sphereSize = 17


rule "Set B﻿lizz World center (fun fact: you can't use the name of the company who made this game in rule names)":
    @Condition __currentMap___ == Map.BLIZZ_WORLD
    
    circleCenter = vect(2.554, -4.651, -71.211)
    sphereSize = 20


rule "Init player variables":
    @Event eachPlayer
    
    waitUntil(eventPlayer.hasSpawned(), 20)
    if roundInProgress and isGameInProgress():
        eventPlayer.teleport(circleCenter + vect(0, 500, 0))
        eventPlayer.setInvisibility(Invis.ALL)
        wait(0.05)
        kill(eventPlayer, null)
        wait(0.25)
    if eventPlayer.getSlot() <= len(spawnPoints) and getCurrentGamemode() == Gamemode.FFA:
        eventPlayer.teleport(spawnPoints[eventPlayer.getSlot()])
    else:
        eventPlayer.teleport(circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)))
    wait()
    eventPlayer.hasMoved = true
    if ballHero != null and not isGameInProgress():
        eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), ballPlayer.getEyePosition()), 100, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.isDashEnabled = false
    eventPlayer.setStatusEffect(null, Status.INVINCIBLE, 9999)
    if cooldownDashingEnabled:
        goto lbl_0
    eventPlayer.setAbility1Enabled(false)
    lbl_0:
    eventPlayer.disableRespawn()
    eventPlayer.enableDeathSpectateAllPlayers()
    eventPlayer.enableDeathSpectateTargetHud()
    eventPlayer.bouncePadCooldown = bouncePadCooldownLengthStart
    eventPlayer.antiFloatProtection = false
    eventPlayer.antiStuckProtection = false
    eventPlayer.toggleHUD = true
    eventPlayer.dashNerf = false
    eventPlayer.latencyToggle = false
    waitUntil(not roundInProgress or not isGameInProgress() or eventPlayer.isAlive(), 9999)
    eventPlayer.setInvisibility(Invis.NONE)
    if invisiblePlayers:
        getAllPlayers().setInvisibility(Invis.ALL)
    waitUntil(eventPlayer.isAlive() and isGameInProgress(), 90)
    if ballHero != null:
        eventPlayer.stopFacing()
    #Force 3rd person if it's toggled on.
    if perspectiveMode == 2:
        eventPlayer.thirdPerson = true
        eventPlayer.startCamera(eventPlayer + worldVector(vect(-0.75, 0.25, -0.25), eventPlayer, Transform.ROTATION) + Vector.UP * 1.5 + eventPlayer.getFacingDirection() * -2, eventPlayer + eventPlayer.getFacingDirection() * 1000, 0)
    elif invisiblePlayers:
        eventPlayer.startCamera(updateEveryTick(eventPlayer.getEyePosition()), updateEveryTick(eventPlayer + eventPlayer.getFacingDirection() * 1000), 0)
    wait(3)
    smallMessage(eventPlayer, "Press {0} to enable/disable the scoreboard".format(buttonString(Button.INTERACT)))
    if perspectiveMode == 0:
        wait(3)
        smallMessage(eventPlayer, "Press {0} to toggle 1st/3rd person".format(buttonString(Button.RELOAD)))


rule "Init global variables":
    targetedPlayer = -1
    previousTargetedPlayer = -1
    if random.randint(1, 100) == 69:
        ballSpawnCountdown = 69
    else:
        ballSpawnCountdown = 5
    if tournamentMode and getCurrentGamemode() != Gamemode.FFA:
        tournamentMode = false
        hudSubtext(hostPlayer, "Tournament mode is only supported in FFA", HudPosition.LEFT, -20, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.ALWAYS)
    disableScoring()
    disableGamemodeCompletion()
    disableMusic()
    disableAnnouncer()
    disableInspector()
    #Set the countdown to be a bit longer to let players who haven't loaded the map yet load in
    setMatchTime(10)
    if torbBall == 1 and getCurrentGamemode() == Gamemode.FFA:
        ballHero = Hero.TORBJORN
        name = ballHero
    else:
        #No touchy. I'm talking to you, person thinking it's funny to put your name here. Only Torbjörn can steal credit for making my game.
        name = "Mazawrath"
        ballHero = null
    #TODO get this working
    # playerHero = [hero for hero in getAllHeroes() if hero != ballHero]
    playerHero = Hero.GENJI
    bouncePadStrength = 30
    ballSpeed = startingBallSpeed
    ballSpawnSpeed = 30
    if arenaType == 2:
        if __currentMap___ == Map.WORKSHOP_EXPANSE or __currentMap___ == 96:
            centerOffLimitsSize = 20
        else:
            centerOffLimitsSize = 12.5
    else:
        centerOffLimitsSize = 3.5
    spawnPoints = [vect(circleCenter.x + 12, circleCenter.y, 0), vect(circleCenter.x - 12, circleCenter.y, 0), vect(0, circleCenter.y, circleCenter.z + 12), vect(0, circleCenter.y, circleCenter.z - 12), vect(circleCenter.x + 12, circleCenter.y, circleCenter.z + 12), vect(circleCenter.x + 12, circleCenter.y, circleCenter.z - 12), vect(circleCenter.x - 12, circleCenter.y, circleCenter.z + 12), vect(circleCenter.x - 12, circleCenter.y, circleCenter.z - 12), vect(circleCenter.x + 12, circleCenter.y, circleCenter.z + 6), vect(circleCenter.x - 12, circleCenter.y, circleCenter.z - 6), vect(circleCenter.x + 12, circleCenter.y, circleCenter.z - 6), vect(circleCenter.x - 12, circleCenter.y, circleCenter.z + 6)]
    isInFinalDuel = false
    bouncePadCooldownLengthStart = 3
    bouncePadCooldownLength = 3
    bouncePadSuperjumpNerf = 6
    ballPosition = vect(0, -1, 0)
    explosionSoundVolume = 30
    improvedExplosions = true
    randomExplosionSounds = true
    cooldownDashingEnabled = true
    passingDamage = 100
    isPassingTeam1 = false
    isPassingTeam2 = false
    passingPlayer = null
    currentRound = 1
    breakLength = 120
    maxRoundsToggle = false
    if getCurrentGamemode() == Gamemode.FFA:
        if tournamentMode:
            maxRoundsToggle = true
            gameEndEnabled = false
        else:
            gameEndEnabled = true
    #Using passing with retro ruleset DOES NOT work
    if rulesetMode == 1 and passingEnabled and getCurrentGamemode() == Gamemode.FFA:
        passingEnabled = false
        hudSubtext(hostPlayer, "Hi host. Very clever idea but sorry retro rules totally breaks self passing. Like, what do you think it can even do? The b{0}".format("all can only go in a straight direction and self passing sends the ball away from you and then curves around so in this ca{0}".format("se where would it even go? In your head. That's where it goes. I tested it. So you don't have to.")), HudPosition.RIGHT, 0, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    createEffect([], Effect.SPHERE, false, Vector.DOWN, false, EffectReeval.NONE)
    destroyEffect(getLastCreatedEntity())
    entityReference = getLastCreatedEntity()


rule "Create game sphere":
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLACK, vect(circleCenter.x, circleCenter.y, circleCenter.z), centerOffLimitsSize, EffectReeval.VISIBILITY)
    #Workshop Island doesn't need a circle.
    if __currentMap___ != Map.WORKSHOP_ISLAND and __currentMap___ != 196:
        createEffect(getAllPlayers(), Effect.LIGHT_SHAFT, Color.ORANGE, vect(circleCenter.x, circleCenter.y - 25, circleCenter.z), sphereSize, EffectReeval.VISIBILITY)
    else:
        createEffect([player for player in getAllPlayers() if distance(player.getPosition(), circleCenter) >= sphereSize - 10], Effect.LIGHT_SHAFT, Color.BLUE, vect(circleCenter.x, circleCenter.y - 15, circleCenter.z), sphereSize, EffectReeval.VISIBILITY)


rule "Create global HUD elements":
    #hudText(getAllPlayers(), null, null, "BETA BUILD - NOT FULLY TESTED - CHANGES ARE NOT FINAL", HudPosition.LEFT, -20, null, null, Color.AQUA, HudReeval.VISIBILITY, SpecVisibility.ALWAYS)
    if getCurrentGamemode() == Gamemode.FFA:
        #white normal
        hudSubheader(getAllPlayers().exclude(targetedPlayer) if localPlayer in getAllPlayers() else [], "Current Player Targeted: {0}".format(targetedPlayer), HudPosition.LEFT, -2, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    if getCurrentGamemode() == Gamemode.TDM:
        #white normal
        hudSubheader([player for player in getAllPlayers() if player != targetedPlayer and player.getTeam() != targetedPlayer.getTeam()], "Current Player Targeted: {0}".format(targetedPlayer), HudPosition.LEFT, -2, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        #sky blue targeting teammate
        hudSubheader([player for player in getAllPlayers() if player != targetedPlayer and player.getTeam() == targetedPlayer.getTeam()], "Current Player Targeted: {0}".format(targetedPlayer), HudPosition.LEFT, -2, Color.SKY_BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #red when you're targeted
    hudSubheader(targetedPlayer if localPlayer in getAllPlayers() else [], "Current Player Targeted: {0}".format(targetedPlayer), HudPosition.LEFT, -2, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudText(getDeadPlayers(Team.ALL), "Waiting for next round", "You have been eliminated or joined during a round", "You will spawn once the next round starts", HudPosition.TOP, 2, Color.WHITE, Color.WHITE, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #pass
    #return
    #hudSubtext(getAllPlayers(), "If you get hit, you die.  Last man standing wins!", HudPosition.RIGHT, -9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #ball speed text color change with speed
    hudSubtext(getAllPlayers(), "Current Ball Speed: {0}".format(ballSpeed), HudPosition.LEFT, -3, rgb(max(0, min((1333.333 / (maxBallSpeed - ballSpawnSpeed)) * (ballSpeed - ballSpawnSpeed) - 200, 200)) + (55 * (ballSpeed != maxBallSpeed)), max(55, min(455 - ((666.667 / (maxBallSpeed - ballSpawnSpeed)) * (ballSpeed - ballSpawnSpeed)), 255)) + (min((666.667 / (maxBallSpeed - ballSpawnSpeed)) * (ballSpeed - ballSpawnSpeed) - 100, 0)), max(55, (500 / (maxBallSpeed - ballSpawnSpeed)) * (ballSpeed - ballSpawnSpeed) - 245) - (min((59259.258 / ((maxBallSpeed - ballSpawnSpeed) ** 3)) * ((ballSpeed - ballSpawnSpeed) ** 3) - 200, 0))), HudReeval.VISIBILITY_STRING_AND_COLOR, SpecVisibility.DEFAULT)
    #hudSubheader(getAllPlayers(), "Updates by u/FearlessKat, u/Blink, u/TheRedstoneBlaze, tumtum9000#1232,david8686406#1523", HudPosition.LEFT, -10, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    if watermarkEnabled and not tournamentMode:
        hudSubheader(getAllPlayers(), "Discord.gg/GenjiDodgeball", HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    createInWorldText([player for player in getAllPlayers() if ballSpawnCountdown != 0 and player != targetedPlayer], "Ball Spawning In: {0}".format(ceil(ballSpawnCountdown)), vect(circleCenter.x, circleCenter.y + 2.5, circleCenter.z), 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_STRING, Color.SKY_BLUE, SpecVisibility.DEFAULT)
    createInWorldText(targetedPlayer if ballSpawnCountdown != 0 else [], "Ball Spawning In: {0}".format(ceil(ballSpawnCountdown)), updateEveryTick(vect(circleCenter.x, circleCenter.y + 2.5, circleCenter.z) + ((directionTowards(vect(circleCenter.x, circleCenter.y + 2.5, circleCenter.z), targetedPlayer.getEyePosition())) / 50)), 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, rgb(255, 50, 50), SpecVisibility.DEFAULT)
    if rulesetMode == 1:
        if getCurrentGamemode() == Gamemode.FFA:
            hudSubheader(getAllPlayers(), "Retro ruleset. Dash deflecting is disabled.", HudPosition.RIGHT, 0, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
        else:
            hudSubheader(getAllPlayers(), "Retro ruleset. Dash deflecting & self passing are disabled.", HudPosition.RIGHT, 0, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    if passingEnabled and rulesetMode == 0:
        if getCurrentGamemode() == Gamemode.TDM:
            hudSubheader(getAllPlayers(), "Hold {0} while deflecting to pass the ball to another teammate!".format(buttonString(Button.SECONDARY_FIRE)), HudPosition.RIGHT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        elif getCurrentGamemode() == Gamemode.FFA:
            hudSubheader(getAllPlayers(), "Hold {0} while deflecting to self pass the ball!".format(buttonString(Button.SECONDARY_FIRE)), HudPosition.RIGHT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    if tournamentMode:
        hudSubheader(getAllPlayers(), "Tourney Mode. Rounds Remaining: {0}".format(maxRounds - currentRound + 1), HudPosition.LEFT, -10, Color.AQUA, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


rule "Create player HUD elements":
    @Event eachPlayer
    @Condition rulesetMode != 2
    
    hudSubheader(eventPlayer if localPlayer in getAllPlayers() else [], "Lag compensation [{0}]: {1}".format(buttonString(Button.ULTIMATE), "On" if eventPlayer.latencyToggle else "Off"), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.NEVER)
    if perspectiveMode == 0:
        hudSubheader(eventPlayer if localPlayer in getAllPlayers() else [], "Third person: [{0}]".format(buttonString(Button.RELOAD)), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.NEVER)


rule "Create bounce pads":
    @Condition bouncePadToggle != false
    
    if arenaType == 0:
        bouncePadDistance = 12
        bouncePadRange = 2.75
        bouncePad1 = vect(circleCenter.x + bouncePadDistance, circleCenter.y, circleCenter.z)
        bouncePad2 = vect(circleCenter.x + bouncePadDistance * -1, circleCenter.y, circleCenter.z)
        bouncePad3 = vect(circleCenter.x, circleCenter.y, circleCenter.z + bouncePadDistance)
        bouncePad4 = vect(circleCenter.x, circleCenter.y, circleCenter.z + bouncePadDistance * -1)
        #Bouncepad ready
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown == 0], Effect.RING, Color.SKY_BLUE, bouncePad1, 2, EffectReeval.VISIBILITY)
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown == 0], Effect.RING, Color.SKY_BLUE, bouncePad2, 2, EffectReeval.VISIBILITY)
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown == 0], Effect.RING, Color.SKY_BLUE, bouncePad3, 2, EffectReeval.VISIBILITY)
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown == 0], Effect.RING, Color.SKY_BLUE, bouncePad4, 2, EffectReeval.VISIBILITY)
        #Bouncepad not ready
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown > 0], Effect.RING, Color.WHITE, bouncePad1, 2, EffectReeval.VISIBILITY)
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown > 0], Effect.RING, Color.WHITE, bouncePad2, 2, EffectReeval.VISIBILITY)
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown > 0], Effect.RING, Color.WHITE, bouncePad3, 2, EffectReeval.VISIBILITY)
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown > 0], Effect.RING, Color.WHITE, bouncePad4, 2, EffectReeval.VISIBILITY)
    elif arenaType == 1:
        bouncePadDistance = 0
        bouncePadRange = 20.75
        bouncePad1 = vect(circleCenter.x + bouncePadDistance, circleCenter.y, circleCenter.z)
        #Bouncepad ready
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown == 0], Effect.RING, Color.SKY_BLUE, bouncePad1, 20, EffectReeval.VISIBILITY)
        #Bouncepad not ready
        createEffect([player for player in getAllPlayers() if player.bouncePadCooldown > 0], Effect.RING, Color.WHITE, bouncePad1, 20, EffectReeval.VISIBILITY)


rule "Create ball & targeted effect":
    @Condition isGameInProgress() == true
    @Condition getCurrentGamemode() == Gamemode.FFA
    
    if not ballHero and not invisibleBall:
        #Orb for when ball is not getting passed
        createEffect(updateEveryTick(getAllPlayers().exclude(targetedPlayer) if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.ORB, Color.WHITE, updateEveryTick(ballPosition), 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([] if not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle else getAllPlayers().exclude(targetedPlayer)), Effect.ORB, Color.WHITE, ballPosition, 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick(targetedPlayer if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.ORB, Color.YELLOW if redGreenColorblindMode else Color.RED, updateEveryTick(ballPosition + (ballSpeed * normalize(ballDirection) * (localPlayer.latency if ballSpawnCountdown == 0 else 0))), 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([] if not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle else targetedPlayer), Effect.ORB, Color.YELLOW if redGreenColorblindMode else Color.RED, ballPosition, 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    if not invisiblePlayers:
        createEffect(getAllPlayers().exclude(targetedPlayer), Effect.GOOD_AURA, Color.YELLOW if redGreenColorblindMode else Color.RED, updateEveryTick(targetedPlayer.getPosition() + Vector.UP), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([player for player in getAllPlayers() if player != targetedPlayer and (isPassingTeam1 or isPassingTeam2)]), Effect.GOOD_AURA, Color.SKY_BLUE, targetedPlayer, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        #Can't have an else if for deciding the color, only if else so just make a basic check for colorblind mode otherwise use the more complex first/third color
        if redGreenColorblindMode:
            createEffect(targetedPlayer, Effect.GOOD_AURA, Color.YELLOW, updateEveryTick(targetedPlayer.getPosition() + Vector.UP), 0.5 if targetedPlayer.thirdPerson else 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        else:
            createEffect(targetedPlayer, Effect.GOOD_AURA, Color.RED, updateEveryTick(targetedPlayer.getPosition() + Vector.UP), 0.5 if targetedPlayer.thirdPerson else 1, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    if not invisibleBall:
        createEffect(updateEveryTick(targetedPlayer if localPlayer in getAllPlayers() and localPlayer.isAlive() and localPlayer.latencyToggle else []), Effect.GOOD_AURA, Color.YELLOW if redGreenColorblindMode else Color.RED, updateEveryTick(ballPosition + (ballSpeed * normalize(ballDirection) * (localPlayer.latency if ballSpawnCountdown == 0 else 0))), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick(targetedPlayer if localPlayer in getAllPlayers() and (not (localPlayer.isAlive() and localPlayer.latencyToggle)) else []), Effect.GOOD_AURA, Color.YELLOW if redGreenColorblindMode else Color.RED, ballPosition, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick(getAllPlayers().exclude(targetedPlayer) if isPassingTeam1 or isPassingTeam2 else []), Effect.GOOD_AURA, Color.SKY_BLUE, updateEveryTick(ballPosition), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "Create ball & targeted effect - TEAMS":
    @Condition isGameInProgress() == true
    @Condition getCurrentGamemode() == Gamemode.TDM
    
    if not invisibleBall:
        #Team A standard targeting Team B ball
        createEffect(updateEveryTick([player for player in getAllPlayers() if player != targetedPlayer and targetedPlayer.getTeam() != player.getTeam()] if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.ORB, Color.WHITE, updateEveryTick(ballPosition), 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([] if not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle else [player for player in getAllPlayers() if player != targetedPlayer and targetedPlayer.getTeam() != player.getTeam()]), Effect.ORB, Color.WHITE, ballPosition, 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        #Team A standard targeting Team A ball
        createEffect(updateEveryTick([player for player in getAllPlayers() if player != targetedPlayer and targetedPlayer.getTeam() == player.getTeam()] if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.ORB, Color.SKY_BLUE, updateEveryTick(ballPosition), 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([] if not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle else [player for player in getAllPlayers() if player != targetedPlayer and targetedPlayer.getTeam() == player.getTeam()]), Effect.ORB, Color.SKY_BLUE, ballPosition, 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick(targetedPlayer if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.ORB, Color.YELLOW if redGreenColorblindMode else Color.RED, updateEveryTick(ballPosition + (ballSpeed * normalize(ballDirection) * (localPlayer.latency if ballSpawnCountdown == 0 else 0))), 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([] if not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle else targetedPlayer), Effect.ORB, Color.YELLOW if redGreenColorblindMode else Color.RED, ballPosition, 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    if not invisiblePlayers:
        createEffect(getAllPlayers().exclude(targetedPlayer), Effect.GOOD_AURA, Color.YELLOW if redGreenColorblindMode else Color.RED, updateEveryTick(targetedPlayer.getPosition() + Vector.UP), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect([player for player in getAllPlayers() if player != targetedPlayer and (isPassingTeam1 or isPassingTeam2)], Effect.GOOD_AURA, Color.SKY_BLUE, updateEveryTick(targetedPlayer + Vector.UP), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        #Can't have an else if for deciding the color, only if else so just make a basic check for colorblind mode otherwise use the more complex first/third color
        if redGreenColorblindMode:
            createEffect(targetedPlayer, Effect.GOOD_AURA, Color.YELLOW, updateEveryTick(targetedPlayer.getPosition() + Vector.UP), 0.5 if targetedPlayer.thirdPerson else 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        else:
            createEffect(targetedPlayer, Effect.GOOD_AURA, Color.RED, updateEveryTick(targetedPlayer.getPosition() + Vector.UP), 0.5 if targetedPlayer.thirdPerson else 1, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    if not invisibleBall:
        createEffect(updateEveryTick(targetedPlayer if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.GOOD_AURA, Color.YELLOW if redGreenColorblindMode else Color.RED, updateEveryTick(ballPosition + (ballSpeed * normalize(ballDirection) * (localPlayer.latency if ballSpawnCountdown == 0 else 0))), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick([] if not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle else targetedPlayer), Effect.GOOD_AURA, Color.YELLOW if redGreenColorblindMode else Color.RED, ballPosition, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick(getAllPlayers().exclude(targetedPlayer) if (((isPassingTeam1 or isPassingTeam2) and (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" "))))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Effect.GOOD_AURA, Color.SKY_BLUE, updateEveryTick(ballPosition), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        createEffect(updateEveryTick(getAllPlayers().exclude(targetedPlayer) if (isPassingTeam1 or isPassingTeam2) and (not (not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) or localPlayer.isAlive() and localPlayer.latencyToggle)) else []), Effect.GOOD_AURA, Color.SKY_BLUE, ballPosition, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "Ball tail effects":
    @Condition invisibleBall == false
    
    createBeam(updateEveryTick(getAllPlayers() if ((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle else []), Beam.BAD, prevBallPos, [updateEveryTick(i) if distance(localPlayer.getEyePosition(), i) < 17.8 else i for i in ballPosition + ballSpeed * normalize(ballDirection) * localPlayer.latency if targetedPlayer == localPlayer and ballSpawnCountdown == 0 else ballPosition], [Color.SKY_BLUE, Color.YELLOW, ballTail1][ballTailColor], EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    createBeam(updateEveryTick([not (((localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))) and localPlayer.isAlive()) and localPlayer.latencyToggle)]), Beam.BAD, prevBallPos, ballPosition, [Color.SKY_BLUE, Color.YELLOW, ballTail2][ballTailColor], EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    createBeam(getAllPlayers(), Beam.BAD, prevBallPos2, prevBallPos, [Color.SKY_BLUE, Color.YELLOW, ballTail2][ballTailColor], EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)


rule "Spectator effects and HUD":
    hudSubheader(updateEveryTick([not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" "))))]), "Current Player Targeted: {0}".format(targetedPlayer), HudPosition.LEFT, -2, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    createInWorldText(updateEveryTick([ballSpawnCountdown != 0 and (not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" ")))))]), "Ball Spawning In: {0}".format(ceil(ballSpawnCountdown)), vect(circleCenter.x, circleCenter.y + 2.5, circleCenter.z), 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_STRING, Color.SKY_BLUE, SpecVisibility.DEFAULT)
    if ballHero or invisibleBall:
        return
    waitUntil(isGameInProgress(), 99999)
    createEffect(updateEveryTick([not (localPlayer in getAllPlayers() or strContains("$#@{0}".format(localPlayer), "$#@{0} ".format(entityReference.split(" "))))]), Effect.ORB, Color.WHITE, ballPosition, 0.4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "Set time to 0 if teams and game end disabled":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition gameEndEnabled == false
    @Condition isGameInProgress() == true
    
    setMatchTime(0)


rule "Set Time To 0 in Tourney Mode":
    @Condition isGameInProgress() == true
    @Condition tournamentMode != false
    
    setMatchTime(0)


def StartBreak():
    @Name "Tournament Break"
    
    breakInProgress = true
    wait(1)
    ballSpawnCountdown = breakLength
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)
    enableAnnouncer()
    setMatchTime(breakLength)
    bigMessage(getAllPlayers(), "Break Time!")
    chase(getAllPlayers().bouncePadCooldown, 0, rate=2, ChaseReeval.NONE)
    disableScoring()
    #Spawn the stress relief Torbs
    if getCurrentGamemode() == Gamemode.FFA:
        createDummy(Hero.TORBJORN, Team.ALL, 15, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
        createDummy(Hero.TORBJORN, Team.ALL, 16, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
        createDummy(Hero.TORBJORN, Team.ALL, 17, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
    elif getCurrentGamemode() == Gamemode.TDM:
        createDummy(Hero.TORBJORN, Team.1, 15, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
        createDummy(Hero.TORBJORN, Team.1, 16, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
        createDummy(Hero.TORBJORN, Team.2, 17, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
        createDummy(Hero.TORBJORN, Team.2, 18, circleCenter + vect(random.randint(-10, 10), 8, random.randint(-10, 10)), vect(0, 0, 0))
    stressTorbs = getPlayersOnHero(Hero.TORBJORN, Team.ALL).exclude(ballPlayer)
    stressTorbs.startForcingName("Stress Relief Torb")
    getAllPlayers().setPrimaryFireEnabled(true)
    getAllPlayers().setSecondaryFireEnabled(true)
    wait(1)
    bigMessage(getAllPlayers(), "Weapons activated")
    wait(2)
    smallMessage(getAllPlayers(), "Press {0} to pick up a torb".format(buttonString(Button.RELOAD)))
    wait(2)
    smallMessage(getAllPlayers(), "Press {0} again to yeet them!".format(buttonString(Button.RELOAD)))
    waitUntil(ballSpawnCountdown <= 10, 9999)
    breakInProgress = false
    if getCurrentGamemode() == Gamemode.FFA:
        destroyDummy(Team.ALL, stressTorbs[0].getSlot())
        destroyDummy(Team.ALL, stressTorbs[1].getSlot())
        destroyDummy(Team.ALL, stressTorbs[2].getSlot())
    elif getCurrentGamemode() == Gamemode.TDM:
        destroyDummy(Team.1, stressTorbs[0].getSlot())
        destroyDummy(Team.1, stressTorbs[1].getSlot())
        destroyDummy(Team.2, stressTorbs[2].getSlot())
        destroyDummy(Team.2, stressTorbs[3].getSlot())
    getAllPlayers().setPrimaryFireEnabled(false)
    getAllPlayers().setSecondaryFireEnabled(false)
    disableAnnouncer()


rule "Stress relief Torbs join":
    @Event eachPlayer
    @Condition tournamentMode != false
    @Condition eventPlayer in stressTorbs == true
    
    wait(0.5)
    eventPlayer.enableRespawn()
    eventPlayer.setRespawnTime(5)
    eventPlayer.clearStatusEffect(Status.INVINCIBLE)
    eventPlayer.setStatusEffect(null, Status.UNKILLABLE, 9999)
    #eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted([player for player in getLivingPlayers(Team.ALL) if player.getCurrentHero() == playerHero]).getEyePosition()), 200, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(getPlayersOnHero(playerHero, Team.ALL), lambda player: distance(eventPlayer, player))[0].getEyePosition()), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(random.uniform(1, 2))
    eventPlayer.communicate(Comms.NO)


rule "Torb must die":
    @Event eachPlayer
    @Hero torbjorn
    @Condition eventPlayer.getHealth() == 1
    
    if random.randint(1, 4) == 1:
        if random.randint(0, 1):
            if true:
                goto loc+[4, 0, 2][1 + [1, 2].index(random.randint(1, 2))]
                eventPlayer.applyImpulse(Vector.UP, 75, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
            else:
                eventPlayer.applyImpulse(directionTowards(eventPlayer.getEyePosition(), vect(circleCenter.x, circleCenter.y + 4, circleCenter.z)), 75, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
            else:
        eventPlayer.communicate(Comms.GOODBYE)
        wait(random.uniform(0.016, 0.5))
    else:
        wait()
    eventPlayer.detach()
    eventPlayer.clearStatusEffect(Status.UNKILLABLE)
    kill(eventPlayer, null)
    eventPlayer.setStatusEffect(null, Status.UNKILLABLE, 9999)
    waitUntil(eventPlayer.isAlive(), 9999)
    eventPlayer.teleport(vect(random.randint(-10, 10), 8, random.randint(-10, 10)))
    wait(0.25)
    eventPlayer.communicate(Comms.HELLO)


rule "Yeet Stress relief Torb":
    @Event eachPlayer
    @Condition breakInProgress != false
    @Condition (distance(eventPlayer, ((sorted([player for player in getPlayersOnHero(Hero.TORBJORN, Team.ALL) if player in stressTorbs and player.isAlive()], lambda i: distance(eventPlayer, i)))[0]).getPosition())) <= 2
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    
    eventPlayer.yeetPlayer = (sorted([player for player in getPlayersOnHero(Hero.TORBJORN, Team.ALL) if player in stressTorbs and player.isAlive()], lambda i: distance(eventPlayer, i)))[0]
    eventPlayer.yeetPlayer.attachTo(eventPlayer, vect(0, 0.5, 1))
    eventPlayer.yeetPlayer.communicate(Comms.HELLO)
    wait(0.5)
    waitUntil(eventPlayer.isHoldingButton(Button.RELOAD) or not breakInProgress, 9999)
    eventPlayer.yeetPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 4)
    eventPlayer.yeetPlayer.detach()
    eventPlayer.yeetPlayer.applyImpulse(directionTowards(eventPlayer.getPosition(), eventPlayer.getEyePosition() + eventPlayer.getFacingDirection() * 20), 25, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    wait(1)
    eventPlayer.yeetPlayer = null


rule "Get knocked do﻿wn by yeeted Torb":
    @Event eachPlayer
    @Condition breakInProgress != false
    #Only knock the player down if the stress torb is in the air (hopefully only when getting yeeted)
    @Condition (((sorted([player for player in getPlayersOnHero(Hero.TORBJORN, Team.ALL) if player in stressTorbs and player.isAlive()], lambda i: distance(eventPlayer.getEyePosition(), i)))[0]).isInAir()) == true
    @Condition (((sorted([player for player in getPlayersOnHero(Hero.TORBJORN, Team.ALL) if player in stressTorbs and player.isAlive()], lambda i: distance(eventPlayer.getEyePosition(), i)))[0]).hasStatusEffect(Status.KNOCKED_DOWN)) == true
    #Chceck for the nearest stress torb
    @Condition (distance(eventPlayer, ((sorted([player for player in getPlayersOnHero(Hero.TORBJORN, Team.ALL) if player in stressTorbs and player.isAlive()], lambda i: distance(eventPlayer.getEyePosition(), i)))[0]).getPosition())) <= 1.5
    @Condition ((sorted([player for player in getPlayersOnHero(Hero.TORBJORN, Team.ALL) if player in stressTorbs and player.isAlive()], lambda i: distance(eventPlayer.getEyePosition(), i)))[0]) != eventPlayer.yeetPlayer
    
    eventPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 1.5)


rule "Enable Scoreboard":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.toggleHUD == true
    
    eventPlayer.disableGamemodeHud()
    waitUntil(not eventPlayer.isHoldingButton(Button.INTERACT), 10)
    eventPlayer.toggleHUD = false


rule "Disable Scoreboard":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.toggleHUD == false
    
    eventPlayer.enableGamemodeHud()
    waitUntil(not eventPlayer.isHoldingButton(Button.INTERACT), 10)
    eventPlayer.toggleHUD = true


rule "Create hero ball":
    @Condition ballHero != null
    
    #getAllPlayers().startFacing(directionTowards([getAllPlayers() player in player], getPlayersOnHero(ballHero)), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    createDummy(ballHero, Team.ALL, 14, circleCenter, vect(0, 0, 0))
    waitUntil(hostPlayer.hasSpawned(), 9999)
    getPlayersOnHero(ballHero, Team.ALL).startFacing(directionTowards(getPlayersOnHero(ballHero, Team.ALL).getEyePosition(), hostPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    ballPlayer = getPlayersOnHero(ballHero, Team.ALL)[0]
    if ballHero == Hero.TORBJORN:
        if true:
            goto loc+[42, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40][1 + [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21].index(random.randint(1, 21))]
            startingText = "People always underestimate the engineers!"
        else:
            startingText = "I'm giving it all I've got!"
        else:
            startingText = "I'd rather be the hammer, than the nail."
        else:
            startingText = "My baby!"
        else:
            startingText = "Build 'em up, break 'em down!"
        else:
            startingText = "Heh, time to roll up my sleeves!"
        else:
            startingText = "Time to get my hands dirty."
        else:
            startingText = "Torbjörn! Ready to work!"
        else:
            startingText = "You're making a chicken out of a feather."
        else:
            startingText = "Du gör en höna av en fjäder."
        else:
            startingText = "Fastna inte med skägget i brevlådan."
        else:
            startingText = "Köp inte grisen i säcken."
        else:
            startingText = "De är som en katt som går runt het gröt!"
        else:
            startingText = "Too hot for you?"
        else:
            startingText = "Bingo!"
        else:
            startingText = "For the last time, I'm Swedish!"
        else:
            startingText = "Ha ha! There's more where that came from."
        else:
            startingText = "Tehh... Poor craftsmen blames their tools..."
        else:
            startingText = "Just start hammering."
        else:
            startingText = "I smell trouble brewing"
        else:
            startingText = "There's no prize for coming in second"
        else:
    else:
        startingText = "Wait... I'm " + ballHero + "? What did you do " + hostPlayer + "?"
    createInWorldText(getAllPlayers(), startingText, ballPlayer.getEyePosition() + vect(0, 0.5, 0), 5, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.ALWAYS)
    ballHeroRegretText = getLastCreatedText()


rule "Init hero ball":
    @Condition ballHero != false
    @Condition isGameInProgress() == true
    
    destroyInWorldText(ballHeroRegretText)
    ballPlayer.stopFacing()
    ballPlayer.setGravity(0)
    ballPlayer.disablePlayerCollision()
    #ballPlayer.startForcingPosition(updateEveryTick(ballPosition) + vect(0, -1, 0) , true)
    wait(0.5)
    ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


rule "Teleport hero ball":
    @Condition ballHero != false
    @Condition isGameInProgress() == true
    @Condition ballPlayerMock == false
    
    ballPlayer.teleport(ballPosition - vect(0, 1, 0))
    wait(0.001)
    if RULE_CONDITION:
        goto RULE_START


rule "Don't move while ball isn't in play":
    @Condition ballHero != false
    @Condition isGameInProgress() == true
    @Condition ballPlayerMock != false
    
    ballPlayer.setGravity(100)
    waitUntil(not ballPlayerMock, 9999)
    if not ballPlayer.hasStatusEffect(Status.FROZEN):
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    ballPlayer.setGravity(0)


rule "Set hero ball outline":
    @Condition ballHero != false
    @Condition isGameInProgress() == true
    
    ballPlayer.startForcingOutlineFor(getAllPlayers().exclude(targetedPlayer), true, Color.WHITE, OutlineVisibility.DEFAULT)
    ballPlayer.startForcingOutlineFor([player for player in getAllPlayers() if player == targetedPlayer], true, Color.RED, OutlineVisibility.DEFAULT)
    wait(0.1)
    goto RULE_START


rule "Don't look around while frozen":
    @Condition ballHero != false
    @Condition isGameInProgress() == true
    @Condition ballPlayer.hasStatusEffect(Status.FROZEN) == true
    
    ballPlayer.stopFacing()


rule "Hero ball do funny thing":
    @Condition ballHero != false
    @Condition ballPlayerMock == true
    
    if random.randint(0, 100) <= 80:
        if random.randint(0, 1):
            ballPlayer.communicate(Comms.SORRY)
        else:
            ballPlayer.communicate(Comms.YOURE_WELCOME)
    if wasFinalDuel or getNumberOfHeroes(playerHero, Team.ALL) <= 2:
        wasFinalDuel = false
        if not ballPlayer.hasStatusEffect(Status.FROZEN):
            LongFun()
    elif not isInFinalDuel:
        if not ballPlayer.hasStatusEffect(Status.FROZEN):
            ShortFun()
    else:
        wasFinalDuel = true
        ballPlayer.applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.teleport(circleCenter + vect(0, 5, 0))
        if not ballPlayer.hasStatusEffect(Status.FROZEN):
            ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    waitUntil(not ballPlayerMock, 9999)
    #do a funny thing maybe.
    ballHeroRandom = random.randint(0, 100)
    if ballHeroRandom <= 3:
        ballPlayer.setStatusEffect(null, Status.FROZEN, random.randint(10, 60))
    elif ballHeroRandom >= 5 and ballHeroRandom <= 8:
        ballPlayer.setStatusEffect(null, Status.BURNING, random.randint(10, 60))
    elif ballHeroRandom >= 10 and ballHeroRandom <= 13:
        ballPlayer.setStatusEffect(null, Status.HACKED, random.randint(10, 30))
    if random.randint(0, 100) <= 10:
        ballPlayer.communicate(Comms.HELLO)
    if random.randint(0, 100) <= 5:
        ballPlayer.forceButtonPress(Button.ABILITY_2)
    if random.randint(0, 100) <= 5:
        ballPlayer.startModifyingVoicelinePitch(random.uniform(0, 2), false)
    else:
        ballPlayer.startModifyingVoicelinePitch(1, false)


def LongFun():
    @Name "Hero ball do a long super fun thing"
    
    ballHeroRandom = random.randint(0, 100)
    #Have an 8.3% chance of doing a fun thing for each player, up to 45%, minus torb
    if random.randint(0, 100) >= min(getNumberOfPlayers(Team.ALL) * 9.5 - 9.5, 60):
        return
    if true:
        goto loc+[171, 0, 11, 21, 27, 39, 58, 74, 97, 115, 142, 159][1 + [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].index(random.randint(1, 11))]
        #I think this one is easily my favorite.
        ballPlayer.setFacing(vect(0, 0, 0), Relativity.TO_PLAYER)
        ballPlayer.startFacing(ballPlayer.getFacingDirection() + Vector.LEFT, 1000, Relativity.TO_PLAYER, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(1.5)
        createInWorldText(getAllPlayers(), "Torbcopter, ready for takeoff.", ballPlayer.getPosition(), 2, Clip.SURFACES, WorldTextReeval.VISIBILITY, Color.ORANGE, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        while ballPlayerMock:
            ballPlayer.applyImpulse(Vector.UP, 5.5, Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
            waitUntil(not ballPlayerMock, 0.25)
        destroyInWorldText(ballHeroRegretText)
    else:
        #Hammer their dead body
        wait(0.5)
        ballPlayer.communicate(Comms.NO)
        ballPlayer.setWeapon(2)
        ballPlayer.forceButtonPress(Button.ABILITY_1)
        ballPlayer.startForcingButton(Button.PRIMARY_FIRE)
        waitUntil(not ballPlayerMock, 9999)
        ballPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        ballPlayer.setWeapon(random.randint(0, 1))
        ballPlayer.forceButtonPress(Button.INTERACT)
    else:
        #That was so boring that Torb is going to take a nap
        ballPlayer.setStatusEffect(null, Status.ASLEEP, 9999)
        wait(0.5)
        ballPlayer.communicate(Comms.GOODBYE)
        waitUntil(not ballPlayerMock, 9999)
        ballPlayer.clearStatusEffect(Status.ASLEEP)
    else:
        wait(2.25)
        ballPlayer.setGravity(0)
        ballPlayer.startForcingPosition(targetedPlayer.getEyePosition() + vect(0, 1, 0), true)
        ballPlayer.setFacing(vect(0, -1, 0), Relativity.TO_PLAYER)
        createInWorldText(getAllPlayers(), "{0} is next, don't tell them :)".format(targetedPlayer), ballPlayer.getEyePosition() + vect(0, 0.5, 0), 3, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.ORANGE, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        wait(0.5)
        ballPlayer.communicate(Comms.HELLO)
        waitUntil(not ballPlayerMock, 9999)
        destroyInWorldText(ballHeroRegretText)
        ballPlayer.stopForcingPosition()
    else:
        ballPlayer.setUltCharge(100)
        ballPlayer.startForcingButton(Button.ULTIMATE)
        ballPlayer.setGravity(0)
        ballPlayer.applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.teleport(circleCenter + vect(0, 5, 0))
        wait(1)
        while ballPlayer.isUsingUltimate() and ballPlayerMock:
            ballPlayer.setFacing(directionTowards(ballPlayer.getEyePosition(), vect(random.uniform(-20, 20), random.uniform(0, 5), random.uniform(-20, 20))), Relativity.TO_WORLD)
            wait(0.05)
            ballPlayer.stopForcingButton(Button.ULTIMATE)
            ballPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        ballPlayer.startFacing(ballPlayer.getFacingDirection() + Vector.LEFT, 500, Relativity.TO_PLAYER, FacingReeval.DIRECTION_AND_TURN_RATE)
    else:
        #Torb got a case of the zoomies.
        ballPlayer.setMoveSpeed(500)
        ballHeroRandom = vect(random.uniform(-18, 18), 1, random.uniform(-18, 18))
        ballPlayer.startThrottleInDirection(directionTowards(ballPlayer.getPosition(), ballHeroRandom), 1, Relativity.TO_WORLD, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), ballHeroRandom), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        createInWorldText(getAllPlayers(), "Zip zoom", updateEveryTick(ballPlayer.getEyePosition()) + vect(0, 1, 0), 2, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        while ballPlayerMock:
            if distance(ballPlayer.getPosition(), ballHeroRandom) < 2:
                ballHeroRandom = vect(random.uniform(-18, 18), 1, random.uniform(-18, 18))
            wait(0.1)
        destroyInWorldText(ballHeroRegretText)
        ballPlayer.stopThrottleInDirection()
        ballPlayer.setMoveSpeed(100)
    else:
        #nice
        if ballHeroRandom == 69:
            #HYPER TBAG!
            ballPlayer.setWeapon(2)
            while ballPlayerMock == true:
                ballPlayer.communicate(Comms.YES)
                wait(0.05)
                ballPlayer.startForcingButton(Button.CROUCH)
                wait(0.05)
                ballPlayer.stopForcingButton(Button.CROUCH)
        else:
            #Tbag them
            ballPlayer.communicate(Comms.YES)
            ballPlayer.setWeapon(2)
            ballPlayer.startForcingButton(Button.PRIMARY_FIRE)
            while ballPlayerMock == true:
                wait(0.1)
                ballPlayer.startForcingButton(Button.CROUCH)
                wait(0.1)
                ballPlayer.stopForcingButton(Button.CROUCH)
            ballPlayer.stopForcingButton(Button.PRIMARY_FIRE)
            ballPlayer.setWeapon(random.randint(0, 1))
    else:
        #Torb thinks one Genji in specific is broken.
        wait(1)
        ballHeroRandom = random.choice(getPlayersOnHero(playerHero, Team.ALL))
        ballPlayer.enablePlayerCollision()
        ballPlayer.setMoveSpeed(150)
        ballPlayer.startThrottleInDirection(directionTowards(ballPlayer.getPosition(), ballHeroRandom.getPosition()), 1, Relativity.TO_WORLD, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), ballHeroRandom.getEyePosition()), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        ballPlayer.setWeapon(2)
        ballPlayer.startForcingButton(Button.PRIMARY_FIRE)
        createInWorldText(getAllPlayers(), "Come here {0}, I'll fix you right up!".format(ballHeroRandom), ballPlayer.getEyePosition() + vect(0, 1, 0), 2, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        waitUntil(not ballPlayerMock, 9999)
        ballPlayer.disablePlayerCollision()
        ballPlayer.stopThrottleInDirection()
        ballPlayer.setMoveSpeed(100)
        ballPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        ballPlayer.setWeapon(random.randint(0, 1))
        destroyInWorldText(ballHeroRegretText)
    else:
        ballPlayer.applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.teleport(circleCenter + vect(0, 5, 0))
        ballPlayer.stopFacing()
        ballHeroRandom = 0
        chase(ballHeroRandom, 2, duration=7.5, ChaseReeval.NONE)
        #Pretty sure this variable literally does nothing, I added this when I started develpoment and couldn't even get it to work...
        ballPlayer.currentUltPercent = 4
        chase(ballPlayer.currentUltPercent, 0, duration=7.5, ChaseReeval.NONE)
        ballHeroRegretText = 0.75
        ballPlayer.startScalingSize(ballPlayer.currentUltPercent, true)
        ballPlayer.startModifyingVoicelinePitch(ballHeroRandom, true)
        ballHeroRegretText = 0.75
        chase(ballHeroRegretText, 0.05, duration=15, ChaseReeval.NONE)
        while ballPlayerMock:
            ballPlayer.setFacing(directionTowards(ballPlayer.getEyePosition(), random.choice(getPlayersOnHero(playerHero, Team.ALL)).getEyePosition()), Relativity.TO_WORLD)
            ballPlayer.communicate(Comms.HELLO)
            waitUntil(not ballPlayerMock, ballHeroRegretText)
        ballPlayer.startScalingSize(1, false)
        stopChasingVariable(ballHeroRandom)
        stopChasingVariable(ballHeroRegretText)
        stopChasingVariable(ballPlayer.currentUltPercent)
    else:
        #Get the chance to let your anger out and yeet torb.
        wait(0.25)
        ballHeroRandom = targetedPlayer
        ballPlayer.communicate(Comms.NO)
        ballPlayer.setGravity(0)
        ballPlayer.startForcingPosition(updateEveryTick(ballHeroRandom.getEyePosition()) + vect(0, -1.1, 0) + ballHeroRandom.getFacingDirection() * 2, true)
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), ballHeroRandom.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        createInWorldText(ballHeroRandom, "Press reload to yeet {0}".format(ballHero), updateEveryTick(ballHeroRandom.getEyePosition()) + vect(0, -0.06, 0) + ballHeroRandom.getFacingDirection() * 0.5, 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.ALWAYS)
        waitUntil(ballHeroRandom.isHoldingButton(Button.RELOAD) or not ballPlayerMock, 5)
        ballPlayer.setGravity(100)
        destroyInWorldText(getLastCreatedText())
        ballPlayer.stopForcingPosition()
        ballPlayer.stopFacing()
        ballPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 9999)
        ballPlayer.applyImpulse(directionTowards(ballPlayer.getPosition(), ballHeroRandom.getEyePosition() + ballHeroRandom.getFacingDirection() * 20), 75, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        waitUntil(not ballPlayerMock, 4)
        ballPlayer.clearStatusEffect(Status.KNOCKED_DOWN)
    else:
        wait()
        ballPlayer.setGravity(100)
        ballPlayer.applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.teleport(circleCenter + vect(0, 5, 0))
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        ballPlayer.communicate(Comms.HELLO)
    else:


def ShortFun():
    @Name "Hero ball do a quick fun thing"
    
    #Only have a 45% chance of doing a fun thing
    if random.randint(1, 100) > 45:
        return
    ballHeroRandom = random.randint(0, 100)
    if true:
        goto loc+[123, 0, 24, 33, 39, 46, 58, 61, 72, 86, 96, 106][1 + [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].index(random.randint(1, 11))]
        #nice
        if ballHeroRandom == 69:
            ballSpawnCountdown = 5
            #HYPER TBAG!
            ballPlayer.setWeapon(2)
            while ballPlayerMock == true:
                ballPlayer.communicate(Comms.YES)
                wait(0.05)
                ballPlayer.startForcingButton(Button.CROUCH)
                wait(0.05)
                ballPlayer.stopForcingButton(Button.CROUCH)
        else:
            #Tbag them
            ballPlayer.communicate(Comms.YES)
            ballPlayer.setWeapon(2)
            ballPlayer.startForcingButton(Button.PRIMARY_FIRE)
            while ballPlayerMock == true:
                wait(0.1)
                ballPlayer.startForcingButton(Button.CROUCH)
                wait(0.1)
                ballPlayer.stopForcingButton(Button.CROUCH)
            ballPlayer.stopForcingButton(Button.PRIMARY_FIRE)
            ballPlayer.setWeapon(random.randint(0, 1))
    else:
        #Hammer their dead body
        wait(0.5)
        ballPlayer.communicate(Comms.NO)
        ballPlayer.setWeapon(2)
        ballPlayer.startForcingButton(Button.PRIMARY_FIRE)
        waitUntil(not ballPlayerMock, 9999)
        ballPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        ballPlayer.setWeapon(random.randint(0, 1))
        ballPlayer.forceButtonPress(Button.INTERACT)
    else:
        #That was so boring Torb is going to take a nap
        ballPlayer.setStatusEffect(null, Status.ASLEEP, 9999)
        wait(0.5)
        ballPlayer.communicate(Comms.GOODBYE)
        waitUntil(not ballPlayerMock, 9999)
        ballPlayer.clearStatusEffect(Status.ASLEEP)
    else:
        #Torb is not joking around.
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        waitUntil(targetedPlayer != "-1", 9999)
        createInWorldText(getAllPlayers(), "You're next, {0}.".format(targetedPlayer), ballPlayer.getEyePosition() + vect(0, 0.5, 0), 3, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.RED, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        waitUntil(not ballPlayerMock, 9999)
        destroyInWorldText(ballHeroRegretText)
    else:
        waitUntil(targetedPlayer != "-1", 10)
        ballPlayer.setGravity(0)
        ballPlayer.startForcingPosition(targetedPlayer.getEyePosition() + vect(0, 1, 0), true)
        ballPlayer.setFacing(vect(0, -1, 0), Relativity.TO_PLAYER)
        createInWorldText(getAllPlayers(), "{0} is next, don't tell them :)".format(targetedPlayer), ballPlayer.getEyePosition() + vect(0, 0.5, 0), 3, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.SKY_BLUE, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        wait(0.5)
        ballPlayer.communicate(Comms.HELLO)
        waitUntil(not ballPlayerMock, 9999)
        destroyInWorldText(ballHeroRegretText)
        ballPlayer.stopForcingPosition()
    else:
        #SPEEN
        ballPlayer.setFacing(vect(0, 0, 0), Relativity.TO_PLAYER)
        ballPlayer.startFacing(ballPlayer.getFacingDirection() + Vector.LEFT, 500, Relativity.TO_PLAYER, FacingReeval.DIRECTION_AND_TURN_RATE)
    else:
        #To the person who keeps telling me to remove the center orb.
        ballPlayer.startForcingPosition(circleCenter + (vect(random.uniform(-1 * centerOffLimitsSize + 0.75, centerOffLimitsSize - 0.75), -1 * circleCenter.y, random.uniform(-1 * centerOffLimitsSize + 1, centerOffLimitsSize - 1))), true)
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait()
        createInWorldText(getAllPlayers(), "Jealous that I can be in here and you can't? :)", ballPlayer.getEyePosition() + vect(0, 0.5, 0), 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY, Color.ORANGE, SpecVisibility.ALWAYS)
        ballHeroRegretText = getLastCreatedText()
        wait(0.5)
        ballPlayer.communicate(Comms.HELLO)
        waitUntil(not ballPlayerMock, 9999)
        destroyInWorldText(ballHeroRegretText)
        ballPlayer.stopForcingPosition()
    else:
        wait()
        ballHeroRandom = ballPlayer.getPosition()
        chase(ballHeroRandom, targetedPlayer.getEyePosition(), rate=20, ChaseReeval.DESTINATION_AND_RATE)
        createEffect(getAllPlayers(), Effect.ORB, Color.RED, ballHeroRandom, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        ballHeroRegretText = getLastCreatedEntity()
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        createInWorldText(getAllPlayers(), "Think fast!", ballHeroRandom + vect(0, 0.5, 0), 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.ALWAYS)
        waitUntil(distance(ballHeroRandom, targetedPlayer.getEyePosition()) < 1.9 or not ballPlayerMock, 9999)
        playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.SKY_BLUE, ballHeroRandom, 40)
        playEffect(getAllPlayers(), DynamicEffect.GOOD_EXPLOSION, Color.WHITE, ballHeroRandom, 2)
        destroyEffect(ballHeroRegretText)
        destroyInWorldText(getLastCreatedText())
        stopChasingVariable(ballHeroRandom)
    else:
        #Torb horror game.
        wait()
        ballHeroRandom = random.choice([player for player in getLivingPlayers(Team.ALL) if player.getCurrentHero() != ballHero])
        ballPlayer.setGravity(0)
        ballPlayer.startForcingPosition(updateEveryTick(ballHeroRandom.getEyePosition()) + vect(0, -1.1, 0) + ballHeroRandom.getFacingDirection() * 0.75, true)
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), ballHeroRandom.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        createInWorldText(getAllPlayers(), "Boo!", ballPlayer.getEyePosition() + vect(0, 0.5, 0), 2.5, Clip.SURFACES, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.ALWAYS)
        waitUntil(not ballPlayerMock, 9999)
        ballPlayer.stopForcingPosition()
        destroyInWorldText(getLastCreatedText())
    else:
        ballPlayer.applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        ballPlayer.teleport(circleCenter + vect(0, 5, 0))
        ballPlayer.startFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getEyePosition()), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        ballPlayer.communicate(Comms.HELLO)
    else:
        wait()
        ballHeroRandom = 1
        ballHeroRegretText = 1
        ballPlayer.startScalingSize(ballHeroRandom, true)
        ballPlayer.startModifyingVoicelinePitch(ballHeroRegretText, true)
        chase(ballHeroRandom, 0, duration=1.5, ChaseReeval.NONE)
        chase(ballHeroRegretText, 2, duration=1, ChaseReeval.NONE)
        ballPlayer.communicate(Comms.GOODBYE)
        wait(1.5)
        ballPlayer.setInvisibility(Invis.ALL)
        waitUntil(not ballPlayerMock, 9999)
        stopChasingVariable(ballHeroRandom)
        stopChasingVariable(ballHeroRegretText)
        ballPlayer.setInvisibility(Invis.NONE)
        ballPlayer.stopScalingSize()
        ballPlayer.stopModifyingVoicelinePitch()
    else:


rule "// Not enough players testing":
    if not watermarkEnabled:
        goto lbl_0
    hudSubheader(getAllPlayers(), "Original by {0}. Version 7.9.0".format(name), HudPosition.LEFT, -1000, Color.AQUA, HudReeval.VISIBILITY, SpecVisibility.ALWAYS)
    lbl_0:


rule "Check for <2 players":
    @Condition getCurrentGamemode() == Gamemode.FFA
    @Condition isGameInProgress() == true
    @Condition getNumberOfHeroes(playerHero, Team.ALL) == 1
    
    isInFinalDuel = false
    hudHeader(getAllPlayers(), "Waiting for more players", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    waitingForPlayersHUD = getLastCreatedText()
    isEnoughPlayersToStart = false
    stopChasingVariable(ballSpawnCountdown)
    if roundInProgress == false:
        goto lbl_0
    ballDeleteRequested = true
    lbl_0:
    roundInProgress = false
    ballPlayerMock = false
    pauseMatchTime()


rule "Check for <2 players - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition isGameInProgress() == true
    #@Condition getNumberOfHeroes(playerHero, Team.ALL) == 1
    @Condition (getNumberOfPlayers(Team.1) and getNumberOfPlayers(Team.2)) == false
    
    isInFinalDuel = false
    hudHeader(getAllPlayers(), "Waiting for more players", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    waitingForPlayersHUD = getLastCreatedText()
    isEnoughPlayersToStart = false
    stopChasingVariable(ballSpawnCountdown)
    if roundInProgress == false:
        goto lbl_0
    ballDeleteRequested = true
    lbl_0:
    roundInProgress = false
    pauseMatchTime()


rule "Wait for more players":
    @Condition getCurrentGamemode() == Gamemode.FFA
    @Condition getNumberOfHeroes(playerHero, Team.ALL) > 1
    @Condition isEnoughPlayersToStart == false
    
    destroyHudText(waitingForPlayersHUD)
    bigMessage(getAllPlayers(), "Starting game in 5 seconds!")
    wait(5.5)
    if getNumberOfHeroes(playerHero, Team.ALL) < 2:
        return
    unpauseMatchTime()
    isEnoughPlayersToStart = true
    targetedPlayer = -1
    previousTargetedPlayer = -1


rule "Wait for more players - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition getNumberOfPlayers(Team.1) != false
    @Condition getNumberOfPlayers(Team.2) != false
    @Condition isEnoughPlayersToStart == false
    
    destroyHudText(waitingForPlayersHUD)
    bigMessage(getAllPlayers(), "Starting game in 5 seconds!")
    wait(5.5)
    if getNumberOfHeroes(playerHero, Team.ALL) < 2:
        return
    unpauseMatchTime()
    isEnoughPlayersToStart = true
    targetedPlayer = -1
    previousTargetedPlayer = -1


rule "Shorten Deflect Length":
    @Event eachPlayer
    @Condition eventPlayer.isUsingAbility2() == true
    @Condition eventPlayer.isUsingUltimate() == false
    
    wait(0.3)
    eventPlayer.setAbility2Enabled(false)
    eventPlayer.setAbility1Enabled(false)
    wait(0.5)
    eventPlayer.setAbility2Enabled(true)
    eventPlayer.setAbility1Enabled(true)


rule "Unlock dash after using jumppad":
    @Event eachPlayer
    @Condition bouncepadDashingEnabled == true
    @Condition eventPlayer.isDashEnabled == true
    
    eventPlayer.setAbility1Enabled(true)


rule "Disable dash after using":
    @Event eachPlayer
    @Condition bouncepadDashingEnabled == true
    @Condition eventPlayer.isUsingAbility1() == true
    
    eventPlayer.setAbility1Enabled(false)
    eventPlayer.isDashEnabled = false


rule "Target random player":
    @Condition isGameInProgress() == true
    @Condition targetedPlayer == -1
    
    wait()
    targetedPlayer = random.choice([player for player in getLivingPlayers(Team.ALL) if player.hasMoved and player != ballPlayer])


rule "Push to circle":
    @Event eachPlayer
    @Condition distance(eventPlayer.getPosition(), vect(circleCenter.x, eventPlayer.getPosition().y, circleCenter.z)) > sphereSize - 1.5
    #Workshop Island Fix
    @Condition __currentMap___ != Map.WORKSHOP_ISLAND
    @Condition __currentMap___ != 196
    
    if distance(eventPlayer.getPosition(), vect(circleCenter.x, eventPlayer.getPosition().y, circleCenter.z)) > sphereSize - 1.5 + 2:
        eventPlayer.applyImpulse(vect(directionTowards(eventPlayer.getPosition(), circleCenter).x, 0, directionTowards(eventPlayer.getPosition(), circleCenter).z), 25, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        eventPlayer.applyImpulse(vect(directionTowards(eventPlayer.getPosition(), circleCenter).x, 0, directionTowards(eventPlayer.getPosition(), circleCenter).z), 6, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    if eventPlayer.isOnGround():
        eventPlayer.applyImpulse(Vector.UP, 3, Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START


rule "Put out center":
    @Event eachPlayer
    @Condition distance(eventPlayer.getPosition(), circleCenter) < centerOffLimitsSize + 0.5
    
    eventPlayer.applyImpulse(directionTowards(circleCenter, eventPlayer), 10, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION_XYZ)
    eventPlayer.applyImpulse(Vector.UP, 1.5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION_XYZ)
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START


rule "Player dashes too far out of bounds":
    @Event eachPlayer
    @Condition distance(eventPlayer.getPosition(), vect(circleCenter.x, eventPlayer.getPosition().y, circleCenter.z)) > sphereSize + 1
    @Condition eventPlayer != ballPlayer
    #No need for a knockdown in Workshop Expanse.
    @Condition (__currentMap___ == Map.WORKSHOP_EXPANSE or __currentMap___ == 96) == false
    
    #Workshop Island Fix
    #@Condition (getCurrentMap() != Map.WORKSHOP_ISLAND and getCurrentMap() != Map.WORKSHOP_ISLAND_NIGHT) == true
    eventPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 2.5)
    #eventPlayer.teleport(circleCenter + vect(random.randint(-15, 15), 8, random.randint(-15, 15)))
    eventPlayer.applyImpulse(vect(directionTowards(eventPlayer.getPosition(), circleCenter).x, 0, directionTowards(eventPlayer.getPosition(), circleCenter).z), 20, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.applyImpulse(Vector.UP, 3, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    bigMessage(eventPlayer, "Do not dash out of the arena!")


rule "Player tries to abuse ledge on Workshop Island (push up and to center)":
    @Event eachPlayer
    @Condition eventPlayer in stressTorbs == false
    @Condition eventPlayer.getPosition().y < -0.5
    @Condition eventPlayer != ballPlayer
    #Workshop Island Fix
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    #Prevents people from going under the ledge on Workshop Island, which caused ball to go into floor.  Used to be an annoying stunkill
    eventPlayer.applyImpulse(Vector.UP, 2, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.applyImpulse(directionTowards(eventPlayer, circleCenter), 2, Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(0.008)
    if RULE_CONDITION:
        goto RULE_START


rule "Player falls off Workshop Island":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == false
    #This rule might no longer be needed...but I'll be dammed if I ever get rid of this rule.
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    #Ayy nevermind on that last comment it back baby
    @Condition eventPlayer.getPosition().y < -1.5
    
    waitUntil(eventPlayer.getPosition().y >= 1.5, 5)
    if not RULE_CONDITION:
        return
    smallMessage(getAllPlayers(), "{0} has glitched themselves under the map!".format(eventPlayer))
    if tournamentMode:
        hudSubtext(hostPlayer, "{0} has undermapped themself".format(eventPlayer), HudPosition.RIGHT, -1, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.ALWAYS)
    kill(eventPlayer, null)
    #A MAN HAS FALLEN INTO THE LAKE IN WORKSHOP ISLAND! START THE NEW RESCUE RULE! HEY! BUILD THE NEW WORSHOP RULE, AND OFF TO THE RESCUE! PREPARE THE CONDITION, TELEPORT THE PLAYER, AND MAKE THE RESCUE! THE NEW 2.3.0 UPDATE FROM OVERWATCH WORKSHOP!
    eventPlayer.teleport(circleCenter + vect(random.randint(-10, 10), 0, random.randint(-10, 10)))
    if eventPlayer == targetedPlayer:
        if ballIsOut:
            ballDeleteRequested = true


rule "Anti-Bounce Detection Positive X":
    @Event eachPlayer
    @Condition eventPlayer.getPosition().y < 0
    @Condition eventPlayer.getPosition().x > 20.5
    #Workshop Island Fix
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    eventPlayer.startForcingThrottle(0, 0, 0, 0, 0, 0)
    #Busted!
    eventPlayer.antiFloatProtection = true
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START


rule "Anti-Bounce Detection Netgative X":
    @Event eachPlayer
    @Condition eventPlayer.getPosition().y < 0
    @Condition eventPlayer.getPosition().x < -20.5
    #Workshop Island Fix
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    eventPlayer.startForcingThrottle(0, 0, 0, 0, 0, 0)
    #Busted!
    eventPlayer.antiFloatProtection = true
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START


rule "Anti-Bounce Detection Positive Z":
    @Event eachPlayer
    @Condition eventPlayer.getPosition().y < 0
    @Condition eventPlayer.getPosition().z > 20.5
    #Workshop Island Fix
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    eventPlayer.startForcingThrottle(0, 0, 0, 0, 0, 0)
    #Busted!
    eventPlayer.antiFloatProtection = true
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START


rule "Anti-Bounce Detection Negative Z":
    @Event eachPlayer
    @Condition eventPlayer.getPosition().y < 0
    @Condition eventPlayer.getPosition().z < -20.5
    #Workshop Island Fix
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    eventPlayer.startForcingThrottle(0, 0, 0, 0, 0, 0)
    #Busted!
    eventPlayer.antiFloatProtection = true
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START


rule "Disable Anti-Bounce":
    @Event eachPlayer
    @Condition eventPlayer.getPosition().y >= 0
    @Condition eventPlayer.antiFloatProtection == true
    #Workshop Island Fix
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    eventPlayer.stopForcingThrottle()
    eventPlayer.antiFloatProtection = false


rule "Anti-Stuck Activation":
    @Event eachPlayer
    @Condition eventPlayer in stressTorbs == false
    @Condition eventPlayer.getPosition().y < -4
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    
    eventPlayer.applyImpulse(Vector.UP, 5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION_XYZ)
    wait(0.5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bounce when near pad 1":
    @Event eachPlayer
    @Condition bouncePad1 != null
    @Condition distance(eventPlayer.getPosition(), bouncePad1) <= bouncePadRange
    @Condition eventPlayer.bouncePadCooldown == 0
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    eventPlayer.isDashEnabled = true
    if eventPlayer.dashNerf:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength - bouncePadSuperjumpNerf, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.bouncePadCooldown = bouncePadCooldownLength
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, bouncePad1, 25)
    eventPlayer.playerEffects[1] = getLastCreatedEntity()
    wait(2)
    destroyEffect(eventPlayer.playerEffects[1])


rule "Bounce when near pad 2":
    @Event eachPlayer
    @Condition bouncePad2 != null
    @Condition distance(eventPlayer.getPosition(), bouncePad2) <= bouncePadRange
    @Condition eventPlayer.bouncePadCooldown == 0
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    eventPlayer.isDashEnabled = true
    if eventPlayer.dashNerf:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength - bouncePadSuperjumpNerf, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.bouncePadCooldown = bouncePadCooldownLength
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, bouncePad1, 25)
    eventPlayer.playerEffects[1] = getLastCreatedEntity()
    wait(2)
    destroyEffect(eventPlayer.playerEffects[1])


rule "Bounce when near pad 3":
    @Event eachPlayer
    @Condition bouncePad3 != null
    @Condition distance(eventPlayer.getPosition(), bouncePad3) <= bouncePadRange
    @Condition eventPlayer.bouncePadCooldown == 0
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    eventPlayer.isDashEnabled = true
    if eventPlayer.dashNerf:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength - bouncePadSuperjumpNerf, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.bouncePadCooldown = bouncePadCooldownLength
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, bouncePad1, 25)
    eventPlayer.playerEffects[1] = getLastCreatedEntity()
    wait(2)
    destroyEffect(eventPlayer.playerEffects[1])


rule "Bounce when near pad 4":
    @Event eachPlayer
    @Condition bouncePad4 != null
    @Condition distance(eventPlayer.getPosition(), bouncePad4) <= bouncePadRange
    @Condition eventPlayer.bouncePadCooldown == 0
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    eventPlayer.isDashEnabled = true
    if eventPlayer.dashNerf:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength - bouncePadSuperjumpNerf, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    else:
        eventPlayer.applyImpulse(Vector.UP, bouncePadStrength, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.bouncePadCooldown = bouncePadCooldownLength
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, bouncePad1, 25)
    eventPlayer.playerEffects[1] = getLastCreatedEntity()
    wait(2)
    destroyEffect(eventPlayer.playerEffects[1])


rule "Ball delete requested":
    @Condition ballDeleteRequested == true
    
    ballDeleteRequested = false
    ballPlayerMock = true
    targetedPlayer = -1
    stopChasingVariable(ballDirection)
    stopChasingVariable(ballPosition)
    stopChasingVariable(ballSpeed)
    ballPosition = vect(0, -1, 0)
    ballDirection = vect(0, 0, 0)
    ballIsOut = false
    previousTargetedPlayer = -1
    ballSpawnCountdown = 2
    prevBallPos = vect(0, 0, 0)
    prevBallPos2 = vect(0, 0, 0)


rule "Only end game when there isn't a round in progress":
    @Condition getMatchTime() == 0
    @Condition roundInProgress == false
    @Condition gameEndEnabled == true
    @Condition tieBreakerActive == false
    
    enableMusic()
    enableGamemodeCompletion()


rule "primary = dash":
    @Event eachPlayer
    @Condition breakInProgress == false
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition "{0}".format(eventPlayer) != "bytestats"
    @Condition eventPlayer.getCurrentHero() != ballHero
    
    eventPlayer.forceButtonPress(Button.ABILITY_1)


rule "secondary = deflect":
    @Event eachPlayer
    @Condition breakInProgress == false
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    @Condition "{0}".format(eventPlayer) != "bytestats"
    @Condition passingEnabled == false
    @Condition eventPlayer.getCurrentHero() != ballHero
    
    eventPlayer.forceButtonPress(Button.ABILITY_2)


rule "Start round":
    @Condition getCurrentGamemode() == Gamemode.FFA
    @Condition isEnoughPlayersToStart == true
    @Condition isGameInProgress() == true
    
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    roundInProgress = true
    ballPlayerMock = false
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)
    ballSpawnCountdown = 5


rule "Start round - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition isEnoughPlayersToStart == true
    @Condition isGameInProgress() == true
    
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    roundInProgress = true
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)
    ballSpawnCountdown = 5


rule "Spawn ball":
    @Condition ballSpawnCountdown == 0
    
    ballPosition = circleCenter
    ballDirection = directionTowards(ballPosition, targetedPlayer.getEyePosition())
    ballDirectionRate = 1.75
    ballSpeed = startingBallSpeed
    ballPlayerMock = false
    ballIsOut = true


rule "Modern ball motion":
    @Condition rulesetMode == 0
    @Condition ballIsOut == true
    
    chase(ballPosition, ballPosition + ballDirection * ballSpeed, rate=ballSpeed, ChaseReeval.DESTINATION_AND_RATE)
    chase(ballDirection, directionTowards(ballPosition, targetedPlayer.getEyePosition()), rate=ballDirectionRate, ChaseReeval.DESTINATION_AND_RATE)
    chase(ballSpeed, maxBallSpeed, rate=0.25, ChaseReeval.DESTINATION_AND_RATE)


rule "Retro ball motion":
    @Condition rulesetMode == 1
    @Condition ballIsOut == true
    
    chase(ballPosition, targetedPlayer.getEyePosition(), rate=ballSpeed, ChaseReeval.DESTINATION_AND_RATE)
    chase(ballSpeed, maxBallSpeed, rate=0.25, ChaseReeval.DESTINATION_AND_RATE)


rule "Astro ball motion":
    @Condition rulesetMode == 2
    @Condition ballIsOut == true
    
    chase(ballPosition, updateEveryTick(ballPosition + ballDirection), rate=updateEveryTick(magnitude(ballDirection)), ChaseReeval.DESTINATION_AND_RATE)
    #ballDirection is the ball's velocity
    chase(ballDirection, updateEveryTick(ballDirection * 0.93 + targetedPlayer.getEyePosition() - ballPosition), rate=updateEveryTick((sqrt((ballSpeed - max(dotProduct(ballDirection, directionTowards(ballPosition, targetedPlayer.getEyePosition())), 0)) * ballSpeed)) * 3), ChaseReeval.DESTINATION_AND_RATE)
    #ballSpeed is the ball's acceleration coefficient
    chase(ballSpeed, maxBallSpeed, rate=0.25, ChaseReeval.DESTINATION_AND_RATE)
    #Chase client prediction fix
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Update ball postiion":
    @Condition ballIsOut == true
    
    #This is for the ball tail to be updated.
    prevBallPos2 = prevBallPos
    prevBallPos = ballPosition
    wait(0.05)
    if RULE_CONDITION:
        goto RULE_START


rule "Ball reaches player":
    @Condition getCurrentGamemode() == Gamemode.FFA
    @Condition distance(ballPosition, targetedPlayer.getEyePosition()) <= 1.9
    @Condition ballIsOut == true
    
    if targetedPlayer.isDummy():
        targetedPlayer.forceButtonPress(Button.ABILITY_2)
        wait(0)
    if not (targetedPlayer.isUsingAbility2() or targetedPlayer.isUsingAbility1() and rulesetMode != 1):
        DeflectFailed()
        if rulesetMode == 1:
            wait()
            if RULE_CONDITION:
                goto RULE_START
        return
    if targetedPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        #If they don't have enough health, kill em
        if targetedPlayer.getHealth() <= 100:
            DeflectFailed()
            if rulesetMode == 1:
                wait()
                if RULE_CONDITION:
                    goto RULE_START
            return
    if targetedPlayer.isUsingAbility2():
        ballPlayer.setStatusEffect(null, Status.STUNNED, 0.5)
    else:
        ballPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 0.5)
    if targetedPlayer.isUsingAbility1():
        targetedPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 1)
        targetedPlayer.teleport(ballPosition)
    targetedPlayer.currentUltPercent += 5
    playEffect(getAllPlayers(), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, targetedPlayer.getPosition(), 200)
    targetedPlayer.playerDeflects += 1
    previousTargetedPlayer = targetedPlayer
    ballSpeed = min(maxBallSpeed, ballSpeed * 1.05)
    if ballSpeed > targetedPlayer.maxBallSpeed:
        targetedPlayer.maxBallSpeed = ballSpeed
    ballDirection = targetedPlayer.getFacingDirection() * (ballSpeed if rulesetMode == 2 else 1)
    wait(0.001)
    #Check if player is passing and if passing is enabled
    if previousTargetedPlayer.isHoldingButton(Button.SECONDARY_FIRE) and passingEnabled:
        isPassingTeam1 = true
        if not invisiblePlayers:
            playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.SKY_BLUE, previousTargetedPlayer.getPosition(), 10)
        playEffect(previousTargetedPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR_SOUND, Color.WHITE, previousTargetedPlayer.getPosition(), 100)
        previousTargetedPlayer.setHealth(passingDamage)
        targetedPlayer = previousTargetedPlayer
    else:
        isPassingTeam1 = false
        heal(previousTargetedPlayer, null, passingDamage)
        targetedPlayer = (sorted([player for player in getLivingPlayers(Team.ALL) if player != previousTargetedPlayer and player.getCurrentHero() != ballHero], lambda i: angleBetweenVectors(targetedPlayer.getFacingDirection(), directionTowards(targetedPlayer, i.getPosition()))))[0]
    async(BallCurve, AsyncBehavior.RESTART)


rule "Ball reaches player -TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition distance(ballPosition, targetedPlayer.getEyePosition()) <= 1.9
    @Condition ballIsOut == true
    
    if not (targetedPlayer.isUsingAbility2() or targetedPlayer.isUsingAbility1() and rulesetMode != 1):
        DeflectFailed()
        if rulesetMode == 1:
            wait()
            if RULE_CONDITION:
                goto RULE_START
        return
    if targetedPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        #If they don't have enough health, kill em
        if targetedPlayer.getHealth() <= 100:
            DeflectFailed()
            if rulesetMode == 1:
                wait()
                if RULE_CONDITION:
                    goto RULE_START
            return
    if targetedPlayer.isUsingAbility1():
        targetedPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 1)
        targetedPlayer.teleport(ballPosition)
    targetedPlayer.currentUltPercent += 5
    playEffect(getAllPlayers(), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, targetedPlayer.getPosition(), 200)
    targetedPlayer.playerDeflects += 1
    previousTargetedPlayer = targetedPlayer
    ballSpeed = min(500, ballSpeed * 1.05)
    if ballSpeed > targetedPlayer.maxBallSpeed:
        targetedPlayer.maxBallSpeed = ballSpeed
    ballDirection = targetedPlayer.getFacingDirection() * (ballSpeed if rulesetMode == 2 else 1)
    wait(0.001)
    #Check if player is passing and if passing is enabled
    if previousTargetedPlayer.isHoldingButton(Button.SECONDARY_FIRE) and passingEnabled:
        #if previousTargetedPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        if not invisiblePlayers:
            playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.SKY_BLUE, previousTargetedPlayer.getPosition(), 10)
        playEffect(previousTargetedPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR_SOUND, Color.WHITE, previousTargetedPlayer.getPosition(), 100)
        previousTargetedPlayer.setHealth(passingDamage)
        stopAssist(passingAssistId)
        #passingPlayer = null
        #Check which team is passing
        if previousTargetedPlayer.getTeam() == Team.1:
            isPassingTeam1 = true
        else:
            isPassingTeam2 = true
        #If the member is the only one left on their team, self pass
        if getNumberOfLivingPlayers(previousTargetedPlayer.getTeam()) == 1:
            #Check if using modern rules. Self passing is disabled in retro rules so it's basically a failed deflect.
            if rulesetMode != 1:
                targetedPlayer = previousTargetedPlayer
            else:
                DeflectFailed()
            #Pass to another teammate
        else:
            passingPlayer = previousTargetedPlayer
            passingPlayer.startGrantingAssistFor(getAllPlayers(), AssistReeval.NONE)
            passingAssistId = getLastAssistID()
            targetedPlayer = sorted(getLivingPlayers(previousTargetedPlayer.getTeam()).exclude(previousTargetedPlayer), lambda i: angleBetweenVectors(targetedPlayer.getFacingDirection(), directionTowards(targetedPlayer, i.getPosition())))[0]
    else:
        #Only clear the passing player if this isn't that passing players ball
        if isPassingTeam1 == false or isPassingTeam2 == false:
            stopAssist(passingAssistId)
        heal(previousTargetedPlayer, null, passingDamage)
        isPassingTeam1 = false
        isPassingTeam2 = false
        targetedPlayer = sorted(getLivingPlayers(getOppositeTeam(previousTargetedPlayer.getTeam())).exclude(previousTargetedPlayer), lambda i: angleBetweenVectors(targetedPlayer.getFacingDirection(), directionTowards(targetedPlayer, i.getPosition())))[0]
    async(BallCurve, AsyncBehavior.RESTART)


def BallCurve():
    @Name "Subroutine BallCurve"
    
    if rulesetMode == 0:
        ballDirectionRate = 6
        wait(0.05)
        ballDirectionRate = 1.75
        #Hey, what do you know, that comment I had here for months actually ended up correct when I readded retro!
    elif rulesetMode == 1:
        if RULE_CONDITION:
            goto RULE_START


rule "End assist after a second - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition passingPlayer != null
    
    waitUntil(previousTargetedPlayer != passingPlayer, 10)
    wait(1)
    stopAssist(passingAssistId)
    passingPlayer = null


def DeflectFailed():
    @Name "Player Didn't Deflect - Kill"
    
    heal(getLivingPlayers(Team.ALL), null, 200)
    isPassingTeam1 = false
    isPassingTeam2 = false
    targetedPlayer.setStatusEffect(previousTargetedPlayer, Status.STUNNED, 1)
    targetedPlayer.bouncePadCooldown = 0
    previousTargetedPlayer.currentUltPercent += 15
    if ballHero and previousTargetedPlayer == -1:
        previousTargetedPlayer = ballPlayer
    kill(targetedPlayer, previousTargetedPlayer)
    if ballHero and not ballPlayer.hasStatusEffect(Status.FROZEN):
        ballPlayer.stopFacing()
        ballPlayer.setFacing(directionTowards(ballPlayer.getEyePosition(), targetedPlayer.getPosition()), Relativity.TO_WORLD)
    if improvedExplosions == true:
        UpdatedDeathEffects()
    else:
        CoolDeathEffects()
    if passingPlayer and targetedPlayer.getTeam() != passingPlayer.getTeam():
        #Please don't ask me why I need to do this. I don't know either.
        passingPlayerName = passingPlayer
        smallMessage(getAllPlayers(), "Passing assist from {0}!".format(passingPlayerName))
    stopAssist(passingAssistId)
    passingPlayer = null
    targetedPlayer.playerDeaths += 1
    previousTargetedPlayer.playerKills += 1
    if endlessBall:
        #Does this if statement look scary to you? Good. Tremble in fear at my might of writing unnecessarily complex if statements.
        if getCurrentGamemode() == Gamemode.FFA and ((len([player for player in getLivingPlayers(Team.ALL) if player.isAlive() and player.getCurrentHero() != ballHero])) != 1) or (getCurrentGamemode() == Gamemode.TDM and (not (getNumberOfLivingPlayers(Team.1) == 0 or getNumberOfLivingPlayers(Team.2) == 0))):
            ballSpeed = min(500, ballSpeed * 1.05)
            #Massive shoutout to DazNachbarzkind#2265 from the GDB EU Discord for making this intelligent targeting logic. You alone made this mode awesome.
            targetedPlayer = (sorted([player for player in getLivingPlayers(Team.ALL) if player.hasMoved and player != ballPlayer], lambda i: angleBetweenVectors(ballDirection, directionTowards(ballPosition, i.getPosition()))))[0]
        else:
            ballDeleteRequested = true
    else:
        ballDeleteRequested = true


def CoolDeathEffects():
    @Name "CoolDeathEffects sub"
    
    createBeam(getAllPlayers(), Beam.BAD, previousTargetedPlayer, targetedPlayer, Color.SKY_BLUE, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    deathBeam = getLastCreatedEntity()
    deathSpherePos = targetedPlayer.getPosition()
    deathSphereRad = 30
    chase(deathSphereRad, 0, duration=0.25, ChaseReeval.NONE)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.SKY_BLUE, deathSpherePos, 40)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLACK, deathSpherePos, deathSphereRad, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    deathSphere = getLastCreatedEntity()
    playEffect(getAllPlayers(), DynamicEffect.GOOD_EXPLOSION, Color.WHITE, deathSpherePos, 5)
    wait(0.25)
    destroyEffect(deathSphere)
    #playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.RED, deathSpherePos, sphereSize * 1.5)
    #playEffect(getAllPlayers(), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, deathSpherePos, 40)
    destroyEffect(deathBeam)


def UpdatedDeathEffects():
    @Name "Updated Death Effects Sub"
    
    deathSpherePos = targetedPlayer.getPosition()
    #Make sure it is final duel AND there are at least 3 or more players
    if getCurrentGamemode() == Gamemode.FFA and getNumberOfLivingPlayers(Team.ALL) == 1 and getNumberOfHeroes(playerHero, Team.ALL) != 2 and finalDuelNuke:
        if targetedPlayer.getAltitude() < 5:
            playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT, Color.WHITE, vect(deathSpherePos.x, 0, deathSpherePos.z), 0)
        else:
            playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION, Color.WHITE, deathSpherePos, 0)
    elif ((getCurrentGamemode() == Gamemode.TDM and (getNumberOfLivingPlayers(Team.1) == 0 or getNumberOfLivingPlayers(Team.2) == 0)) and getNumberOfHeroes(playerHero, Team.ALL) != 2) and finalDuelNuke:
        if targetedPlayer.getAltitude() < 5:
            playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT, Color.WHITE, vect(deathSpherePos.x, 0, deathSpherePos.z), 0)
        else:
            playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION, Color.WHITE, deathSpherePos, 0)
    playEffect(getAllPlayers(), DynamicEffect.BASTION_TANK_CANNON_EXPLOSION, Color.WHITE, deathSpherePos, 1)
    if randomExplosionSounds:
        #Pick a random explosion sound
        randomExplosionPicker = random.randint(0, 4)
        if randomExplosionPicker == 0:
            playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)
        elif randomExplosionPicker == 1:
            playEffect(getAllPlayers(), DynamicEffect.BASTION_TANK_CANNON_EXPLOSION_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)
        elif randomExplosionPicker == 2:
            playEffect(getAllPlayers(), DynamicEffect.ASHE_DYNAMITE_EXPLOSION_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)
        elif randomExplosionPicker == 3:
            playEffect(getAllPlayers(), DynamicEffect.PHARAH_BARRAGE_EXPLOSION_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)
        elif randomExplosionPicker == 4:
            playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)
    else:
        #playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)
        playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, deathSpherePos, explosionSoundVolume)


rule "Final duel":
    @Condition getCurrentGamemode() == Gamemode.FFA
    @Condition isGameInProgress() == true
    @Condition roundInProgress != false
    @Condition (len([player for player in getLivingPlayers(Team.ALL) if player.hasMoved and player.getCurrentHero() != ballHero])) == 2
    @Condition isEnoughPlayersToStart == true
    @Condition isInFinalDuel == false
    @Condition endlessBall == false
    
    ballSpawnCountdown = 5
    getLivingPlayers(Team.ALL).isDashEnabled = false
    if ballIsOut == false:
        goto lbl_0
    ballDeleteRequested = true
    lbl_0:
    isInFinalDuel = true
    getLivingPlayers(Team.ALL).bouncePadCooldown = 2
    if getNumberOfHeroes(playerHero, Team.ALL) <= 2:
        goto lbl_1
    bigMessage(getAllPlayers(), "Final Duel!")
    lbl_1:
    getLivingPlayers(Team.ALL).applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    if __currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196:
        getLivingPlayers(Team.ALL)[0].teleport(circleCenter + vect(-1, 0, 0) * (sphereSize / 4))
        getLivingPlayers(Team.ALL)[1].teleport(circleCenter + vect(1, 0, 0) * (sphereSize / 4))
    else:
        getLivingPlayers(Team.ALL)[0].teleport(circleCenter + vect(-1, 0, 0) * (sphereSize / 1.5))
        getLivingPlayers(Team.ALL)[1].teleport(circleCenter + vect(1, 0, 0) * (sphereSize / 1.5))
    getLivingPlayers(Team.ALL).setStatusEffect(null, Status.ROOTED, 2)
    wait(0.001)
    getLivingPlayers(Team.ALL)[0].setFacing(directionTowards(getLivingPlayers(Team.ALL)[0].getPosition(), circleCenter), Relativity.TO_WORLD)
    getLivingPlayers(Team.ALL)[1].setFacing(directionTowards(getLivingPlayers(Team.ALL)[1].getPosition(), circleCenter), Relativity.TO_WORLD)


rule "Final duel - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition isGameInProgress() == true
    @Condition roundInProgress != false
    @Condition len([player for player in getLivingPlayers(Team.1) if player.hasMoved]) == 1
    @Condition len([player for player in getLivingPlayers(Team.2) if player.hasMoved]) == 1
    @Condition isEnoughPlayersToStart == true
    @Condition isInFinalDuel == false
    @Condition endlessBall == false
    
    ballSpawnCountdown = 5
    getLivingPlayers(Team.ALL).isDashEnabled = false
    if ballIsOut == false:
        goto lbl_0
    ballDeleteRequested = true
    lbl_0:
    isInFinalDuel = true
    getLivingPlayers(Team.ALL).bouncePadCooldown = 2
    if getNumberOfHeroes(playerHero, Team.ALL) <= 2:
        goto lbl_1
    bigMessage(getAllPlayers(), "Final Duel!")
    lbl_1:
    getLivingPlayers(Team.ALL).applyImpulse(Vector.DOWN, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.UP, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.BACKWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.FORWARD, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.RIGHT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getLivingPlayers(Team.ALL).applyImpulse(Vector.LEFT, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    if __currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196:
        getLivingPlayers(Team.ALL)[0].teleport(circleCenter + vect(-1, 0, 0) * (sphereSize / 4))
        getLivingPlayers(Team.ALL)[1].teleport(circleCenter + vect(1, 0, 0) * (sphereSize / 4))
    else:
        getLivingPlayers(Team.ALL)[0].teleport(circleCenter + vect(-1, 0, 0) * (sphereSize / 1.5))
        getLivingPlayers(Team.ALL)[1].teleport(circleCenter + vect(1, 0, 0) * (sphereSize / 1.5))
    getLivingPlayers(Team.ALL).setStatusEffect(null, Status.ROOTED, 2)
    wait(0.001)
    getLivingPlayers(Team.ALL)[0].setFacing(directionTowards(getLivingPlayers(Team.ALL)[0].getPosition(), circleCenter), Relativity.TO_WORLD)
    getLivingPlayers(Team.ALL)[1].setFacing(directionTowards(getLivingPlayers(Team.ALL)[1].getPosition(), circleCenter), Relativity.TO_WORLD)


rule "Create pa﻿ssing aura - TEAMS":
    @Event eachPlayer
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    @Condition passingEnabled != false
    @Condition passingAuraToggle != false
    @Condition invisiblePlayers == false
    
    createEffect([player for player in getPlayers(eventPlayer.getTeam()) if player != eventPlayer and player.isAlive()], Effect.BAD_AURA, Color.SKY_BLUE, eventPlayer.getEyePosition(), 1.5, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.passingSignal = getLastCreatedEntity()
    waitUntil(not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isDead(), 60)
    destroyEffect(eventPlayer.passingSignal)


rule "Check for last player surviving":
    @Condition getCurrentGamemode() == Gamemode.FFA
    @Condition isGameInProgress() == true
    @Condition (len([player for player in getLivingPlayers(Team.ALL) if player.isAlive() and player.getCurrentHero() != ballHero])) == 1
    @Condition isEnoughPlayersToStart == true
    
    isInFinalDuel = false
    ([player for player in getLivingPlayers(Team.ALL) if player.getCurrentHero() != ballHero]).addToScore(1)
    wait(0.25)
    if (getMatchTime() == 0 or tieBreakerActive) and gameEndEnabled:
        #If there is alredy a tiebreaker, then the tiebreaker has ended.
        #if tieBreakerActive:
        #break
        #__end__()
        highestScore = sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore()
        #Check if there is more then 1 person with the highest score
        if len([player for player in getAllPlayers() if player.getScore() == highestScore]) > 1:
            #There is more then 1, activate tie breaker
            tieBreakerActive = true
        else:
            tieBreakerActive = false
    stopChasingVariable(ballSpawnCountdown)
    stopChasingVariable(getAllPlayers().bouncePadCooldown)
    bigMessage(getAllPlayers(), "{0} has won the round!".format([player for player in getLivingPlayers(Team.ALL) if player.getCurrentHero() != ballHero]))
    wait(2)
    roundInProgress = false
    if not tieBreakerActive:
        getDeadPlayers(Team.ALL).resurrect()
    else:
        #Kill anyone alive who doesn't have the highest score.
        kill([player for player in getLivingPlayers(Team.ALL) if player.getScore() != highestScore], null)
        #During tiebreaker, only revive the people who have the same score as the highest score.
        ([player for player in getDeadPlayers(Team.ALL) if player.getScore() == highestScore]).resurrect()
        wait(0.25)
        targetedPlayer = -1
        bigMessage(getAllPlayers(), "Tiebreaker!")
    if not isEnoughPlayersToStart:
        return
    getAllPlayers().bouncePadCooldown = bouncePadCooldownLengthStart
    currentRound += 1
    if currentRound - 1 < maxRounds and tournamentMode and breaksEnabled and (currentRound - 1) % breakFrequency == 0:
        StartBreak()
    else:
        ballSpawnCountdown = 5
    wait(0.025)
    roundInProgress = true
    wait(0.975)
    if not bouncepadDashingEnabled:
        goto lbl_0
    getAllPlayers().isDashEnabled = false
    getAllPlayers().setAbility1Enabled(false)
    lbl_0:
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)


rule "Team 1 Last Surviving - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition isGameInProgress() == true
    @Condition getNumberOfLivingPlayers(Team.2) == 0
    @Condition isEnoughPlayersToStart == true
    
    isInFinalDuel = false
    addToTeamScore(Team.1, 1)
    wait(0.25)
    if (getMatchTime() == 0 or tieBreakerActive) and gameEndEnabled:
        #If there is alredy a tiebreaker, then the tiebreaker has ended.
        #if tieBreakerActive:
        #break
        #__end__()
        highestScore = sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore()
        #Check if there is more then 1 person with the highest score
        if teamScore(Team.1) == teamScore(Team.2):
            #There is more then 1, activate tie breaker
            tieBreakerActive = true
        else:
            tieBreakerActive = false
    stopChasingVariable(ballSpawnCountdown)
    stopChasingVariable(getAllPlayers().bouncePadCooldown)
    bigMessage(getAllPlayers(), "{0} has won the round!".format(Team.1))
    wait(2)
    roundInProgress = false
    if not tieBreakerActive:
        getDeadPlayers(Team.ALL).resurrect()
    else:
        #Kill anyone alive who doesn't have the highest score.
        kill([player for player in getLivingPlayers(Team.ALL) if player.getScore() != highestScore], null)
        #During tiebreaker, only revive the people who have the same score as the highest score.
        ([player for player in getDeadPlayers(Team.ALL) if player.getScore() == highestScore]).resurrect()
        wait(0.25)
        targetedPlayer = -1
        bigMessage(getAllPlayers(), "Tiebreaker!")
    heal(getAllPlayers(), null, 200)
    if not isEnoughPlayersToStart:
        return
    currentRound += 1
    getAllPlayers().bouncePadCooldown = bouncePadCooldownLengthStart
    ballSpawnCountdown = 5
    wait(0.025)
    roundInProgress = true
    wait(0.975)
    if not bouncepadDashingEnabled:
        goto lbl_0
    getAllPlayers().isDashEnabled = false
    getAllPlayers().setAbility1Enabled(false)
    lbl_0:
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)


rule "Team 2 Last Surviving - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition isGameInProgress() == true
    @Condition getNumberOfLivingPlayers(Team.1) == 0
    @Condition isEnoughPlayersToStart == true
    
    isInFinalDuel = false
    addToTeamScore(Team.2, 1)
    wait(0.25)
    if (getMatchTime() == 0 or tieBreakerActive) and gameEndEnabled:
        #If there is alredy a tiebreaker, then the tiebreaker has ended.
        #if tieBreakerActive:
        #break
        #__end__()
        highestScore = sorted(getAllPlayers(), lambda player: player.getScore()).last().getScore()
        #Check if there is more then 1 person with the highest score
        if teamScore(Team.1) == teamScore(Team.2):
            #There is more then 1, activate tie breaker
            tieBreakerActive = true
        else:
            tieBreakerActive = false
    stopChasingVariable(ballSpawnCountdown)
    stopChasingVariable(getAllPlayers().bouncePadCooldown)
    bigMessage(getAllPlayers(), "{0} has won the round!".format(Team.2))
    wait(2)
    roundInProgress = false
    if not tieBreakerActive:
        getDeadPlayers(Team.ALL).resurrect()
    else:
        #Kill anyone alive who doesn't have the highest score.
        kill([player for player in getLivingPlayers(Team.ALL) if player.getScore() != highestScore], null)
        #During tiebreaker, only revive the people who have the same score as the highest score.
        ([player for player in getDeadPlayers(Team.ALL) if player.getScore() == highestScore]).resurrect()
        wait(0.25)
        targetedPlayer = -1
        bigMessage(getAllPlayers(), "Tiebreaker!")
    heal(getAllPlayers(), null, 200)
    if not isEnoughPlayersToStart:
        return
    currentRound += 1
    getAllPlayers().bouncePadCooldown = bouncePadCooldownLengthStart
    ballSpawnCountdown = 5
    wait(0.025)
    roundInProgress = true
    wait(0.975)
    if not bouncepadDashingEnabled:
        goto lbl_0
    getAllPlayers().isDashEnabled = false
    getAllPlayers().setAbility1Enabled(false)
    lbl_0:
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)


rule "Player check":
    @Event eachPlayer
    @Condition eventPlayer.isAlive() == true
    @Condition "{0}".format(eventPlayer) == "daboss"
    
    kill(eventPlayer, null)
    wait(1)
    if RULE_CONDITION:
        goto RULE_START


rule "All players dead failsafe":
    @Condition getNumberOfLivingPlayers(Team.ALL) == 0
    @Condition isGameInProgress() == true
    @Condition tieBreakerActive == false
    
    isInFinalDuel = false
    if ballIsOut == false:
        goto lbl_0
    ballDeleteRequested = true
    lbl_0:
    roundInProgress = false
    stopChasingVariable(ballSpawnCountdown)
    getDeadPlayers(Team.ALL).resurrect()
    smallMessage(getAllPlayers(), "All players detected dead! Resetting game.")
    stopChasingVariable(getAllPlayers().bouncePadCooldown)
    getAllPlayers().bouncePadCooldown = bouncePadCooldownLengthStart
    ballSpawnCountdown = 5
    wait(1)
    if RULE_CONDITION:
        goto RULE_START
    wait(2)
    if not isEnoughPlayersToStart:
        return
    chase(getAllPlayers().bouncePadCooldown, 0, rate=1, ChaseReeval.NONE)
    chase(ballSpawnCountdown, 0, rate=1, ChaseReeval.NONE)
    roundInProgress = true
    ballPosition = vect(0, -1, 0)


rule "dash slow":
    @Event eachPlayer
    @Condition eventPlayer.isUsingAbility1() == true
    
    eventPlayer.dashNerf = true
    eventPlayer.moveSpeed = 0
    chase(eventPlayer.moveSpeed, 100, rate=max(eventPlayer.moveSpeed, 16) ** 1.25, ChaseReeval.DESTINATION_AND_RATE)
    while eventPlayer.moveSpeed != 100:
        eventPlayer.setMoveSpeed(eventPlayer.moveSpeed)
        eventPlayer.setGravity(eventPlayer.moveSpeed)
        wait(0.1)
    eventPlayer.setMoveSpeed(100)
    eventPlayer.setGravity(100)
    eventPlayer.dashNerf = false


rule "Ball bounce off surface":
    @Condition ballIsOut == true
    @Condition (isInLoS(ballPosition, ballPosition + ((ballDirection * (ballSpeed if rulesetMode != 2 else 1)) * 0.033), BarrierLos.PASS_THROUGH_BARRIERS)) == false
    @Condition __currentMap___ != Map.WORKSHOP_CHAMBER
    
    #normal of the plane of the surface with which the ball collides, n
    ballCollisionSurfaceNormal = raycast(ballPosition, ballPosition + ballDirection * ballSpeed * 0.066, null, getAllPlayers(), false).getNormal()
    #reflected vector formula --- new v = v - 2 * (v•n)/(n•n) * n
    ballDirection -= 2 * ballDirection * ballCollisionSurfaceNormal / dotProduct(ballCollisionSurfaceNormal, ballCollisionSurfaceNormal) * ballCollisionSurfaceNormal
    playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.WHITE, ballPosition, 1)
    wait(0.02)
    if RULE_CONDITION:
        goto RULE_START


rule "Ball no do﻿wn when y < -0.5":
    @Condition ballIsOut == true
    @Condition ballPosition.y < -0.5
    @Condition ballDirection.y < 0
    
    ballDirection *= vect(1, -1 if rulesetMode == 2 else 0, 1)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, ballPosition, 2)


rule "RGB Ball Mode":
    @Condition ballTailColor == 2
    @Condition ballIsOut != false
    
    ballTail1 = rgb(random.uniform(0, 255), random.uniform(0, 255), random.uniform(0, 255))
    ballTail2 = rgb(random.uniform(0, 255), random.uniform(0, 255), random.uniform(0, 255))
    wait(0.1)
    if RULE_CONDITION:
        goto RULE_START


rule "Chamber x collision":
    #This collision is the lazy way but its only for chamber so who cares
    @Condition __currentMap___ == Map.WORKSHOP_CHAMBER
    @Condition ballIsOut == true
    @Condition (ballPosition.x + 0.4 >= 20 or ballPosition.x - 0.4 <= -20) == true
    
    if ballPosition.x + 0.4 >= 20 and ballDirection.x > 0 or ballPosition.x - 0.4 <= -20 and ballDirection.x < 0:
        ballDirection = vect(ballDirection.x * -1, ballDirection.y, ballDirection.z)
        playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.WHITE, ballPosition, 1)
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Chamber y collision":
    @Condition __currentMap___ == Map.WORKSHOP_CHAMBER
    @Condition ballIsOut == true
    @Condition (ballPosition.y + 0.4 >= 40) - (ballPosition.y - 0.4 <= 0) == true
    
    if ballPosition.y + 0.4 >= 40 and ballDirection.y > 0 or ballPosition.y - 0.4 <= 0 and ballDirection.y < 0:
        ballDirection = vect(ballDirection.x, ballDirection.y * -1, ballDirection.z)
        playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.WHITE, ballPosition, 1)
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Chamber z collision":
    @Condition __currentMap___ == Map.WORKSHOP_CHAMBER
    @Condition ballIsOut == true
    @Condition (ballPosition.z + 0.4 >= 20 or ballPosition.z - 0.4 <= -20) == true
    
    if ballPosition.z + 0.4 >= 20 and ballDirection.z > 0 or ballPosition.z - 0.4 <= -20 and ballDirection.z < 0:
        ballDirection = vect(ballDirection.x, ballDirection.y, ballDirection.z * -1)
        playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.WHITE, ballPosition, 1)
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Expanse y collision":
    @Condition (__currentMap___ == Map.WORKSHOP_EXPANSE or __currentMap___ == 96) == true
    @Condition ballIsOut == true
    @Condition ballPosition.y - 0.4 <= 0
    
    if ballPosition.y - 0.4 <= 0 and ballDirection.y < 0:
        ballDirection = vect(ballDirection.x, ballDirection.y * -1, ballDirection.z)
        playEffect(getAllPlayers(), DynamicEffect.BAD_EXPLOSION, Color.WHITE, ballPosition, 1)
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "No Undermaps":
    @Condition (__currentMap___ == Map.WORKSHOP_ISLAND or __currentMap___ == 196) == true
    @Condition ballIsOut == true
    @Condition ballPosition.y < -2.85
    @Condition ballDirection.y < 0
    
    ballDirection *= vect(1, 0, 1)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION, Color.WHITE, ballPosition, 2)


rule "Team 1 Win - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition allowMatchEnd == true
    @Condition teamScore(Team.1) == scoreToWin
    
    enableAnnouncer()
    declareTeamVictory(Team.1)


rule "Team 2 Win - TEAMS":
    @Condition getCurrentGamemode() == Gamemode.TDM
    @Condition allowMatchEnd == true
    @Condition teamScore(Team.2) == scoreToWin
    
    enableAnnouncer()
    declareTeamVictory(Team.2)


rule "Maximum amount of rounds reached":
    @Condition maxRoundsToggle != false
    @Condition currentRound > maxRounds
    
    enableGamemodeCompletion()


rule "Toggle 3rd person":
    @Event eachPlayer
    @Condition breakInProgress == false
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    @Condition eventPlayer.isAlive() == true
    @Condition perspectiveMode == 0
    
    if not eventPlayer.thirdPerson:
        eventPlayer.thirdPerson = true
        wait(0.01)
        eventPlayer.startCamera(eventPlayer + worldVector(vect(-0.75, 0.25, -0.25), eventPlayer, Transform.ROTATION) + Vector.UP * 1.5 + eventPlayer.getFacingDirection() * -2, eventPlayer + eventPlayer.getFacingDirection() * 1000, 0)
    else:
        if invisiblePlayers:
            eventPlayer.startCamera(updateEveryTick(eventPlayer.getEyePosition()), updateEveryTick(eventPlayer + eventPlayer.getFacingDirection() * 1000), 0)
        else:
            eventPlayer.stopCamera()
        eventPlayer.thirdPerson = false


rule "Player dead 3rd person":
    @Event playerDied
    @Condition eventPlayer.thirdPerson != false
    
    eventPlayer.stopCamera()


rule "3rd person respawn":
    @Event eachPlayer
    @Condition eventPlayer.hasSpawned() == true
    @Condition roundInProgress == false
    @Condition eventPlayer.thirdPerson != false
    
    eventPlayer.startCamera(eventPlayer + worldVector(vect(-0.75, 0.25, -0.25), eventPlayer, Transform.ROTATION) + Vector.UP * 1.5 + eventPlayer.getFacingDirection() * -2, eventPlayer + eventPlayer.getFacingDirection() * 1000, 0)


rule "Player dead 1st person during invisible players":
    @Event playerDied
    @Condition invisiblePlayers != false
    @Condition eventPlayer.thirdPerson == false
    
    eventPlayer.stopCamera()


rule "1st person respawn during invisible players":
    @Event eachPlayer
    @Condition invisiblePlayers != false
    @Condition eventPlayer.hasSpawned() == true
    @Condition roundInProgress == false
    @Condition eventPlayer.thirdPerson == false
    
    eventPlayer.startCamera(updateEveryTick(eventPlayer.getEyePosition()), updateEveryTick(eventPlayer + eventPlayer.getFacingDirection() * 1000), 0)


rule "Measure Latency":
    @Event eachPlayer
    @Condition roundInProgress == true
    
    if not eventPlayer.latencyToggle or eventPlayer.isCommunicatingEmote():
        eventPlayer.latency = 0
        return
    eventPlayer.latency = [angleToDirection(eventPlayer.getHorizontalFacingAngle(), (eventPlayer.getVerticalFacingAngle() + (eventPlayer.getVerticalFacingAngle() < 0)) - 0.5), getTotalTimeElapsed()]
    eventPlayer.startFacing(eventPlayer.latency[0], 100000, Relativity.TO_PLAYER, FacingReeval.NONE)
    waitUntil(eventPlayer.latency[0] == updateEveryTick(eventPlayer.getFacingDirection()), 99999)
    eventPlayer.stopFacing()
    eventPlayer.latency = ((getTotalTimeElapsed() - eventPlayer.latency.last()) * 0.5) * createWorkshopSetting(float[0:1], "Visual Settings", "Client Prediction Amount", 1, 4)


rule "Toggle Latency":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    @Condition rulesetMode != 2
    
    if eventPlayer.latencyToggle:
        eventPlayer.latencyToggle = false
        smallMessage(eventPlayer, "Lag compensation disabled for next round")
    else:
        eventPlayer.latencyToggle = true
        smallMessage(eventPlayer, "Lag compensation enabled for next round")
    wait(0.5)


rule "spawn bot":
    createDummy(Hero.GENJI, Team.ALL, 11, vect(0, 10, 0), vect(0, 0, 0))
    getAllPlayers().startForcingName("jimothy")


rule "bot movement":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition eventPlayer.isAlive() == true
    
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startThrottleInDirection(vect(random.uniform(-360, 360), not true, random.uniform(-360, 360)), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if RULE_CONDITION:
        goto RULE_START


rule "bot use jumpad":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "face the ball":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition distance(eventPlayer.getEyePosition(), ballPosition) >= 5
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), ballPosition), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "random shot":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(ballPosition, eventPlayer.getEyePosition()) < 5
    
    eventPlayer.startFacing(vect(random.uniform(-25, 25), random.randint(0, 5), random.uniform(-25, 25)), 10000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait()


rule "bot dash offensive":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    @Condition ballIsOut == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility2() == true
    
    wait(0.1, Wait.ABORT_WHEN_FALSE)
    if targetedPlayer == eventPlayer.isUsingAbility1() or targetedPlayer == eventPlayer.isUsingAbility2():
        eventPlayer.forceButtonPress(Button.ABILITY_1)


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


