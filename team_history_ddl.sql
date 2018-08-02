/* 
	Author:			Michael Huffer
	Description:	DDL for team_history table used for Azure ML play type classification model training and testing.  
					This table contains aggregated play-by-play team statistics up to a game granularly.
					This script is part of a collection of SQL, R, Azure ML, and Power BI artifacts that have been prepared for a SQL Saturday presentation.
*/

USE [NFL]
GO

IF OBJECT_ID('dbo.team_history' , 'U') IS NOT NULL
DROP TABLE dbo.team_history;
GO

CREATE TABLE dbo.team_history
(
	GAME_ID INT
	,POS_TEAM VARCHAR(5)
	,DEF_TEAM VARCHAR(5)
	,TEAM_TOTAL_YARDS INT
	,TEAM_TOTAL_TD INT
	,TEAM_TOTAL_PLAYS_RUN INT
	,TOTAL_SACKS_TAKEN INT
	,TOTAL_INT_THROWN INT
	,TOTAL_PASS_RIGHT INT
	,TOTAL_PASS_LEFT INT
	,TOTAL_PASS_MIDDLE INT
	,TOTAL_RUN_RIGHT INT
	,TOTAL_RUN_LEFT INT
	,TOTAL_RUN_MIDDLE INT
	,TOTAL_RUN_TACKLE_GAP INT
	,TOTAL_RUN_GUARD_GAP INT
	,TOTAL_RUN_END_GAP INT
	,HOME_TEAM VARCHAR(5)
	,AWAY_TEAM VARCHAR(5)
	,SEASON VARCHAR(20)
);
GO