namespace :download_and_parse do
  desc "Parse the xml document and store the data in database"
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
  
  c_dir = File.join(File.dirname(File.dirname(__FILE__)), '')
  y = FileUtils.mkdir_p("#{c_dir}Images").to_sentence
	#ftp.getbinaryfile(cdate,"#{y}/#{cdate}",1024)
	ftp.getbinaryfile('20160727.zip',"#{y}/20160727.zip",1024)

  #Zip::File.open("#{y}/#{cdate}") do |zip_file|
  Zip::File.open("#{y}/20160727.zip") do |zip_file|
    zip_file.each do |f|
      fpath = File.join("#{y}", f.name)
      zip_file.extract(f, fpath) unless File.exist?(fpath)
    end
  end
    	
  #xmls = "#{c_date}".gsub('/','') 
  xmls = "20160727"
  doc = Nokogiri::XML(open("#{y}/#{xmls}.xml"))
	events = doc.css('ROMARIN MARKGR')

  events.each do |event| 
    if (!event.attr('INTREGN').blank?)
      i_reg_no = event.attr('INTREGN')
    end
    if (!event.attr('ORIGLAN').blank?)
      original_language = event.attr('ORIGLAN')
    end
    if !event.attr('BILING').blank?
      billing = event.attr('BILING')
    end
    if !event.attr('INTREGD').blank?
     i_reg_date = event.attr('INTREGD')
    end
    if !event.attr('EXPDATE').blank?
      exp_date = event.attr('EXPDATE')
    end
    if !event.attr('OOCD').blank?
      oocd = event.attr('OOCD')
    end
    @data = Mark.new(
        
     :i_reg_no       => i_reg_no,
     :original_language => original_language,
     :billing        => billing,
     :i_reg_date     => i_reg_date,
     :exp_date       => exp_date,   
     :oocd           => oocd
        
						)
    if @data.save
      puts "Marks Success"
    else
      puts "Marks not saved"
    end
      i=0
      while i < event.at('.').elements.map(&:name).length
        attri = event.at('.').elements.map(&:name)[i]
        if(['REN','LNN','MAN','MTN','OBN','OPN','P2N','PCN','RAN','RCN','REN2','APNE','APNL','APNW','CEN','CLCN','DBN','DIN','RLCN','EEN','EENN','ENN','EXN','FBN','FUN','HRN','UN','RNN','SEN','SNNA','SNNR','TRN','CBN1','CBNO','CBNP','CBNT','FDNP','FDNT','FDNV','FINC','FINCD','FINO','FINT','FINV','FINVD','GP18N','GP18NA','GPN','INNP','INNT','R18NP','R18NT','R18NV','R18NVD','CPN','GPON','ISN','LLCN','NLCN','RFNP','RFNT','RTN'].include?(attri))

          if (!event.at(".//#{attri}").attr('GAZNO').blank?) 
            gaz_no = event.at(".//#{attri}").attr('GAZNO')
     
          end
          if (!event.at(".//#{attri}").attr('INTOFF').blank?)
            int_off = event.at(".//#{attri}").attr('INTOFF')
          end
          if (!event.at(".//#{attri}").attr('NOTDATE').blank?) 
            not_date = event.at(".//#{attri}").attr('NOTDATE')
     
          end
          if (!event.at(".//#{attri}").attr('OGAZNO').blank?)
            o_gaz_no = event.at(".//#{attri}").attr('OGAZNO')
      
          end
          if (!event.at(".//#{attri}").attr('OPUBDATE').blank?) 
            o_pub_date = event.at(".//#{attri}").attr('OPUBDATE')
      
          end
          if (!event.at(".//#{attri}").attr('PUBDATE').blank?) 
            pub_date = event.at(".//#{attri}").attr('PUBDATE')
      
          end
          if (!event.at(".//#{attri}").attr('DESPG').blank?)
            despg = event.at(".//#{attri}").attr('DESPG')
      
          end
          if (!event.at(".//#{attri}").attr('DESPG2').blank?)
            despg2 =  event.at(".//#{attri}").attr('DESPG2')
      
          end
          if (!event.at(".//#{attri}").attr('DCPCD').blank?)
            dcpcd = event.at(".//#{attri}").attr('DCPCD')
      
          end
          if (!event.at(".//#{attri}").attr('REGEDAT').blank?)
            regedat = event.at(".//#{attri}").attr('REGEDAT')
      
          end
          if (!event.at(".//#{attri}").attr('REGRDAT').blank?)
            regrdat = event.at(".//#{attri}").attr('REGRDAT')
      
          end
          if(!event.at(".//#{attri}").attr('DOCID').blank?)
            doc_id = event.at(".//#{attri}").attr('DOCID')
     
         end
          if (!event.at(".//#{attri}").attr('ALLGSI').blank?)
            all_gsi = event.at(".//#{attri}").attr('ALLGSI')
     
          end
          if (!event.at(".//#{attri}").attr('ALLOFF').blank?)
            all_off = event.at(".//#{attri}").attr('ALLOFF')
       
          end
          if (!event.at(".//#{attri}").attr('HOLREF').blank?)
            hol_ref = event.at(".//#{attri}").attr('HOLREF')
    
          end 
          if (!event.at(".//#{attri}").attr('OFFREF').blank?)
            off_ref = event.at(".//#{attri}").attr('OFFREF')
   
          end
          if (!event.at(".//#{attri}").attr('LICTYPE').blank?)
            lic_type = event.at(".//#{attri}").attr('LICTYPE')
    
          end
          if (!event.at(".//#{attri}").attr('FINAL').blank?) 
            final = event.at(".//#{attri}").attr('FINAL')
    
          end
        end
        i+=1
      end
     @data = Status.new(
     :gaz_no => gaz_no,
     
     :int_off => int_off,
     
     :not_date => not_date,
    
     :o_gaz_no => o_gaz_no,
     
     :o_pub_date => o_pub_date,
    
     :pub_date => pub_date,
    
     :desig_un_proto => despg,
     
     :desig_u_proto_9sexies => despg2,
     
     :desig_contract_par_code => dcpcd,
    
     :eff_reg_date => regedat,
     
     :rec_reg_date => regrdat,
     
     :doc_id => doc_id,
     
     :all_goods_and_ser_indi => all_gsi,
     
     :lice_all_desig_parties => all_off,
    
     :hol_reff => hol_ref,
    
    :off_ref => off_ref,
   
    :lic_type => lic_type,
    
     :final => final 
    
            )
    if @data.save
        puts "Status Success"
    else
        puts "This didn't save"
    end
  
    if !event.at('.//CURRENT//HOLGR//NAME').blank?
       hname = event.at('.//CURRENT//HOLGR//NAME').text
    end
    if !event.at('.//CURRENT//HOLGR//ADDRESS').blank?
       address = event.at('.//CURRENT//HOLGR//ADDRESS').text
    end
    if !event.at('.//CURRENT//HOLGR//ENTNATL').blank?
       entitlement = event.at('.//CURRENT//HOLGR//ENTNATL').text
    end
    @data = HoldersDetail.new(
        
    :not_lang      => event.at('.//CURRENT//HOLGR').attr('NOTLANG'),
    :name          => hname,
    :address       => address,
    :entitlement   => entitlement
       
            )
  
    
    if @data.save
        puts "Holders Details Success"
    else
        puts "This didn't save"
    end

    if !event.at('.//CURRENT//REPGR//NAME').blank?
      rname = event.at('.//CURRENT//REPGR//NAME').text
    end
    if !event.at('.//CURRENT//REPGR//ADDRESS').blank?
      raddress = event.at('.//CURRENT//REPGR//ADDRESS').text
    end
    if !event.at('.//CURRENT//REPGR//COUNTRY').blank?
      rcountry = event.at('.//CURRENT//REPGR//COUNTRY').text
    end
    @data = ReprDetail.new(
        
    :name         => rname,
    :address      => raddress,
    :country      => rcountry
        
            )
  
    
    if @data.save
        puts "Representatives Details Success"
    else
        puts "This didn't save"
    end
    if !event.at('.//CURRENT//GSTERMEN').blank?
      goods_and_service_eng = event.at('.//CURRENT//GSTERMEN').text
    end
    if !event.at('.//CURRENT//GSTERMFR').blank?
      goods_and_service_fr = event.at('.//CURRENT//GSTERMFR').text
    end
    if !event.at('.//CURRENT//GSTERMES').blank?
      goods_and_service_ = event.at('.//CURRENT//GSTERMES').text
    end
    if !event.at('.//CURRENT//BASREGD').blank?
      reg_date = event.at('.//CURRENT//BASREGD').text
    end
    if !event.at('.//CURRENT//BASREGN').blank?
      reg_no = event.at('.//CURRENT//BASREGN').text
    end
    if !event.at('.//CURRENT//DESPG').blank?
      desig_under_prot = event.at('.//CURRENT//DESPG').text
    end
    if !event.at('.//CURRENT//DESPG2').blank?
      desig_under_prot_9sexies = event.at('.//CURRENT//DESPG2').text
    end
    @data = BasicAppDetail.new(
        
     :goods_and_service_eng   => goods_and_service_eng,
     :goods_and_service_fr    => goods_and_service_fr,
     :goods_and_service_      => goods_and_service_,
     :reg_date                => reg_date,
     :reg_no                  => reg_no,
     :desig_under_prot        => desig_under_prot,
     :desig_under_prot_9sexies=> desig_under_prot_9sexies
        
            )
  
    
    if @data.save
        puts "Basic App Success"
    else
        puts "This didn't save"
    end
    
    @data = Image.new(
        
     :color       => event.at('.//IMAGE').attr('COLOUR'),
     :image_type        =>  event.at('.//IMAGE').attr('TYPE'),
     :name        =>  event.at('.//IMAGE').attr('NAME'),
     :text        =>  event.at('.//IMAGE').attr('TEXT')
            )
      
    if @data.save

        puts "Image Success"
    else
        puts "This didn't save"
    end
  end

end   
end
	
  


