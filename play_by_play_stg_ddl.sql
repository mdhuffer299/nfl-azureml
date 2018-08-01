USE NFL;
GO

IF OBJECT_ID('dbo.play_by_play_stg', 'U') IS NOT NULL
DROP TABLE dbo.play_by_play_stg;
GO

CREATE TABLE dbo.play_by_play_stg
(
	GAME_DATE VARCHAR(255)
	,GAME_ID VARCHAR(255)
	,PLAY_ID VARCHAR(255)
	,DRIVE VARCHAR(255)
	,QTR VARCHAR(255)
	,DOWN VARCHAR(255)
	,GAME_TIME VARCHAR(10) 
	,TIME_UNDER VARCHAR(10)
	,TIME_SECS VARCHAR(255)
	,PLAY_TIME_DIFF VARCHAR(255)
	,SIDE_OF_FIELD VARCHAR(255)
	,YARD_LINE VARCHAR(255)
	,YARD_LINE_100 VARCHAR(255)
	,YARDS_TO_GO VARCHAR(255)
	,YARDS_NET VARCHAR(255)
	,GOAL_TO_GO VARCHAR(255)
	,FIRST_DOWN VARCHAR(255)
	,POS_TEAM VARCHAR(255)
	,DEF_TEAM VARCHAR(255)
	,PLAY_ATTEMPTED VARCHAR(255)
	,YARDS_GAINED VARCHAR(255)
	,SP VARCHAR(255)
	,TOUCHDOWN VARCHAR(255)
	,EX_POINT_RESULT VARCHAR(255)
	,TWO_POINT_CONVERSION VARCHAR(255)
	,DEF_TWO_POINT VARCHAR(255)
	,SAFETY VARCHAR(255)
	,ONSIDE_KICK VARCHAR(255)
	,PUNT_RESULT VARCHAR(255)
	,PLAY_TYPE VARCHAR(255)
	,PASSER VARCHAR(255)
	,PASSER_ID VARCHAR(255)
	,PASS_ATTEMPT VARCHAR(255)
	,PASS_OUTCOME VARCHAR(255)
	,PASS_LENGTH VARCHAR(255)
	,AIR_YARDS VARCHAR(255)
	,YARDS_AFTER_CATCH VARCHAR(255)
	,QB_HIT VARCHAR(255)
	,PASS_LOCATION VARCHAR(255)
	,INTERCEPTION_THROWN VARCHAR(255)
	,INTERCEPTOR VARCHAR(255)
	,RUSHER VARCHAR(255)
	,RUSHER_ID VARCHAR(255)
	,RUSH_ATTEMPT VARCHAR(255)
	,RUN_LOCATION VARCHAR(255)
	,RUN_GAP VARCHAR(255)
	,RECEIVER VARCHAR(255)
	,RECEIVER_ID VARCHAR(255)
	,RECEPTION VARCHAR(255)
	,RETURN_RESULT VARCHAR(255)
	,RETURNER VARCHAR(255)
	,BLOCKING_PLAYER VARCHAR(255)
	,TACKLER_1 VARCHAR(255)
	,TACKLER_2 VARCHAR(255)
	,FIELD_GOAL_RESULT VARCHAR(255)
	,FIELD_GOAL_DISTANCE VARCHAR(255)
	,FUMBLE VARCHAR(255)
	,REC_FUMB_TEAM VARCHAR(255)
	,REC_FUMB_PLAYER VARCHAR(255)
	,SACK VARCHAR(255)
	,CHALLENGE_REPLAY VARCHAR(255)
	,CHALLENGE_REPLAY_RESULT VARCHAR(255)
	,ACCEPTED_PENALTY VARCHAR(255)
	,PENALIZED_TEAM VARCHAR(255)
	,PENALIZED_PLAYER VARCHAR(255)
	,PENALTY_YARDS VARCHAR(255)
	,POS_TEAM_SCORE VARCHAR(255)
	,DEF_TEAM_SCORE VARCHAR(255)
	,SCORE_DIFF VARCHAR(255)
	,ABS_SCORE_DIFF VARCHAR(255)
	,HOME_TEAM VARCHAR(255)
	,AWAY_TEAM VARCHAR(255)
	,TIMEOUT_INDICATOR VARCHAR(255)
	,TIMEOUT_TEAM VARCHAR(255)
	,POSTEAM_TIMEOUTS_PRE VARCHAR(255)
	,HOME_TIMEOUTS_REMAINING_PRE VARCHAR(255)
	,AWAY_TIMEOUTS_REMAINING_PRE VARCHAR(255)
	,HOME_TIMEOUTS_REMAINING_POST VARCHAR(255)
	,AWAY_TIMEOUTS_REMAINING_POST VARCHAR(255)
	,NO_SCORE_PROBABILITY VARCHAR(255)
	,OPP_FIELD_GOAL_PROB VARCHAR(255)
	,OPP_SAFETY_PROB VARCHAR(255)
	,OPP_TOUCHDOWN_PROB VARCHAR(255)
	,FIELD_GOAL_PROB VARCHAR(255)
	,SAFETY_PROB VARCHAR(255)
	,TOUCHDOWN_PROB VARCHAR(255)
	,EX_POINT_PROB VARCHAR(255)
	,TWO_POINT_PROB VARCHAR(255)
	,EXP_POINTS VARCHAR(255)
	,EPA VARCHAR(255)
	,AIR_EPA VARCHAR(20)
	,YAC_EPA VARCHAR(20)
	,HOME_WP_PRE VARCHAR(255)
	,AWAY_WP_PRE VARCHAR(255)
	,HOME_WP_POST VARCHAR(255)
	,AWAY_WP_POST VARCHAR(255)
	,WIN_PROB VARCHAR(255)
	,WPA VARCHAR(255)
	,AIR_WPA VARCHAR(255)
	,YAC_WPA VARCHAR(255)
	,SEASON VARCHAR(255)
);
GO