# Send ping

wd = "/Users/jordanhutchings/Documents/Documents - Jordan’s MacBook Air/MLDS/daily-wellbeing-log"
source(file.path(wd, "secrets.R"))

MSG = "Wellbeing Check-in"
TITLE = "Google Form"

pushoverr::pushover(message = MSG, 
                    user = USER_KEY, 
                    app = APP_KEY, 
                    url = FORM_URL, 
                    url_title = TITLE)
