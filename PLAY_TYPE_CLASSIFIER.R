library("RODBC")
library("RCurl")
library("rjson")

connectionString <- "Driver={ODBC Driver 13 for SQL Server};Server=tcp:mhuffer.database.windows.net,1433;Database=NFL;Uid=mhuffer@mhuffer;Pwd={FRANKlin8992};Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;"
sqlQuery <- "SELECT GAME_ID, PLAY_ID, PLAY_TYPE, DRIVE, QTR, DOWN, TIME_SECS, PLAY_TIME_DIFF, SIDE_OF_FIELD, YARD_LINE, YARD_LINE_100, YARDS_TO_GO, POS_TEAM, DEF_TEAM, POS_TEAM_SCORE, DEF_TEAM_SCORE, ABS_SCORE_DIFF, HOME_TEAM, AWAY_TEAM FROM dbo.play_by_play_2017 WHERE (PLAY_TYPE = 'Pass' OR PLAY_TYPE = 'Run') AND HOME_TEAM = 'CHI' AND POS_TEAM <> 'CHI'"
conn <- odbcDriverConnect(connectionString)
full_df <- data.frame(sqlQuery(conn, sqlQuery))
df <- full_df[,c(-3)]
close(conn)

createList <- function(df){
  temp <- apply(df, 1, function(x) as.vector(paste(x, sep = "")))
  colnames(temp) <- NULL
  temp <- apply(temp, 2, function(x) as.list(x))
  return(temp)
}

# Accept SSL certificates issued by public Certificate Authorities
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))

h = basicTextGatherer()
hdr = basicHeaderGatherer()


req = list(
  
  Inputs = list(
    
    
    "input1" = list(
      "ColumnNames" = list("GAME_ID", "PLAY_ID", "DRIVE", "QTR", "DOWN", "TIME_SECS", "PLAY_TIME_DIFF", "SIDE_OF_FIELD", "YARD_LINE", "YARD_LINE_100", "YARDS_TO_GO", "POS_TEAM", "DEF_TEAM", "POS_TEAM_SCORE", "DEF_TEAM_SCORE", "ABS_SCORE_DIFF", "HOME_TEAM", "AWAY_TEAM"),
      "Values" = createList(df)
    )                ),
  GlobalParameters = setNames(fromJSON('{}'), character(0))
)

body = enc2utf8(toJSON(req))
api_key = "abc123" # Replace this with the API key for the web service
authz_hdr = paste('Bearer', api_key, sep=' ')

h$reset()
curlPerform(url = "https://ussouthcentral.services.azureml.net/workspaces/cdc72d0430da45d2b885a1209cea40b6/services/4eef9d87fd2c4c5a89f24751a4642b67/execute?api-version=2.0&details=true",
            httpheader=c('Content-Type' = "application/json", 'Authorization' = authz_hdr),
            postfields=body,
            writefunction = h$update,
            headerfunction = hdr$update,
            verbose = TRUE
)

headers = hdr$value()
httpStatus = headers["status"]
if (httpStatus >= 400)
{
  print(paste("The request failed with status code:", httpStatus, sep=" "))
  
  # Print the headers - they include the requert ID and the timestamp, which are useful for debugging the failure
  print(headers)
}

print("Result:")
result = h$value()
finalResult <- fromJSON(result)


#Comment out the below line when the code is copied into PowerBI
print(finalResult)

##Return results back
##Uncomment the below lines for when the code is copied into PowerBI

#inter <- do.call("rbind", finalResult$Results$output1$value$Values)
#scored_results <- data.frame(inter)
#names(scored_results) <- finalResult$Results$output1$value$ColumnNames