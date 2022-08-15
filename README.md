# Daily Wellbeing Log

An automated script to collect daily information on my personal wellbeing. 
I use a Google Form to collect my daily responses, and save the results to a google sheet 
for future reference and analysis. 

## Setup 

- Create a google form of wellbeing questions you wish to collect.
- Create an app with pushover, see Brian Connelly's [blog post](https://bconnelly.net/posts/r-phone-home/) on using pushover with R. 
- Save your API key, User key, path to Google Form, and Google Sheet in `secrets.R`
- Schedule the script using cronR - you can also set up the cron job using the 
cronR addins page. 

```
cronR::cron_add(command = cron_rscript("send-link.R", log_append = TRUE, log_timestamp = TRUE), 
                frequency = "daily", 
                at = "8am", 
                description = "Send daily wellbeing log link to iPhone", 
                tags = "wellbeing-log")
```

## Other information

- I set the pushover app to automatically open URLs. I found it beneficial to remove 
the step of clicking a link first to get to the Google form.
- I wrote the blog post here: `TBD`, and use the `knitr::read_chunk()` 
to embedd it into my dashboard. 

## Analysis 

I use [flexdashboard](https://pkgs.rstudio.com/flexdashboard/index.html) to make 
a dashboard of the results in R Markdown. I prefer this method for its straight 
to the point visualizations.