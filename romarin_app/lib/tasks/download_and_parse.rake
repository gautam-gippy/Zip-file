namespace :download_and_parse do
  desc "TODO"
  task xml_and_images: :environment do

  	#require 'net/ftp'
  	#require 'open-uri'
	
	#ftp = Net::FTP.new("ftpird.wipo.int")
	#ftp.login(user = "anonymous", passwd = "guest")
	#files = ftp.chdir('/wipo/madrid/romarin')
	#files = ftp.list('*.zip')
	#files.each.to_s do |e|
	#	ftp.getbinaryfile(e, 1024)
	#end

	#ftp.close
  end

  desc "TODO"
  task parse_xml: :environment do
  	require 'nokogiri'
	require 'open-uri'
	require 'net/ftp'
	require 'zip'

	ftp = Net::FTP.new("ftpird.wipo.int")
	ftp.login(user = "anonymous", passwd = "guest")
	files = ftp.chdir('/wipo/madrid/romarin')
	ftp.passive = true
	files = ftp.list('*.zip')
	
	ftp.getbinaryfile('20160727.zip','/home/khushbu/Desktop/a1.zip',1024)
	FileUtils.mkdir_p('/home/khushbu/Desktop/Images')

  	Zip::File.open('/home/khushbu/Desktop/a1.zip') do |zip_file|
    zip_file.each do |f|
      fpath = File.join('/home/khushbu/Desktop/Images', f.name)
      zip_file.extract(f, fpath) unless File.exist?(fpath)
    end
  end
    	
 
	doc = Nokogiri::XML(open('/home/khushbu/Desktop/Images/20160727.xml'))
	events = doc.search('//ROMARIN')

    events.each do |event|
      @data = UpdateInfo.new(
        :name           => event.at('NAME').text,
        #:date           => '2011-09-18',
        #:time           => '17:00',
        #:description    => event.at('long_description').text,
        :address        => event.at('ADDRESS').text,
        #:postcode       => event.at('postcode').text,   
        #:price          => event.at('costs').text,
        #:user_id        => 1,
        #:genre_id       => 1,   
        #:town_id        => 1)
						)
    @data.save

    if @data.save
        puts "Success"
    else
        puts "This didn't save"
    end
   end
	
  end

end
