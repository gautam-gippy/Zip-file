namespace :download_and_parse do
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

  c_date = DateTime.now.strftime('%Y/%m/%d')
	
	cdate = "#{c_date}.zip".gsub('/','')
  debugger
  c_dir = File.join(File.dirname(File.dirname(__FILE__)), '../../')
  y = FileUtils.mkdir_p("#{c_dir}Images").to_sentence
	ftp.getbinaryfile(cdate,"#{y}/#{cdate}",1024)
	

  Zip::File.open("#{y}/#{cdate}") do |zip_file|
    zip_file.each do |f|
      fpath = File.join("#{y}", f.name)
      zip_file.extract(f, fpath) unless File.exist?(fpath)
    end
  end
    	
  xmls = "#{c_date}".gsub('/','') 
  doc = Nokogiri::XML(open("#{y}/#{xmls}.xml"))
	events = doc.search('//ROMARIN')

  events.each do |event|
    @data = Mark.new(
        
     :i_reg_no       => event.at('INTREGN').text,
     :original_language => event.at('ORIGLAN').text,
     :billing        => event.at('BILING').text,
     :i_reg_date     => event.at('INTREGD').text,
     :exp_date       => event.at('EXPDATE').text,   
     :oocd           => event.at('OOCD').text
        
						)
  end
    @data.save

    events = doc.search('//ROMARIN')

    events.each do |event|

    @data = HoldersDetail.new(
        
     :not_lang      => event.at('NOTLANG').text,
     :name          => event.at('NAME').text,
     :address       => event.at('ADDRESS').text,
     :entitlement   => event.at('ENTNATL').text
       
            )
  end
    @data.save
    @data = ReprDetail.new(
        
     :name         => event.at('NAME').text,
     :address      => event.at('ADDRESS').text,
     :country      => event.at('COUNTRY').text
        
            )
  
    @data.save
    @data = BasicAppDetail.new(
        
     :goods_and_service_eng   => event.at('GSTERMEN').text,
     :goods_and_service_fr    => event.at('GSTERMFR').text,
     :goods_and_service_      => event.at('GSTERMES').text,
     :reg_date                => event.at('BASREGD').text,
     :reg_no                  => event.at('BASREGN').text,
     :desig_under_prot        => event.at('DESPG').text,
     :desig_under_prot_9sexies=> event.at('DESPG2').text
        
            )
  
    @data.save
    @data = Image.new(
        
     :color       => event.at('COLOUR').text,
     :type        => event.at('TYPE').text,
     :name        => event.at('NAME').text,
     :text        => event.at('TEXT').text
            )
  

    @data.save
     @data = Enn.new(
     :gaz_no     => event.at('GAZNO').text,
     :int_office => event.at('INTOFF').text,
     :not_date   => event.at('NOTDATE').text,
     :o_gaz_no   => event.at('').text,
     :o_pub_date => event.at('').text,
     :pub_date   => event.at('PUBDATE').text,
     :eff_reg_date=> event.at('REGEDAT').text,
     :rec_reg_date=> event.at('REGRDAT').text,
            )
  

    


    @data.save
    if @data.save
        puts "Success"
    else
        puts "This didn't save"
    end
   end
	
  end


