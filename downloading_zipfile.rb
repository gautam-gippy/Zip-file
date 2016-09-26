namespace :download_and_parse do
  desc "TODO"
  task xml_and_image: :environment do
  	require 'net/ftp'
	


	ftp = Net::FTP.new("ftpird.wipo.int")
	ftp.login(user = "anonymous", passwd = "guest")
	files = ftp.chdir('/wipo/madrid/romarin')
	files = ftp.list('*.zip')
	files.each do |e|
		getbinaryfile(e, 1024)
	end

	ftp.close

end
end



