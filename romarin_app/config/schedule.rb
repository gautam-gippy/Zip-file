set :output, "#{path}/log/cron.log"

every 1.day, at:"11:58 PM"  do
	rake "download_and_parse:parse_xml"
end