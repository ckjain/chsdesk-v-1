# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#  cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user.add_role :super_admin

user = User.create! :name => 'society_admin', :email => 'society_admin@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user.add_role :society_admin
user = User.create! :name => 'society_team', :email => 'society_team@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user.add_role :society_team
user = User.create! :name => 'society_manager', :email => 'society_manager@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user.add_role :society_manager

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'SuperAdmin', :state => 'active', :email => 'super_admin@chsdesk.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user.add_role :super_admin
user2 = User.create! :name => 'SAadmin', :state => 'active', :email => 'sa_admin@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 1, :confirmed_at => Time.now.utc
puts 'New user created: ' << user2.name
user2.add_role :society_admin
user3 = User.create! :name => 'SAteam', :email => 'sa_team@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 1, :confirmed_at => Time.now.utc
puts 'New user created: ' << user3.name
user3.add_role :society_team
user4 = User.create! :name => 'SAuser', :email => 'sa_user@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 1, :confirmed_at => Time.now.utc
puts 'New user created: ' << user4.name
user5 = User.create! :name => 'OICadmin', :state => 'active', :email => 'oic_admin@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 2, :confirmed_at => Time.now.utc
puts 'New user created: ' << user2.name
user5.add_role :society_admin
user6 = User.create! :name => 'OICteam', :state => 'active', :email => 'oic_team@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 2, :confirmed_at => Time.now.utc
puts 'New user created: ' << user3.name
user6.add_role :society_team
user7 = User.create! :name => 'OICuser', :state => 'active', :email => 'oic_user@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 2, :confirmed_at => DateTime.now
puts 'New user created: ' << user4.name
user8 = User.create! :name => 'BTadmin', :email => 'bt_admin@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 3, :confirmed_at => DateTime.now
puts 'New user created: ' << user2.name
user8.add_role :society_admin
user9 = User.create! :name => 'BTteam', :email => 'bt_team@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 3, :confirmed_at => DateTime.now
puts 'New user created: ' << user3.name
user9.add_role :society_team
user10 = User.create! :name => 'BTuser', :email => 'bt_user@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 3, :confirmed_at => DateTime.now
puts 'New user created: ' << user4.name

society1 = Society.create! :name => 'Samarth Angan CHS', :number_of_flats => 330, :active => true, :society_address_line1 => 'Lokhandwala Complex, K.L.walawalkar road', :society_address_line2 => 'Andheri West', :society_pincode => '400053'
society2 = Society.create! :name => 'Oshiwara ind. Center', :number_of_flats => 270, :active => true, :society_address_line1 => 'Link Road Opp Oshiwara Bus depo', :society_address_line2 => 'Goregaon West', :society_pincode => '400104'
society3 = Society.create! :name => 'Brighton Tower CHS', :number_of_flats => 120, :active => true, :society_address_line1 => 'Lokhandwala Complex, 2nd cross lane', :society_address_line2 => 'Andheri West', :society_pincode => '400053'
puts 'New society created: ' 

Member.create! :name => "SHAGUFTA PASHA SHAIKH", :mobile_phone => "9223421211",:society_id => 4
Member.create! :name => "SULOCHNA SHARMA", :mobile_phone => "98205 93592",:society_id => 5
Member.create! :name => "ASHA AGARWAL", :mobile_phone => "98920 80315",:email_id=> "karan_ag2004@yahoo.com",:society_id => 5
Member.create! :name => "DEEPAK SRICHAND MIRG", :mobile_phone => "98195 48976",:society_id => 5
Member.create! :name => "KAMAL NAYAN MAHESWARI", :mobile_phone => "",:society_id => 5
Member.create! :name => "SACHIN J. AHLUNALIA", :mobile_phone => "98200 86176",:society_id => 5
Member.create! :name => "RACHIT .K.SHARMA", :mobile_phone => "99872 74476",:email_id=> "rsharmas@hotmail.com",:society_id => 5
Member.create! :name => "NITESH MESHWARI", :mobile_phone => "98205 85206",:society_id => 5
Member.create! :name => "DEEPAK DHANJI SHAH", :mobile_phone => "98929 64111",:society_id => 5
Member.create! :name => "SUMIT CHAWLA", :mobile_phone => "98192 34117",:society_id => 5
Member.create! :name => "GIRISH SHAH", :mobile_phone => "9820974999",:society_id => 5
Member.create! :name => "MONA MALHOTRA", :mobile_phone => "9821488816",:society_id => 5
Member.create! :name => "SANJAY BARKATAKI", :mobile_phone => "98206 08561",:society_id => 5
Member.create! :name => "AMARDEEP SINGH HORA", :mobile_phone => "9930120424",:society_id => 0
Member.create! :name => "B B PUNJABI", :mobile_phone => "9892599245",:society_id => 0
Member.create! :name => "INDU WAHAL", :mobile_phone => "93235 44879",:email_id=> "walchem@vsnl.com",:society_id => 6
Member.create! :name => "SUNIL BALI", :mobile_phone => "",:society_id => 6
Member.create! :name => "DHARAM GULATI", :mobile_phone => "98200 57577",:email_id=> "dharamgulati@gmail.com",:society_id => 6
Member.create! :name => "MUKESH SANGVI", :mobile_phone => "98690 31068",:email_id=> "rajrajeshwari@hotmail.co",:society_id => 6
Member.create! :name => "SHYAM KARKERA", :mobile_phone => "98200 52389",:society_id => 6
Member.create! :name => "MUKESH M. KAPADIA", :mobile_phone => "98203 08617",:society_id => 6
Member.create! :name => "KESHAV KARKERA", :mobile_phone => "98200 57729",:society_id => 6
Member.create! :name => "MOTWANI RAM PARSHOTAM", :mobile_phone => "98210 84848",:society_id => 6
Member.create! :name => "HEMANT HASMUKHRAI SHAH", :mobile_phone => "98201 60229",:society_id => 6
Member.create! :name => "UMESH.K.SHRIYAN", :mobile_phone => "98690 68597",:society_id => 6
Member.create! :name => "SHAH ATUL RAMANLAL", :mobile_phone => "98200 47466",:society_id => 6
Member.create! :name => "AKHILESH .R.JAIN", :mobile_phone => "",:society_id => 6
Member.create! :name => "TAHERALI A BAHRAINWLA", :mobile_phone => "",:society_id => 6
Member.create! :name => "KRISH SHYAM KARKERA", :mobile_phone => "98331 05689",:society_id => 6
Member.create! :name => "ZINOBIA THAWANI", :mobile_phone => "98671 07873",:society_id => 6
Member.create! :name => "NIKITA THAWANI", :mobile_phone => "98671 46266",:society_id => 6
Member.create! :name => "GANGADAS RAMJI SANGHVI", :mobile_phone => "97696 96280",:society_id => 6
Member.create! :name => "SHAMMI SAINI", :mobile_phone => "9820796963",:society_id => 6
Member.create! :name => "ZENITA PINTO", :mobile_phone => "98203 16770",:society_id => 6
Member.create! :name => "ROHAN MUKESH SANGHVI", :mobile_phone => "98199 31998",:society_id => 6
Member.create! :name => "HASHIM ADAM YETE", :mobile_phone => "98210 64080",:society_id => 7
Member.create! :name => "PATEL ARVIND DEVJI", :mobile_phone => "982004 48511",:society_id => 7
Member.create! :name => "SHRI DEVJI BHAI.B.PATEL", :mobile_phone => "98207 62200",:society_id => 7
Member.create! :name => "NARAYAN.P.SHETTY", :mobile_phone => "",:society_id => 7
Member.create! :name => "PATEL PRAGJI SAVJI", :mobile_phone => "98198 55031",:society_id => 7
Member.create! :name => "HARESH LAXMAN PATEL", :mobile_phone => "",:society_id => 7
Member.create! :name => "JAYESH LAXMAN PATEL", :mobile_phone => "",:society_id => 7
Member.create! :name => "SAVITA LAXMAN PATEL", :mobile_phone => "",:society_id => 7
Member.create! :name => "NIZAMALI YASIN ALI KHAN", :mobile_phone => "98200 66555",:society_id => 7
Member.create! :name => "SAIF ALI NIZAM ALI KHAN", :mobile_phone => "98200 85577",:society_id => 7
Member.create! :name => "VISHAL MADANLAL", :mobile_phone => "98203 42908",:society_id => 7
Member.create! :name => "CHARANJIT SINGH BHASIN", :mobile_phone => "",:society_id => 7
Member.create! :name => "HARSHIL A PATEL", :mobile_phone => "",:society_id => 7
Member.create! :name => "SHRI MANOJ PUNJALAL PATEL", :mobile_phone => "98194 58194",:email_id=> "manojppatel@hotmail.com",:society_id => 8
Member.create! :name => "SHRI PUNJALAL RANCHHOD PATEL", :mobile_phone => "98200 61583",:society_id => 8
Member.create! :name => "ASHOK B.KHANDELWAL", :mobile_phone => "",:society_id => 9
Member.create! :name => "PREM TOLARAM AJWANI", :mobile_phone => "98200 70408",:society_id => 9
Member.create! :name => "ISHWAR.J.THADANI", :mobile_phone => "98201 79008",:society_id => 9
Member.create! :name => "MUKESH RAM GEHANI", :mobile_phone => "",:society_id => 9
Member.create! :name => "BHALLA HAR DYAL", :mobile_phone => "",:society_id => 9
Member.create! :name => "BHUSHAN SARAIYA", :mobile_phone => "93230 10333",:society_id => 9
Member.create! :name => "RITESH J RAJANI", :mobile_phone => "98206 06636",:society_id => 9
Member.create! :name => "LAKHANI SALIM HIRJI", :mobile_phone => "98200 12102",:email_id=> "walkoverindia@hotmail.com",:society_id => 9
Member.create! :name => "ASHUTOSH SRIVASTAVA", :mobile_phone => "",:society_id => 9
Member.create! :name => "NITI SHARMA", :mobile_phone => "98707 07828",:society_id => 9
Member.create! :name => "JEETENDRA AJWANI", :mobile_phone => "98196 90647",:email_id=> "jet_ra@hotmail.com",:society_id => 9
Member.create! :name => "HEENA P AJWANI", :mobile_phone => "9820659217",:society_id => 9
Member.create! :name => "RACHNA MODLANI", :mobile_phone => "9820086662",:society_id => 9
Member.create! :name => "RAM BULCHAND GEHANI", :mobile_phone => "",:society_id => 9
Member.create! :name => "J JAGDISH RAJANI", :mobile_phone => "92234 79687",:society_id => 9
Member.create! :name => "SHIVANGEE J RAJANI", :mobile_phone => "92234 79687",:society_id => 9
Member.create! :name => "VINEETA R.DOSHI", :mobile_phone => "",:society_id => 9
Member.create! :name => "BECHAR KHETA PATEL", :mobile_phone => "98212 83601",:email_id=> "info@vego.co.in",:society_id => 10
Member.create! :name => "WALTER.M.PINTO", :mobile_phone => "98202 96227",:email_id=> "mikepinto555@hotmail.com",:society_id => 11
Member.create! :name => "YATIN G. HATTIANGADI", :mobile_phone => "93232 58587",:society_id => 11
Member.create! :name => "REJI MATHEW JACOB", :mobile_phone => "98213 70494",:society_id => 11
Member.create! :name => "THAKKAR PRAVIN .B.", :mobile_phone => "98200 29223",:society_id => 11
Member.create! :name => "PANKAJ TANDON", :mobile_phone => "98201 29761",:society_id => 11
Member.create! :name => "JOHN JUMES", :mobile_phone => "",:society_id => 11
Member.create! :name => "MONIA BITRA", :mobile_phone => "98201 36524",:society_id => 11
Member.create! :name => "KOMAL C. MAHBUBANI", :mobile_phone => "98212 75039",:society_id => 11
Member.create! :name => "SOELA JOSHI", :mobile_phone => "93223 31705",:society_id => 11
Member.create! :name => "RAJENDRA .N.RAJU", :mobile_phone => "98200 25633",:society_id => 11
Member.create! :name => "NAND KISHORE SHAH", :mobile_phone => "",:society_id => 11
Member.create! :name => "PRAKASH JIANDUNI", :mobile_phone => "",:society_id => 11
Member.create! :name => "SHARAD JAGTIANI", :mobile_phone => "98203 39138",:society_id => 11
Member.create! :name => "PADMAJA S. PUNDE", :mobile_phone => "98209 86594",:society_id => 11
Member.create! :name => "MURALI NAIR", :mobile_phone => "98207 43494",:email_id=> "muralinair9@gmail.com",:society_id => 11
Member.create! :name => "DILIP KUMAR AGRAWAL", :mobile_phone => "98336 72336",:society_id => 11
Member.create! :name => "SHAHANI NARI JETHANAND", :mobile_phone => "96191 17720",:society_id => 11
Member.create! :name => "GOPAL K.KAPOOR", :mobile_phone => "98206 25172",:email_id=> "gkkapoor19@yahoo.com",:society_id => 11
Member.create! :name => "LOURDUSWAMY REDDY", :mobile_phone => "98201 39928",:society_id => 11
Member.create! :name => "ANIL SHANI", :mobile_phone => "98205 99660",:society_id => 11
Member.create! :name => "NUZHAT SYED", :mobile_phone => "98204 01913",:email_id=> "nuzhatsyed@gmail.com",:society_id => 11
Member.create! :name => "HARPREET S ANAND", :mobile_phone => "9820884410",:society_id => 11
Member.create! :name => "DINYAR GOSHTASEBI", :mobile_phone => "9820253487",:society_id => 11
Member.create! :name => "GIRISH KUMAR B. INNANI", :mobile_phone => "98219 30839",:society_id => 11
Member.create! :name => "TONY SEQUEIRA", :mobile_phone => "98700 96696",:society_id => 12
Member.create! :name => "ANIL KUMAR MENON", :mobile_phone => "98201 40030",:email_id=> "anilmenon@indiatimes.com",:society_id => 13
Member.create! :name => "K.SUDHIR SRIDHAR", :mobile_phone => "93222 65173",:email_id=> "sudhirhsbc@rediffmail.com",:society_id => 13
Member.create! :name => "AMIT BISWAS", :mobile_phone => "",:society_id => 14
Member.create! :name => "RANBIR SINGH SURI", :mobile_phone => "98200 50097",:society_id => 15
Member.create! :name => "SIDDHARTH S. BEHERAY", :mobile_phone => "98699 76677",:society_id => 15
Member.create! :name => "KIRAN CHHABRIA", :mobile_phone => "98205 60250",:society_id => 15
Member.create! :name => "CAPT ASHOK GOGIA", :mobile_phone => "98212 18469",:email_id=> "ashokgogia@hotmail.com",:society_id => 15
Member.create! :name => "VASANT.M.NAIK", :mobile_phone => "",:society_id => 15
Member.create! :name => "ANIL VOHRA", :mobile_phone => "98201 54290",:society_id => 15
Member.create! :name => "SANJAY MOTI TALREJA", :mobile_phone => "98200 82788",:society_id => 15
Member.create! :name => "MONIKA MOHAN DUDANEY", :mobile_phone => "",:society_id => 15
Member.create! :name => "SUNIL KUMAR", :mobile_phone => "98200 68564",:society_id => 15
Member.create! :name => "GOPALDAS MOHTA", :mobile_phone => "98204 45517",:society_id => 15
Member.create! :name => "AJAY BACHU DOSHI", :mobile_phone => "98929 01280",:email_id=> "ajaydoshi2001@yahoo.com",:society_id => 15
Member.create! :name => "RONAK AJAY DOSHI", :mobile_phone => "99208 11053",:email_id=> "ronak.757@gmai.com",:society_id => 15
Member.create! :name => "MS M V NAIK", :mobile_phone => "",:society_id => 15
Member.create! :name => "DEEPAK RANIWALA", :mobile_phone => "98210 36549",:society_id => 15
Member.create! :name => "TEJUS NAIK", :mobile_phone => "",:society_id => 15
Member.create! :name => "RAKESH RATHI", :mobile_phone => "98201 51063",:society_id => 15
Member.create! :name => "ASHOK S.CHANDNI", :mobile_phone => "98332 53827",:society_id => 15
Member.create! :name => "SANJAY HANS", :mobile_phone => "98213 01021",:email_id=> "hanssanjay@hotmail.com",:society_id => 15
Member.create! :name => "SUNIL BAJAJ", :mobile_phone => "98202 55877",:email_id=> "taarikabajaj@yahoo.co.in",:society_id => 15
Member.create! :name => "RAJKUMAR BUDHRAJA", :mobile_phone => "98201 20954",:email_id=> "budhraja@umangpharmatech.com",:society_id => 15
Member.create! :name => "SURESH BULCHANDANI", :mobile_phone => "9320692001",:society_id => 15
Member.create! :name => "SHASHI MANDAL", :mobile_phone => "9820857922",:society_id => 15
Member.create! :name => "SANDEEP P ACHARYA", :mobile_phone => "9867056622",:society_id => 15
Member.create! :name => "GARG SUBHASH CHANDRA", :mobile_phone => "",:society_id => 15
Member.create! :name => "GANDHI MIHIR V", :mobile_phone => "98214 30893",:society_id => 15
Member.create! :name => "YESHODDHAR PADMAKAR PHANSE", :mobile_phone => "98210 04312",:society_id => 16
Member.create! :name => "SUNIL SABOO", :mobile_phone => "98206 36277",:email_id=> "saboosunil@hotmail.com",:society_id => 17
Member.create! :name => "AKSHAY BAID", :mobile_phone => "",:society_id => 17
Member.create! :name => "DR.RAMESH T. KUKREJA", :mobile_phone => "98206 98764",:society_id => 17
Member.create! :name => "B.V KRISHNA SHASTRY", :mobile_phone => "98202 30437",:society_id => 17
Member.create! :name => "PANKAJ SURYAKANT DALAL", :mobile_phone => "98200 56831",:society_id => 17
Member.create! :name => "DR.NEETA .N.SANGHVI", :mobile_phone => "98200 25061",:society_id => 17
Member.create! :name => "MAKWANA RASIK NARANDAS", :mobile_phone => "",:society_id => 17
Member.create! :name => "KIRAN J. GHANDIALI", :mobile_phone => "",:society_id => 17
Member.create! :name => "VIJAY .J. PUROHIT", :mobile_phone => "98211 39960",:society_id => 17
Member.create! :name => "NARENDRA CHHAJEN", :mobile_phone => "98210 90999",:society_id => 17
Member.create! :name => "IRSHAD .J. KHANCHEY", :mobile_phone => "",:society_id => 17
Member.create! :name => "VIJAY SINGH BAID", :mobile_phone => "98210 63811",:society_id => 17
Member.create! :name => "MANAKCHAND BAID", :mobile_phone => "98210 11962",:email_id=> "mcbaid@hotmail.com",:society_id => 17
Member.create! :name => "HEMANT M. KHATAN", :mobile_phone => "98203 78449",:society_id => 17
Member.create! :name => "VIKAS MAHESHWARI", :mobile_phone => "98210 35220",:society_id => 17
Member.create! :name => "VINAY V. PARAKH", :mobile_phone => "",:society_id => 17
Member.create! :name => "MANOJ SHAW", :mobile_phone => "98212 32308",:society_id => 17
Member.create! :name => "RESHMA ASHOK PUNJABI", :mobile_phone => "98218 77374",:society_id => 17
Member.create! :name => "HARVINDERSINGH ARORA", :mobile_phone => "93241 19345",:society_id => 17
Member.create! :name => "RAM G KUMAR", :mobile_phone => "98192 99012",:society_id => 17
Member.create! :name => "MANISH GHIYA", :mobile_phone => "98198 62185",:society_id => 17
Member.create! :name => "AMAR BAID", :mobile_phone => "98705 27022",:society_id => 17
Member.create! :name => "BIJAY PARAKH", :mobile_phone => "",:society_id => 17
Member.create! :name => "VIVEK PARAKH", :mobile_phone => "9324169393",:society_id => 17
Member.create! :name => "DISHA V PATEL", :mobile_phone => "9769669618",:society_id => 17
Member.create! :name => "AALIAH IRSHAR KHANCHEY", :mobile_phone => "",:society_id => 17
Member.create! :name => "BAZIL I KHANCHEY", :mobile_phone => "9820028976",:society_id => 17
Member.create! :name => "AYYAZ J KHANCHEY", :mobile_phone => "9820475864",:society_id => 17
Member.create! :name => "PUNJABI A. J.", :mobile_phone => "98214 49787",:email_id=> "ajp@jmbaxi.com",:society_id => 17
Member.create! :name => "NIRMAL KUMAR SETH", :mobile_phone => "98208 10075",:email_id=> "nirmalseth@hotmail.com",:society_id => 17
Member.create! :name => "MR KAMAL SINGHANIA", :mobile_phone => "98208 03262",:society_id => 17
Member.create! :name => "RAVI MAHESHWARI", :mobile_phone => "98211 52028",:society_id => 17
Member.create! :name => "PRASHANT B SRINIVAS", :mobile_phone => "",:society_id => 17
Member.create! :name => "SIDDHARTH M DALAL", :mobile_phone => "98219 05818",:society_id => 17
Member.create! :name => "HARESH C. RAMCHARDANI", :mobile_phone => "98202 29559",:society_id => 18
Member.create! :name => "HARIBHAI RAMJI PATEL", :mobile_phone => "93226 84956",:society_id => 18
Member.create! :name => "CHANDRAKANT KESARIA", :mobile_phone => "98210 34465",:society_id => 18
Member.create! :name => "SANJAY KESARIA", :mobile_phone => "98200 63314",:society_id => 18
Member.create! :name => "BANTHIA SUDHIR VIMAL SINH", :mobile_phone => "98200 04700",:society_id => 18
Member.create! :name => "SIMA VIJAY KABRA", :mobile_phone => "98200 23956",:society_id => 18
Member.create! :name => "MANSINGH CHAWLA", :mobile_phone => "",:society_id => 18
Member.create! :name => "BHARAT,A,SHAH", :mobile_phone => "98211 08475",:society_id => 18
Member.create! :name => "MUKESH NAHATA", :mobile_phone => "98200 62090",:society_id => 18
Member.create! :name => "KAKU JAWAHAR .M.", :mobile_phone => "98205 27798",:society_id => 18
Member.create! :name => "SANJAY.G.HINDUJA", :mobile_phone => "",:society_id => 18
Member.create! :name => "KOMILLA BAINS", :mobile_phone => "9820293653",:society_id => 18
Member.create! :name => "PREETAM KALASKAR", :mobile_phone => "9987065380",:society_id => 18
Member.create! :name => "VIJAY MANSINGH CHAWLA", :mobile_phone => "98200 40085",:society_id => 18
Member.create! :name => "GEETA BANGERA", :mobile_phone => "98201 78980",:society_id => 18
Member.create! :name => "ATUL ISHWAR GOLE", :mobile_phone => "98210 30832",:society_id => 18
Member.create! :name => "ASHISH RATILAL AJMERA", :mobile_phone => "98200 65406",:society_id => 18
Member.create! :name => "DHAVAL BHARAT SHAH", :mobile_phone => "98196 92728",:society_id => 18
Member.create! :name => "CHINTAN C KESARIA", :mobile_phone => "98210 34465",:society_id => 18
Member.create! :name => "CHANDERMOHAN BHUTANI", :mobile_phone => "98202 68272",:email_id=> "mayank@gmindustries.net",:society_id => 18
Member.create! :name => "SUDHIR B PAI", :mobile_phone => "98676 45042",:society_id => 18
Member.create! :name => "SATISH M BHANDARY", :mobile_phone => "98207 8459",:society_id => 18
Member.create! :name => "RAJENDRA M KAKU", :mobile_phone => "98210 34601",:society_id => 18
Member.create! :name => "HARJIT AKHAI PATEL", :mobile_phone => "98200 00584",:email_id=> "info@vego.co.in",:society_id => 18
Member.create! :name => "RICKEN H RAMCHANDANI", :mobile_phone => "98202 29559",:society_id => 18
Member.create! :name => "PANKAJ GUPTA", :mobile_phone => "",:society_id => 18
Member.create! :name => "S.R.BELUR", :mobile_phone => "",:society_id => 19
Member.create! :name => "RAJENDRA KHETPAL", :mobile_phone => "91764 76653",:society_id => 19
Member.create! :name => "PAWANBIR SINGH VIRK", :mobile_phone => "98200 54340",:society_id => 19
Member.create! :name => "NEWAND RAM KHETPAL", :mobile_phone => "",:society_id => 19
Member.create! :name => "MAHESHWARI AJAY .S.", :mobile_phone => "98202 39167",:email_id=> "ambluewater@gmail.com",:society_id => 19
Member.create! :name => "DR.DEEPAK .S.BELUR", :mobile_phone => "",:society_id => 19
Member.create! :name => "BHAGWAN DAS S. PARWANI", :mobile_phone => "",:society_id => 19
Member.create! :name => "MUKESH DAMODER PARMAR", :mobile_phone => "",:society_id => 19
Member.create! :name => "MANOJ DAMODER PARMAR", :mobile_phone => "98201 17070",:email_id=> "lgpcomponents@hotmail.com",:society_id => 19
Member.create! :name => "ANIL K. CHAUDHARY", :mobile_phone => "98200 04646",:society_id => 19
Member.create! :name => "PRADEEP.M.HEBLE", :mobile_phone => "98200 72402",:email_id=> "pradeepheble@yahoo.com",:society_id => 19
Member.create! :name => "NAVIN .H. MAKHIJAIN", :mobile_phone => "98204 51093",:society_id => 19
Member.create! :name => "NARESH .R.TOTLA", :mobile_phone => "",:society_id => 19
Member.create! :name => "KAVITA SHRIRAM SINGI", :mobile_phone => "98201 24501",:society_id => 19
Member.create! :name => "RAMAVTAR TOTLA", :mobile_phone => "",:society_id => 19
Member.create! :name => "LALIT SURENDRA SHAH", :mobile_phone => "98200 31891",:email_id=> "lalit_shah@yahoo.com",:society_id => 19
Member.create! :name => "RAJESH TOTLA", :mobile_phone => "",:society_id => 19
Member.create! :name => "REENA PESHWARA", :mobile_phone => "98335 01375",:email_id=> "reenapeshawaria@gmail.com",:society_id => 19
Member.create! :name => "SUDHANSHU MAHESHWARI", :mobile_phone => "9820239167",:society_id => 19
Member.create! :name => "SHISHIR MAHESHWARI", :mobile_phone => "9820239168",:society_id => 19
Member.create! :name => "URVASHI SHAH", :mobile_phone => "9769733154",:society_id => 19
Member.create! :name => "VEDIKA L SHAH", :mobile_phone => "9920934785",:society_id => 19
Member.create! :name => "SHWETANK MAHESHWARI", :mobile_phone => "",:society_id => 19
Member.create! :name => "SHASHANK MAHESHWARI", :mobile_phone => "",:society_id => 19
Member.create! :name => "RAM DAYAL SABHARWAL", :mobile_phone => "98922 54880",:society_id => 19
Member.create! :name => "ATIF N. KAKAJIWALLA", :mobile_phone => "98200 44966",:society_id => 19
Member.create! :name => "ARUN M KAPNADAK", :mobile_phone => "99202 93246",:society_id => 19
Member.create! :name => "ADITYA PRADEEP HEBLE", :mobile_phone => "98205 70668",:society_id => 19
Member.create! :name => "KUNAL PRADEEP HEBLE", :mobile_phone => "98202 84402",:society_id => 19
Member.create! :name => "NEHA KRIPLANI", :mobile_phone => "9820907413",:society_id => 20
Member.create! :name => "PRASANNA SHUKLA", :mobile_phone => "98205 84406",:society_id => 21
Member.create! :name => "ANIL .P. MANYAL", :mobile_phone => "98210 93577",:society_id => 21
Member.create! :name => "LAXMAN.A.FATNANI", :mobile_phone => "98200 77106",:society_id => 22
Member.create! :name => "NADIERLALI H. JAIRAJ", :mobile_phone => "98210 29488",:society_id => 22
Member.create! :name => "VEGISTTY BHASKARA RAO", :mobile_phone => "93222 67919",:email_id=> "girithechamp@yahoo.com",:society_id => 22
Member.create! :name => "MAHESH.G.HINDUJA", :mobile_phone => "98206 55001",:email_id=> "mghinduja@yahoo.com",:society_id => 22
Member.create! :name => "SAI MANHOR.I.MISHTRY", :mobile_phone => "93234 59876",:email_id=> "manharmistry@yahoo.co.in",:society_id => 22
Member.create! :name => "SAJNANEY PRASSANA KUMAR", :mobile_phone => "98200 03559",:society_id => 22
Member.create! :name => "GURMUKH BATHIJA", :mobile_phone => "",:society_id => 22
Member.create! :name => "JAYA .N.VALECHA", :mobile_phone => "98203 02512",:society_id => 22
Member.create! :name => "A.H.GAJRA", :mobile_phone => "98202 18014",:society_id => 22
Member.create! :name => "DILIP GHANSHAM PUNJABI", :mobile_phone => "98190 11309",:society_id => 22
Member.create! :name => "GAUTAM ROY", :mobile_phone => "98208 56097",:society_id => 22
Member.create! :name => "RAJU SAMTANI", :mobile_phone => "9322883612",:society_id => 22
Member.create! :name => "DR.MURARI SURESH NANAVATI", :mobile_phone => "98200 35744",:society_id => 22
Member.create! :name => "PARAS MAHENDRA DOSHI", :mobile_phone => "98210 12516",:email_id=> "parasdoshi09@gmail.com",:society_id => 22
Member.create! :name => "SURENDRA KUMAR KOHLI", :mobile_phone => "",:society_id => 22
Member.create! :name => "MUKESH GUPTA", :mobile_phone => "",:society_id => 22
Member.create! :name => "ARUN DEWAN", :mobile_phone => "98695 77699",:society_id => 22
Member.create! :name => "JAIPRAKASH H KEWALRAMANI", :mobile_phone => "93238 91007",:society_id => 22
Member.create! :name => "PANKAJ J KEWALRAMANI", :mobile_phone => "98925 47804",:email_id=> "pankaj_kewalo07@yahoo.co.in",:society_id => 22
Member.create! :name => "DEEPAK MOTIRAM CHAWLA", :mobile_phone => "98204 86484",:society_id => 22
Member.create! :name => "CHIRAG S CHHABRIA", :mobile_phone => "98201 94725",:society_id => 22
Member.create! :name => "VISHAL I KEWALRAMANI", :mobile_phone => "98925 47801",:society_id => 22
Member.create! :name => "JANVI MEHTA", :mobile_phone => "9323187478",:society_id => 23
Member.create! :name => "DILIP MALHOTRA", :mobile_phone => "98200 61880",:society_id => 24
Member.create! :name => "POOJA .K.MOORJANI", :mobile_phone => "99203 08623",:society_id => 24
Member.create! :name => "KAWARJIT SINGH KHURANA", :mobile_phone => "98200 81395",:society_id => 24
Member.create! :name => "KULMEHER SINGH KHURANA", :mobile_phone => "98200 81392",:society_id => 24
Member.create! :name => "SIMRAN KAUR KHURANA", :mobile_phone => "98201 29841",:society_id => 24
Member.create! :name => "AARTI MEHTA", :mobile_phone => "98203 10583",:society_id => 24
Member.create! :name => "SURIKANT DALVIC", :mobile_phone => "98206 16814",:society_id => 24
Member.create! :name => "BIDURKHA SAHOO", :mobile_phone => "98201 95402",:society_id => 24
Member.create! :name => "VISHAL MEHRA", :mobile_phone => "98201 50849",:society_id => 24
Member.create! :name => "SARTAJ SINGH DHILLON", :mobile_phone => "98199 31956",:society_id => 24
Member.create! :name => "BALJIT KAUR", :mobile_phone => "98202 81202",:email_id=> "kaurbaljit@in.com",:society_id => 24
Member.create! :name => "SHRI VARADE MANOHAR GANPAT", :mobile_phone => "98210 67382",:society_id => 24
Member.create! :name => "RAMCHAND BHATIA", :mobile_phone => "98334 77522",:society_id => 24
Member.create! :name => "DEEPAK BHATIA", :mobile_phone => "98198 18455",:society_id => 24
Member.create! :name => "JAYANT BHATIA", :mobile_phone => "99202 99331",:society_id => 24
Member.create! :name => "AKASH MALHOTRA", :mobile_phone => "98200 95259",:email_id=> "malhotraakash19@hotmail.com",:society_id => 24
Member.create! :name => "KAMLESH KESHAVLAL ZATAKIA", :mobile_phone => "9321114899",:society_id => 24
Member.create! :name => "BAHETI VASUDEO", :mobile_phone => "9322677871",:society_id => 24
Member.create! :name => "RAKESH SARANG", :mobile_phone => "98202 84248",:society_id => 24
Member.create! :name => "MR KARUNAKAR SHETTY", :mobile_phone => "98203 57696",:society_id => 24
Member.create! :name => "HARESH N AWATRAMANI", :mobile_phone => "98200 13493",:society_id => 24
Member.create! :name => "ABHISHEK CHAMRIYA", :mobile_phone => "9322258252",:society_id => 3
Member.create! :name => "PRAKASH THAKAR", :mobile_phone => "9820078255",:society_id => 0
Member.create! :name => "BHARAT BHUSHAN POPLI", :mobile_phone => "98200 41183",:society_id => 3
Member.create! :name => "CAPT TARLOCHAN SINGH KHARA", :mobile_phone => "",:society_id => 3
Member.create! :name => "VIJAY KUMAR MAGAN", :mobile_phone => "98200 93223",:society_id => 3
Member.create! :name => "ARJUN BHOJRAJ CHACHLANI", :mobile_phone => "93220 20204",:society_id => 3
Member.create! :name => "NAVAZ KEKI MEHERJI", :mobile_phone => "",:society_id => 3
Member.create! :name => "MAYUR NARHARI MALVIA", :mobile_phone => "98214 89900",:email_id=> "mayur2004@rediffmail.com",:society_id => 3
Member.create! :name => "DINESH NARHARI MALVIA", :mobile_phone => "",:society_id => 3
Member.create! :name => "RAKESH AGARWAL", :mobile_phone => "98212 58400",:society_id => 3
Member.create! :name => "SANTOSH .S.GOENKA", :mobile_phone => "98201 21224",:society_id => 3
Member.create! :name => "SHREE GOPAL KABRA", :mobile_phone => "",:society_id => 3
Member.create! :name => "MUKESH .K.KEWALRAMANI", :mobile_phone => "",:society_id => 3
Member.create! :name => "SURESH .K.KEWALRAMANI", :mobile_phone => "",:society_id => 3
Member.create! :name => "NARAYAN .R.MALPANI", :mobile_phone => "98214 13413",:society_id => 3
Member.create! :name => "BIHARILAL .R. MALPANI", :mobile_phone => "98211 41567",:society_id => 3
Member.create! :name => "SATISH KUMAR DHINGRA", :mobile_phone => "98200 64713",:society_id => 3
Member.create! :name => "MALIK H.K.S", :mobile_phone => "98211 65851",:society_id => 3
Member.create! :name => "GURUBAX SINGH BHAMRA", :mobile_phone => "98211 52410",:society_id => 3
Member.create! :name => "AMIRVDDIN F.LOKHANDWALA", :mobile_phone => "99200 35853",:society_id => 3
Member.create! :name => "BASANT CHAWLA", :mobile_phone => "98200 06218",:email_id=> "petal.ba@gmail.com",:society_id => 3
Member.create! :name => "RAJENDRA KUMAR ARORA", :mobile_phone => "98200 60965",:society_id => 3
Member.create! :name => "PRADEEP KUMAR ARORA", :mobile_phone => "",:society_id => 3
Member.create! :name => "SHYAM NARESH PATEL", :mobile_phone => "99200 10637",:society_id => 3
Member.create! :name => "PRAMOD DAYABHAI PANCHAL", :mobile_phone => "9821 70540",:society_id => 3
Member.create! :name => "NARENDRA .R. GUPTA", :mobile_phone => "98200 80299",:society_id => 3
Member.create! :name => "VIJAY MIRCHANDANI", :mobile_phone => "",:society_id => 3
Member.create! :name => "SUSHIL DALMIA", :mobile_phone => "98202 50288",:society_id => 3
Member.create! :name => "KAMAL DALMIA", :mobile_phone => "",:society_id => 3
Member.create! :name => "VIKAS MITTAL", :mobile_phone => "",:society_id => 3
Member.create! :name => "P.K KUMAR", :mobile_phone => "98200 98710",:society_id => 3
Member.create! :name => "VIRIN KUMAR JAIN", :mobile_phone => "98205 56659",:society_id => 3
Member.create! :name => "RAJU.V.MORDANI", :mobile_phone => "98200 85222",:society_id => 3
Member.create! :name => "CHANDRAKANTN R JAIN", :mobile_phone => "98202 80882",:society_id => 3
Member.create! :name => "GURCHARAN SINGH", :mobile_phone => "93242 00400",:society_id => 3
Member.create! :name => "SRINIVAS S.", :mobile_phone => "98196 14096",:society_id => 3
Member.create! :name => "ALKESH K MAKHIJA", :mobile_phone => "98206 15023",:society_id => 3
Member.create! :name => "MOHANLAL V.JESWANI", :mobile_phone => "98191 22642",:society_id => 3
Member.create! :name => "SARBANI GHOSH", :mobile_phone => "98212 41917",:society_id => 3
Member.create! :name => "AMRESH MOHAN JALANI", :mobile_phone => "99302 61012",:email_id=> "amreshjalali@yahoo.com",:society_id => 3
Member.create! :name => "MR M R VARGHESE", :mobile_phone => "98200 29110",:society_id => 3
Member.create! :name => "SHAM S ROHRA", :mobile_phone => "98692 18424",:society_id => 3
Member.create! :name => "ARUN KHANNA", :mobile_phone => "98203 23579",:society_id => 3
Member.create! :name => "MUKUL JAIN", :mobile_phone => "98670 83223",:society_id => 3
Member.create! :name => "ANAND SHRIVASTAVA", :mobile_phone => "98200 24198",:society_id => 3
Member.create! :name => "JEETENDRA TANEJA", :mobile_phone => "98200 59843",:email_id=> "jstaneja@sify.com",:society_id => 3
Member.create! :name => "HARISH KUMAR ARORA", :mobile_phone => "98200 44071",:society_id => 3
Member.create! :name => "VINAY MITTAL", :mobile_phone => "93206 77090",:email_id=> "vinaymittal_1972@rediffmail.com",:society_id => 3
Member.create! :name => "DEEPAK KATARIA", :mobile_phone => "98194 96791",:society_id => 3
Member.create! :name => "LAL KATARIA", :mobile_phone => "92241 33902",:society_id => 3
Member.create! :name => "SHAMJI D CHAMRIYA", :mobile_phone => "97027 81445",:society_id => 3
Member.create! :name => "SWETA ROOPCHANDANI", :mobile_phone => "98205 92577",:email_id=> "shwetar_00@hotmail.com",:society_id => 3
Member.create! :name => "VIRAF M. MIRZAN", :mobile_phone => "98200 77741",:email_id=> "viraf_mirzan@hotmail.com",:society_id => 3
Member.create! :name => "AJAY MURARILAL MITTAL", :mobile_phone => "9826257151",:society_id => 3
Member.create! :name => "MITALI N GUPTA", :mobile_phone => "9820080299",:society_id => 3
Member.create! :name => "PRAMOD PARASRAMPURI", :mobile_phone => "9820080350",:society_id => 3
Member.create! :name => "SUPRIYA GOENKA", :mobile_phone => "9833009268",:society_id => 3
Member.create! :name => "HEMANT RUSTAGI", :mobile_phone => "9820537530",:society_id => 3
Member.create! :name => "PRATEEK MALPANI", :mobile_phone => "9833109210",:society_id => 3
Member.create! :name => "SHALEEN MALPANI", :mobile_phone => "9833259525",:society_id => 3
Member.create! :name => "ARNAV MAYUR MALVIA", :mobile_phone => "9821489900",:society_id => 3
Member.create! :name => "PRATHAM MALVIA", :mobile_phone => "9821258400",:society_id => 3
Member.create! :name => "SHUBHAM JAIN", :mobile_phone => "9819723229",:society_id => 3
Member.create! :name => "ASHIMA JAIN", :mobile_phone => "9930120089",:society_id => 3
Member.create! :name => "PREM KUMAR MANGHANI", :mobile_phone => "98200 43661",:society_id => 3
Member.create! :name => "SANGEETA SINGH", :mobile_phone => "98212 99047",:society_id => 3
Member.create! :name => "SHILPA PRANNATH DESAI", :mobile_phone => "98202 28808",:society_id => 3
Member.create! :name => "DHIRAJ K PATHAK", :mobile_phone => "",:society_id => 3
Member.create! :name => "PRATISH N GUPTA", :mobile_phone => "",:society_id => 3
Member.create! :name => "VINOD S GOSWAMI", :mobile_phone => "98203 07974",:society_id => 3
Member.create! :name => "NELSON VARGHESS", :mobile_phone => "98206 10380",:email_id=> "nelson@emmar.com",:society_id => 3
Member.create! :name => "PAVAN KUMAR .M. MALPANI", :mobile_phone => "98212 11462",:society_id => 3
Member.create! :name => "MRS. JYOTI PUNJABI", :mobile_phone => "98339 17131",:society_id => 3
Member.create! :name => "VIJAY KUMAR ROOPCHANDANI", :mobile_phone => "98193 38880",:society_id => 26
Member.create! :name => "NARENDRA GOEL", :mobile_phone => "",:society_id => 26
Member.create! :name => "NEELESH N.GOEL", :mobile_phone => "",:society_id => 26
Member.create! :name => "PRIYAVRAT GOENKA", :mobile_phone => "98211 40571",:email_id=> "pgoenka@gmail.com",:society_id => 26
Member.create! :name => "SUDEEP MALHOTRA", :mobile_phone => "98200 20862",:email_id=> "smg@vsnl.com",:society_id => 26
Member.create! :name => "ATUL AGARWAL", :mobile_phone => "98200 63639",:society_id => 26
Member.create! :name => "CHHOTELAL AGARWAL", :mobile_phone => "98202 95157",:society_id => 26
Member.create! :name => "MRS RAJ K THAKUR", :mobile_phone => "",:society_id => 26
Member.create! :name => "VRIJESH AGARWAL", :mobile_phone => "98202 34158",:society_id => 26
Member.create! :name => "SATYAM DINESH BANSAL", :mobile_phone => "98200 96985",:email_id=> "meterofilms@yahoo.com",:society_id => 27
Member.create! :name => "DINESH MOHAN BANSAL", :mobile_phone => "98200 76988",:email_id=> "meterofilms@yahoo.com",:society_id => 27
Member.create! :name => "DEEPAK MOHAN", :mobile_phone => "98203 49098",:society_id => 27
Member.create! :name => "DEVANSHI MEHTA", :mobile_phone => "",:society_id => 27
Member.create! :name => "UJJVAL MEHTA", :mobile_phone => "9821053908",:society_id => 27
Member.create! :name => "NAVEEN B GAGWANI", :mobile_phone => "9920945194",:society_id => 27
Member.create! :name => "SAMEER .M. MEHTA", :mobile_phone => "98210 53908",:society_id => 27
Member.create! :name => "B.V GAGWANI", :mobile_phone => "97693 64739",:society_id => 27
Member.create! :name => "MOTI RAM.G.CHAVLA", :mobile_phone => "98338 89754",:email_id=> "laxmihsg@rediffmail.com",:society_id => 27
Member.create! :name => "VASANTRAI .J.SETH", :mobile_phone => "",:society_id => 27
Member.create! :name => "PARESH V. SETH", :mobile_phone => "99679 79584",:society_id => 27
Member.create! :name => "MANOJ SAINANI", :mobile_phone => "98700 88888",:society_id => 27
Member.create! :name => "DISHA ASHOK SAHETYA", :mobile_phone => "98200 88638",:society_id => 27
Member.create! :name => "AVINASH SUSHIL WANVARI", :mobile_phone => "98194 57997",:society_id => 27
Member.create! :name => "RUMMY KHANNA", :mobile_phone => "98204 57112",:society_id => 27
Member.create! :name => "JAGDISH S BANSAL", :mobile_phone => "92232 24944",:society_id => 27
Member.create! :name => "NAREN PRITAM HARWANI", :mobile_phone => "98926 66208",:society_id => 27
Member.create! :name => "HARSHAD I. GORADIA", :mobile_phone => "98211 33448",:email_id=> "harshad.g@hotmail.com",:society_id => 27
Member.create! :name => "INDER CHAWLA", :mobile_phone => "98200 98765",:society_id => 27
Member.create! :name => "RAM JETHNAND BHAVNANI", :mobile_phone => "98210 65882",:society_id => 27
Member.create! :name => "HITESH RAM BHAVNANI", :mobile_phone => "98210 65882",:society_id => 27
Member.create! :name => "PARESH .I. PANCHAL", :mobile_phone => "98212 12912",:society_id => 27
Member.create! :name => "SOM PARKASH GOEL", :mobile_phone => "98200 45752",:society_id => 27
Member.create! :name => "ABHAY GOEL", :mobile_phone => "98200 45753",:society_id => 27
Member.create! :name => "MUNIZA A. A. KHAN", :mobile_phone => "",:society_id => 27
Member.create! :name => "AMIT.V.KATHURIA", :mobile_phone => "98200 34231",:society_id => 27
Member.create! :name => "AMINA RASHID SHEIKH", :mobile_phone => "",:society_id => 27
Member.create! :name => "JITENDRA VINAYAK THAKARE", :mobile_phone => "98701 98702",:society_id => 27
Member.create! :name => "MOHIT I CHAWLA", :mobile_phone => "93222 39280",:society_id => 27
Member.create! :name => "VIJAY BABULAL VAKHARIA", :mobile_phone => "98201 31606",:society_id => 27
Member.create! :name => "SUSHIL K. WANVARI", :mobile_phone => "98215 22683",:society_id => 27
Member.create! :name => "ASHOK.M.CHAWLA", :mobile_phone => "98212 19754",:society_id => 27
Member.create! :name => "PRITAM MOTIRAM CHAWLA", :mobile_phone => "98201 52043",:email_id=> "laxmihsg@rediffmail.com",:society_id => 27
Member.create! :name => "RAJESH .R.WANVARI", :mobile_phone => "98211 47309",:society_id => 27
Member.create! :name => "DR.VINAY.S.GOEL", :mobile_phone => "98200 57625",:society_id => 27
Member.create! :name => "RAMESH B MASHRU", :mobile_phone => "98210 61493",:society_id => 27
Member.create! :name => "MR BIRSU R MASHRU", :mobile_phone => "",:society_id => 27
Member.create! :name => "PRAVEER SINGH", :mobile_phone => "98193 31263",:society_id => 27
Member.create! :name => "KAWAL.R.VIJAN", :mobile_phone => "",:society_id => 27
Member.create! :name => "ASHOK R. SAHETYA", :mobile_phone => "98200 88638",:society_id => 27
Member.create! :name => "BALRAM H JETHWANEY", :mobile_phone => "",:society_id => 27
Member.create! :name => "ANIL B. JETHWANEY", :mobile_phone => "98200 57719",:society_id => 27
Member.create! :name => "HARESH B. JETHWANEY", :mobile_phone => "98214 14185",:society_id => 27
Member.create! :name => "NISCHAY BANSAL", :mobile_phone => "98206 22248",:email_id=> "nischaybansal@hotmail.com",:society_id => 27
Member.create! :name => "PRADEEP J. RAICHANDANI", :mobile_phone => "98196 56652",:society_id => 27
Member.create! :name => "SUNIL BRIJBHUSHAN MAGO", :mobile_phone => "98201 52433",:society_id => 27
Member.create! :name => "LAXMAN RAMJI PATEL", :mobile_phone => "98207 44332",:society_id => 28
Member.create! :name => "PRAKASH L.BHATIA", :mobile_phone => "",:society_id => 29
Member.create! :name => "KHAN ANSAR AHMED", :mobile_phone => "98200 26561",:society_id => 29
Member.create! :name => "SHRIDHAR POSHETTY RACHERIA", :mobile_phone => "98207 30775",:society_id => 29
Member.create! :name => "VASANT DEVJI PATEL", :mobile_phone => "98200 60670",:society_id => 29
Member.create! :name => "ATTARWALA ABBASI ASGERALI", :mobile_phone => "98201 26980",:society_id => 29
Member.create! :name => "ANIL KUMAR KOCHAR", :mobile_phone => "98212 38924",:society_id => 29
Member.create! :name => "AJAY PARASHAR", :mobile_phone => "98446 13/81",:society_id => 29
Member.create! :name => "ALIASGHAR ATTARWALA", :mobile_phone => "9820145815",:society_id => 29
Member.create! :name => "ALISHA ATTARWALA", :mobile_phone => "9920145815",:society_id => 29
Member.create! :name => "DEEPAK PATEL", :mobile_phone => "9833000815",:society_id => 29
Member.create! :name => "VISHAL KOCHAR", :mobile_phone => "",:society_id => 29
Member.create! :name => "RAHUL P BHATIA", :mobile_phone => "",:society_id => 29
Member.create! :name => "DEVANG V.MEHTA", :mobile_phone => "98204 22965",:email_id=> "amigodvm@vsnl.com",:society_id => 30
Member.create! :name => "ABDUL MUQTADIR BAGBAN", :mobile_phone => "92242 36517",:email_id=> "amb_6177@yahoo.com",:society_id => 30
Member.create! :name => "AMIT VIJAY SIDHWANI", :mobile_phone => "98203 31133",:society_id => 30
Member.create! :name => "MOHAMMUD FAISAL", :mobile_phone => "98670 87861",:society_id => 30
Member.create! :name => "MAHESH P NANWANI", :mobile_phone => "93240 72846",:society_id => 30
Member.create! :name => "ARJAN TOLANI", :mobile_phone => "98217 23775",:society_id => 30
Member.create! :name => "YASHPAL MADAN", :mobile_phone => "98695 64003",:email_id=> "yash@mainstream.in",:society_id => 30
Member.create! :name => "SURAJ NICHNANI", :mobile_phone => "9819047811",:society_id => 30
Member.create! :name => "MIHHIR SHAH", :mobile_phone => "9820432305",:society_id => 30
Member.create! :name => "HITARTH D MEHTA", :mobile_phone => "9820422965",:society_id => 30
Member.create! :name => "SUNIL D MEHTA", :mobile_phone => "9820422965",:society_id => 30
Member.create! :name => "SUSHIL K JAIN", :mobile_phone => "98211 13543",:society_id => 31
Member.create! :name => "RAKESH C. PURI", :mobile_phone => "98204 20076",:society_id => 31
Member.create! :name => "SHEELA B. GIDVANI", :mobile_phone => "98202 46935",:society_id => 31
Member.create! :name => "RAVI PRIBNDAS GIDWANI", :mobile_phone => "98210 62850",:society_id => 31
Member.create! :name => "RAJINDER SAUGAL", :mobile_phone => "",:society_id => 31
Member.create! :name => "KUKERAJA ANIL RAM CHAND", :mobile_phone => "",:society_id => 31
Member.create! :name => "MAKHIJA PARASRAM LUCHHMANDAS", :mobile_phone => "",:society_id => 31
Member.create! :name => "MAKHIJA KIRAN PARASRAM", :mobile_phone => "",:society_id => 31
Member.create! :name => "RAJU JASHANLAL SOOMANEY", :mobile_phone => "98211 84025",:society_id => 31
Member.create! :name => "NAVIN KRISHNA SHETTY", :mobile_phone => "",:society_id => 31
Member.create! :name => "MANOJ KUMAR BHATIA", :mobile_phone => "",:society_id => 31
Member.create! :name => "SHYAM J HEMRAJANI", :mobile_phone => "9323541091",:society_id => 31
Member.create! :name => "RAKHI P MAKHIJA", :mobile_phone => "9867374667",:society_id => 31
Member.create! :name => "KOMAL MAKHIJA", :mobile_phone => "9867087862",:society_id => 31
Member.create! :name => "ANIL P SAHU", :mobile_phone => "9892331425",:society_id => 31
Member.create! :name => "MEENAL GIDVANI", :mobile_phone => "9820909460",:society_id => 31
Member.create! :name => "LALIT K SAHAJWANI", :mobile_phone => "98190 58502",:society_id => 31
Member.create! :name => "RAJENDRA AGRAWAL", :mobile_phone => "",:society_id => 31
Member.create! :name => "VASANTA BITLANI", :mobile_phone => "98211 61508",:society_id => 31
Member.create! :name => "JIGNESH MEHTA", :mobile_phone => "98210 75176",:society_id => 31
Member.create! :name => "SAADIQA J PATANKAR", :mobile_phone => "98335 00739",:society_id => 31
Member.create! :name => "VIJAY BATWAL MALLYA", :mobile_phone => "",:society_id => 31
Member.create! :name => "RAVI DEWAN", :mobile_phone => "98191 22642",:society_id => 31
Member.create! :name => "DR.AJOY HARISH AGRARWAL", :mobile_phone => "98213 86496",:email_id=> "drajoy@hotmail.com",:society_id => 31
Member.create! :name => "CAPT RAHUL HEMRAJANI", :mobile_phone => "98201 28543",:society_id => 31
Member.create! :name => "KAMLESH LILARAM HEMLANI", :mobile_phone => "99202 93467",:society_id => 31
Member.create! :name => "NIKHAT K HAMIDANI", :mobile_phone => "9769692922",:society_id => 31
Member.create! :name => "BATHIJA GOBIND GAGIMAL", :mobile_phone => "",:society_id => 32
Member.create! :name => "FARIDA T. KOTHARI", :mobile_phone => "98212 57016",:society_id => 32
Member.create! :name => "SANDEEP JHAMB", :mobile_phone => "98200 28312",:society_id => 32
Member.create! :name => "VIJAY LAHOTY", :mobile_phone => "98202 90066",:society_id => 32
Member.create! :name => "ARORA LALIT KUMAR", :mobile_phone => "99209 85250",:email_id=> "lalitkaurora@gmail.com",:society_id => 32
Member.create! :name => "RAJESH VATNANI", :mobile_phone => "98203 16740",:society_id => 32
Member.create! :name => "SURESH.N.GANWANI", :mobile_phone => "98211 56592",:society_id => 32
Member.create! :name => "MICHAIEL D'SOUZA", :mobile_phone => "98213 36453",:society_id => 32
Member.create! :name => "PRADEEP GOVINDRAM TIBREWALA", :mobile_phone => "93222 42421",:society_id => 32
Member.create! :name => "SANJAY CHAWLA", :mobile_phone => "93228 74471",:email_id=> "sychdfu@yahoo.com",:society_id => 32
Member.create! :name => "SUNIL KISHINCHANDANI", :mobile_phone => "98200 73186",:society_id => 32
Member.create! :name => "JASPAL SINGH CHAWLA", :mobile_phone => "93222 10777",:email_id=> "marvelpest@yahoo.co.in",:society_id => 32
Member.create! :name => "SUIL SHAMSARUPSWNJ", :mobile_phone => "98200 20209",:society_id => 32
Member.create! :name => "MADAN MOHAN PUSHKARNA", :mobile_phone => "",:society_id => 32
Member.create! :name => "VINAY GUPTA", :mobile_phone => "98215 32413",:society_id => 32
Member.create! :name => "NISHTHA DHINGRA ( RATANGHAYRA )", :mobile_phone => "",:society_id => 32
Member.create! :name => "MAHARAJ KRISHNAN BINDROO", :mobile_phone => "",:society_id => 32
Member.create! :name => "MANAN CHAWLA", :mobile_phone => "9820073450",:society_id => 32
Member.create! :name => "AMANDEEP S CHAWLA", :mobile_phone => "9820073450",:society_id => 32
Member.create! :name => "MANOHARLAL ASRANI", :mobile_phone => "9323093086",:society_id => 32
Member.create! :name => "RAKESH BHASKAR", :mobile_phone => "98200 58135",:society_id => 32
Member.create! :name => "AADITYA PRADEEP TIBREWALA", :mobile_phone => "93222 42421",:society_id => 32
Member.create! :name => "RAHUL VINAY GUPTA", :mobile_phone => "98214 53746",:society_id => 32
Member.create! :name => "ROHIT VINAY GUPTA", :mobile_phone => "",:society_id => 32
Member.create! :name => "KIRTI S MEHTA", :mobile_phone => "98206 11424",:email_id=> "kiritmehta@yahoo.com",:society_id => 32
Member.create! :name => "SUNDEEP VATNANI", :mobile_phone => "97699 16745",:society_id => 32
Member.create! :name => "SURESH NARAINDAS HINDUJA", :mobile_phone => "",:society_id => 32
Member.create! :name => "DHIRENDRA KUMAR AGARWAL", :mobile_phone => "98214 57053",:email_id=> "dkagarwal@texeco.net",:society_id => 33
Member.create! :name => "SANJAY H.PANDEY", :mobile_phone => "98922 89256",:email_id=> "rightchannel1@hotmail.com",:society_id => 33
Member.create! :name => "RAJAN MIRCHANDANI", :mobile_phone => "98204 44222",:email_id=> "ranjanrim@gmail.com",:society_id => 33
Member.create! :name => "GAYATRI HANUMAN PANDEY", :mobile_phone => "",:society_id => 33
Member.create! :name => "AMIT HANUMAN PANDEY", :mobile_phone => "98922 78989",:society_id => 33
Member.create! :name => "ABHISHEK SARAWGI", :mobile_phone => "98200 13237",:society_id => 33
Member.create! :name => "BHAJAN SINGH GANDHI", :mobile_phone => "98203 40089",:society_id => 33
Member.create! :name => "CHARANJEET SINGH GANDHI", :mobile_phone => "98203 40089",:society_id => 33
Member.create! :name => "SUNIL .K.SAMPAT", :mobile_phone => "98211 11577",:society_id => 33
Member.create! :name => "ABANI DAS", :mobile_phone => "98200 61042",:email_id=> "abani@bom3.vsnl.net.in",:society_id => 33
Member.create! :name => "GHANSHAYAMDAS LADHA", :mobile_phone => "98200 54218",:society_id => 33
Member.create! :name => "BAJJAR SAIN JOLLY", :mobile_phone => "",:society_id => 33
Member.create! :name => "AMIT GHANSHAYAM LADHA", :mobile_phone => "98203 38466",:society_id => 33
Member.create! :name => "CAPT JOSEPH.C.D'SOUZA", :mobile_phone => "",:society_id => 33
Member.create! :name => "VIJAY MANDHIYAN", :mobile_phone => "",:society_id => 33
Member.create! :name => "PRITA SUMIT KHANDELWAL", :mobile_phone => "98210 48613",:society_id => 33
Member.create! :name => "DR RAJINDER SMGH", :mobile_phone => "98207 94014",:email_id=> "drrajinder@gmail.com",:society_id => 33
Member.create! :name => "JAGMEET SINGH", :mobile_phone => "98204 10974",:society_id => 33
Member.create! :name => "RADHA", :mobile_phone => "98211 94947",:society_id => 33
Member.create! :name => "JAYSHREE B AJWANI", :mobile_phone => "98196 09388",:society_id => 33
Member.create! :name => "AMIT R BEDI", :mobile_phone => "99200 18540",:email_id=> "abedi75@gmail.com",:society_id => 33
Member.create! :name => "PADMA MIRCHANDANI", :mobile_phone => "",:society_id => 33
Member.create! :name => "POOJA SUNIL SAMPAT", :mobile_phone => "",:society_id => 33
Member.create! :name => "DEVENDRA HANUMAN PANDEY", :mobile_phone => "98923 11177",:society_id => 33
Member.create! :name => "SANJAY JOLLY", :mobile_phone => "98704 56090",:society_id => 33
Member.create! :name => "SUNIL JOLLY", :mobile_phone => "98193 36331",:society_id => 33
Member.create! :name => "ABHISHEK AGRAWAL", :mobile_phone => "98210 28043",:email_id=> "abhishek@texeco.net",:society_id => 33
Member.create! :name => "HARI MOHAN DAS MIRANI", :mobile_phone => "98923 59776",:society_id => 34
Member.create! :name => "UMESH DUNICHAND MOTWANI", :mobile_phone => "98201 90657",:email_id=> "plastopack1@hotmail.com",:society_id => 34
Member.create! :name => "NEELAM J.BILLIMORIA", :mobile_phone => "98199 90550",:email_id=> "billimorianj@bharatpetroleum.in",:society_id => 34
Member.create! :name => "ASFIYA G. QAZI", :mobile_phone => "98199 28087",:society_id => 34
Member.create! :name => "JAYA SUBBAYA SHETTY", :mobile_phone => "",:society_id => 34
Member.create! :name => "ANURAG RATANLAL THAKUR", :mobile_phone => "98201 94284",:email_id=> "anuragthakur@yahoo.co.in",:society_id => 34
Member.create! :name => "ANIL KUMAR MITTAL", :mobile_phone => "98210 53368",:society_id => 34
Member.create! :name => "NIKUNJ MITTAL", :mobile_phone => "98212 33116",:society_id => 34
Member.create! :name => "G.G.MENON", :mobile_phone => "",:society_id => 34
Member.create! :name => "RAJIV NAYAN GUPTA", :mobile_phone => "98202 97244",:society_id => 34
Member.create! :name => "SIDDHARTHA NAYAN GUPTA", :mobile_phone => "98202 97244",:society_id => 34
Member.create! :name => "GAURAV.R.ABICHANDANI", :mobile_phone => "98673 77416",:email_id=> "mycoexports@rediffmail.com",:society_id => 34
Member.create! :name => "SEEMA.R.ABICHANDANI", :mobile_phone => "98675 23601",:email_id=> "mycoexports@rediffmail.com",:society_id => 34
Member.create! :name => "DOSANI MUSHTAQ", :mobile_phone => "",:society_id => 34
Member.create! :name => "RAMAN GADHOK", :mobile_phone => "",:society_id => 34
Member.create! :name => "SANJIV.M.MEHRA", :mobile_phone => "",:society_id => 34
Member.create! :name => "ASHINAV GUPTA", :mobile_phone => "",:society_id => 34
Member.create! :name => "VIJAY M ISRANEY", :mobile_phone => "98213 11186",:email_id=> "visraney@yahoo.com",:society_id => 34
Member.create! :name => "DIPAK .M.SHAH", :mobile_phone => "98215 25486",:society_id => 34
Member.create! :name => "MOHD ATIQUE SHAIKH", :mobile_phone => "98200 62862",:society_id => 34
Member.create! :name => "MOHD DANISH SHAIKH MOHD ATIQUE", :mobile_phone => "98208 16711",:society_id => 34
Member.create! :name => "MOHD TABISH SHIKH MOHD ATIQUE", :mobile_phone => "98208 16720",:society_id => 34
Member.create! :name => "MR JERRY SOARES", :mobile_phone => "98207 31495",:society_id => 34
Member.create! :name => "KRISHNAKANT MANUBHAI PANDYA", :mobile_phone => "92245 89996",:society_id => 34
Member.create! :name => "NAVIN UMESH MOTWANI", :mobile_phone => "98201 91496",:email_id=> "navin811@gmail.com",:society_id => 34
Member.create! :name => "APURVA MITTAL", :mobile_phone => "98924 00104",:society_id => 34
Member.create! :name => "ANKUSH ISRANEY", :mobile_phone => "98213 11186",:email_id=> "visraney@yahoo.com",:society_id => 34
Member.create! :name => "ANKITA ISRANEY", :mobile_phone => "99878 06709",:society_id => 34
Member.create! :name => "NISHAD A TODANKAR", :mobile_phone => "9930303377",:society_id => 34
Member.create! :name => "AMELIA GOMES", :mobile_phone => "9820491660",:society_id => 34
Member.create! :name => "KEITH GOMES", :mobile_phone => "9619117613",:society_id => 34
Member.create! :name => "MOTI SUKHRAMDAS GOGIA", :mobile_phone => "98206 27962",:society_id => 35
Member.create! :name => "LACHHMAN J. THAKUR", :mobile_phone => "98210 89543",:society_id => 35
Member.create! :name => "SUBHASH R. PEWEKAR", :mobile_phone => "",:society_id => 35
Member.create! :name => "ANTHONY FRANCIS", :mobile_phone => "",:email_id=> "tonyreb@gmail.com",:society_id => 35
Member.create! :name => "HAMID J. CHHAPRA", :mobile_phone => "",:society_id => 35
Member.create! :name => "GULI CHANWANANI", :mobile_phone => "98700 53531",:society_id => 35
Member.create! :name => "RAMNIRANJAN JHUNJHUNWALA", :mobile_phone => "98200 85988",:society_id => 35
Member.create! :name => "TECKCHANDANEY GOBIND", :mobile_phone => "",:society_id => 35
Member.create! :name => "TECKCHANDANEY VINOD G.", :mobile_phone => "",:society_id => 35
Member.create! :name => "ANOOP R. SETHI", :mobile_phone => "98695 33109",:email_id=> "sethianoopk@gmail.com",:society_id => 35
Member.create! :name => "VIPEN SETH", :mobile_phone => "",:society_id => 35
Member.create! :name => "RAJENDRA .J. SHAH", :mobile_phone => "",:society_id => 35
Member.create! :name => "DR.MADAN KATARIA", :mobile_phone => "",:society_id => 35
Member.create! :name => "RAJKUMAR H BHOJWANI", :mobile_phone => "93241 13272",:society_id => 35
Member.create! :name => "ARAVIND A SHAH", :mobile_phone => "93222 29448",:email_id=> "shah_arvind25@yahoo.com",:society_id => 35
Member.create! :name => "NARESH RIJHWANI", :mobile_phone => "98200 72584",:society_id => 35
Member.create! :name => "SHHARAD DEVINDER LAL", :mobile_phone => "93222 74885",:email_id=> "PRAM",:society_id => 35
Member.create! :name => "SANDEEP P VASAIKAR", :mobile_phone => "98206 43319",:society_id => 35
Member.create! :name => "JAVED S JUWALE", :mobile_phone => "98216 73345",:society_id => 35
Member.create! :name => "PADAM CHAND GUPTA", :mobile_phone => "98202 29806",:email_id=> "osterindia@hotmail.com",:society_id => 35
Member.create! :name => "AMRITA GIRISH", :mobile_phone => "",:society_id => 35
Member.create! :name => "DINESH J KHUBANI", :mobile_phone => "98679 18800",:email_id=> "dinesh@dnj.co.in",:society_id => 35
Member.create! :name => "VIRAL SHAH", :mobile_phone => "9769707878",:society_id => 35
Member.create! :name => "PAYAL SETH", :mobile_phone => "9819122638",:society_id => 35
Member.create! :name => "SAIPRASAD NADKARNI", :mobile_phone => "9820991083",:society_id => 35
Member.create! :name => "RAHUL KHANNA", :mobile_phone => "9819096801",:society_id => 35
Member.create! :name => "OM KHANNA", :mobile_phone => "",:society_id => 35
Member.create! :name => "NISHA AHUJA", :mobile_phone => "9619554644",:society_id => 35
Member.create! :name => "RAJEEV SEKSARIA", :mobile_phone => "94206 94549",:society_id => 36
Member.create! :name => "NEETU HARESH VASWANI", :mobile_phone => "99308 93944",:email_id=> "hareshsv@gmail.com",:society_id => 37
Member.create! :name => "RAJ .M.CHAWLA", :mobile_phone => "98200 21567",:email_id=> "laxmihsg@rediffmail.com",:society_id => 38
Member.create! :name => "CHETAN DINESH OZA", :mobile_phone => "98200 69880",:email_id=> "bharticoza@yahoo.com",:society_id => 38
Member.create! :name => "MANSUR HIRJI LAKHANI", :mobile_phone => "98202 48249",:email_id=> "hpw1978@gamil.com",:society_id => 38
Member.create! :name => "DR.VIVEK KANTILAL JAIN", :mobile_phone => "98204 32303",:email_id=> "drvivekjain@phmedicalcentre.com",:society_id => 39
Member.create! :name => "MUKESH G.HARWANI", :mobile_phone => "98200 08883",:society_id => 39
Member.create! :name => "MOHINDER PAL BANSAL", :mobile_phone => "98200 62652",:email_id=> "mpbansal@gmail.com",:society_id => 39
Member.create! :name => "KISHOR C.CHHABRIA", :mobile_phone => "98200 35127",:email_id=> "kishorechhabria@hotmail.com",:society_id => 39
Member.create! :name => "MODI PARASMAL BUDHMAL", :mobile_phone => "98200 60530",:email_id=> "amit@p.h.polyplast.com",:society_id => 39
Member.create! :name => "CHHOTUBHAI B. PATEL", :mobile_phone => "98200 81313",:email_id=> "info@parampackaging.com",:society_id => 39
Member.create! :name => "SANJAY C. PATEL", :mobile_phone => "98201 51244",:email_id=> "info@parampackaging.com",:society_id => 39
Member.create! :name => "KALPESH C. PATEL", :mobile_phone => "98330 28942",:email_id=> "info@parampackaging.com",:society_id => 39
Member.create! :name => "SHABNAM CONTRACTOR", :mobile_phone => "",:society_id => 39
Member.create! :name => "JAIN KANTILAL HUKMICHAND", :mobile_phone => "98210 33225",:society_id => 39
Member.create! :name => "UMESH KANTILAL JAIN", :mobile_phone => "98200 33222",:email_id=> "jaindevelopers@gmail.com",:society_id => 39
Member.create! :name => "RAJESH P. JAIN", :mobile_phone => "",:society_id => 39
Member.create! :name => "JAIN POPATLAL HUKMICHAND", :mobile_phone => "",:email_id=> "rajpjain@gmail.com",:society_id => 39
Member.create! :name => "JAGDISH G. HARWANI", :mobile_phone => "",:society_id => 39
Member.create! :name => "GOVERDHANDAS P. HARWANI", :mobile_phone => "93246 22172",:society_id => 39
Member.create! :name => "MODI ATEESH PARAS", :mobile_phone => "98200 41919",:email_id=> "ateesh@p.h.polyplast.com",:society_id => 39
Member.create! :name => "MODI AMIT PARAS", :mobile_phone => "98921 99999",:email_id=> "amit@phpolyplast.com",:society_id => 39
Member.create! :name => "VISHAL KANTILAL JAIN", :mobile_phone => "98212 83673",:email_id=> "vish.k.jain@gmail.com",:society_id => 39
Member.create! :name => "CHIRAG P. JAIN", :mobile_phone => "98229 50005",:email_id=> "chirag.ph@gmail.co",:society_id => 39
Member.create! :name => "MRS EKTAACHANDER HEMDEV", :mobile_phone => "98200 65544",:society_id => 39
Member.create! :name => "KISHOR MIRCHANDANI", :mobile_phone => "98208 30530",:society_id => 39
Member.create! :name => "AMOL PARASMAL MODI", :mobile_phone => "98198 60550",:society_id => 39
Member.create! :name => "KIRAN K DEOHANS", :mobile_phone => "98210 20142",:society_id => 39
Member.create! :name => "KAILASH MARWAH", :mobile_phone => "98212 25001",:society_id => 39
Member.create! :name => "PANKAJ K MARWAH", :mobile_phone => "98211 25332",:email_id=> "pankaj2007@hotmail.com",:society_id => 39
Member.create! :name => "VINAY REDDY", :mobile_phone => "98200 53608",:society_id => 39
Member.create! :name => "HARISH C MIRCHANDANI", :mobile_phone => "93213 13555",:society_id => 39
Member.create! :name => "MIKHAIL VASWANI", :mobile_phone => "9820807356",:society_id => 40
Member.create! :name => "YASH SEHGAL", :mobile_phone => "9022844802",:society_id => 40
Member.create! :name => "AMAR JAWAHRANI", :mobile_phone => "",:society_id => 40
Member.create! :name => "ARJUN GOLANI", :mobile_phone => "9870028485",:society_id => 40
Member.create! :name => "RAHUL JAWAHRANI", :mobile_phone => "9821722692",:society_id => 40
Member.create! :name => "DESAI KANU BHAI K.", :mobile_phone => "",:society_id => 40
Member.create! :name => "SANJAY M. CHUGH", :mobile_phone => "",:society_id => 40
Member.create! :name => "SUNIL KUMAR JAIN", :mobile_phone => "98200 23957",:society_id => 40
Member.create! :name => "NARENDRA .A. JAWAHRANI", :mobile_phone => "",:society_id => 40
Member.create! :name => "RAMESH LUTHRA", :mobile_phone => "",:society_id => 40
Member.create! :name => "NIDHI LUTHRA", :mobile_phone => "",:society_id => 40
Member.create! :name => "DEEPTI LUTHRA", :mobile_phone => "",:society_id => 40
Member.create! :name => "GEETIKA LUTHRA", :mobile_phone => "",:society_id => 40
Member.create! :name => "VINODE .S.GAJRIA", :mobile_phone => "",:society_id => 40
Member.create! :name => "ROMA.M.BHATIA", :mobile_phone => "98690 43443",:society_id => 40
Member.create! :name => "ANIL PAHTAJRAI VASANDANI", :mobile_phone => "",:society_id => 40
Member.create! :name => "MRITUNJOY KUMAR JAIN", :mobile_phone => "",:society_id => 40
Member.create! :name => "NARINDER SALUJA", :mobile_phone => "98204 59472",:society_id => 40
Member.create! :name => "RAYMON KAKAR", :mobile_phone => "98212 44365",:society_id => 40
Member.create! :name => "PUSHPENDER SALUJA", :mobile_phone => "98198 77263",:society_id => 40
Member.create! :name => "VIRDI J SINGH", :mobile_phone => "98203 39425",:society_id => 40
Member.create! :name => "MR SUNIL SEHGAL", :mobile_phone => "98704 34244",:society_id => 40
Member.create! :name => "VALSAN MANI", :mobile_phone => "98927 14056",:email_id=> "alistra@rediffmail.com",:society_id => 40
Member.create! :name => "JEETU SHAMSUNDER BHATIA", :mobile_phone => "93233 63680",:email_id=> "jeetusb_nipl@yahoo.com",:society_id => 40
Member.create! :name => "NANDKUMAR B KUKREJA", :mobile_phone => "98676 69696",:email_id=> "nbk@rahulcable.com",:society_id => 40
Member.create! :name => "GOLONI SUNIL SANTDAS", :mobile_phone => "98210 37426",:society_id => 40
Member.create! :name => "LADHARAM.B.THAKUR", :mobile_phone => "",:society_id => 40
Member.create! :name => "JATIN VITHALDAS POPAT", :mobile_phone => "98200 37768",:society_id => 40
Member.create! :name => "RAJESH .V.GAJRIA", :mobile_phone => "",:society_id => 40
Member.create! :name => "MITHAN JATIN THAKKAR", :mobile_phone => "98200 04830",:society_id => 40
Member.create! :name => "PRAKASH C JAIN", :mobile_phone => "",:society_id => 40
Member.create! :name => "ASHOK KUMAR SEKHANI", :mobile_phone => "98211 55130",:email_id=> "kiranmumbai@rediffmail.com",:society_id => 41
Member.create! :name => "PURVI SEKHANI", :mobile_phone => "",:society_id => 41
Member.create! :name => "ADITI SEKHANI", :mobile_phone => "93222 79896",:society_id => 41
Member.create! :name => "BINO JOSEPH", :mobile_phone => "98200 68837",:email_id=> "bino@chrisanindia.com",:society_id => 42
Member.create! :name => "V S S MANI", :mobile_phone => "98202 83819",:society_id => 44
Member.create! :name => "DWARKANATH HAIR", :mobile_phone => "98201 37738",:email_id=> "nd@lakozy.com",:society_id => 44
Member.create! :name => "MINIMA BARBOZA", :mobile_phone => "",:society_id => 44
Member.create! :name => "MANOJ AGARWAL", :mobile_phone => "98201 46534",:society_id => 44
Member.create! :name => "SURESH AGARWAL", :mobile_phone => "98201 30841",:society_id => 44
Member.create! :name => "BABULAL AGARWAL", :mobile_phone => "98200 52817",:society_id => 44
Member.create! :name => "MANISH KUKREJA", :mobile_phone => "98200 62683",:society_id => 44
Member.create! :name => "VIJAY KUKREJA", :mobile_phone => "98200 29896",:society_id => 44
Member.create! :name => "VIPUL ARUN RANDERI", :mobile_phone => "98200 51282",:email_id=> "vipulranderi@yahoo.com",:society_id => 44
Member.create! :name => "MAN MOHAN KOHLI", :mobile_phone => "",:society_id => 44
Member.create! :name => "SURESH SHIVLAL BHASIN", :mobile_phone => "98201 03677",:society_id => 44
Member.create! :name => "NARESH SHIVLAL BHASIN", :mobile_phone => "98200 63242",:email_id=> "nareshbhasin@ramfashion.com",:society_id => 44
Member.create! :name => "JOGESH SHIVLAL BHASIN", :mobile_phone => "98201 70934",:society_id => 44
Member.create! :name => "RAKESH SHIVLAL BHASIN", :mobile_phone => "98211 34734",:society_id => 44
Member.create! :name => "ANIL RAMDASSANEY", :mobile_phone => "",:society_id => 44
Member.create! :name => "RUSHABH VINOD SHETH", :mobile_phone => "98210 37515",:society_id => 44
Member.create! :name => "RAJEEV JAIN", :mobile_phone => "98200 33501",:society_id => 44
Member.create! :name => "RAVINDER KUMAR SAWHNEY", :mobile_phone => "98210 48238",:society_id => 44
Member.create! :name => "DR. GULAB J. CHOITHRAMANI", :mobile_phone => "98201 28239",:society_id => 44
Member.create! :name => "AJAY UPADHYAYA", :mobile_phone => "98210 13212",:society_id => 44
Member.create! :name => "DR. PURNA ARUN KURKURE", :mobile_phone => "",:society_id => 44
Member.create! :name => "GIRRAJ KISHOR AGRAWAL", :mobile_phone => "93222 24089",:email_id=> "gkagrawal@gmail.com",:society_id => 44
Member.create! :name => "DHIREN URAJLAL MEHTA", :mobile_phone => "98204 29506",:society_id => 44
Member.create! :name => "HARISH LAMBA", :mobile_phone => "98200 95052",:society_id => 44
Member.create! :name => "DEEPAK WADHWANI", :mobile_phone => "93232 32288",:society_id => 44
Member.create! :name => "KAMLESH BHAVNANI", :mobile_phone => "",:society_id => 44
Member.create! :name => "PARKASH J. BALWANI", :mobile_phone => "98209 78449",:email_id=> "pbalwani@hotmail.com",:society_id => 44
Member.create! :name => "MADAN HUNDAL MANIK", :mobile_phone => "98214 80974",:society_id => 44
Member.create! :name => "NARENDRA HUNDAL MANIK", :mobile_phone => "",:society_id => 44
Member.create! :name => "AMAL.B.SHAH", :mobile_phone => "98201 49264",:society_id => 44
Member.create! :name => "DINANATH MODI", :mobile_phone => "98201 44600",:email_id=> "rdclothfab@gmail.com",:society_id => 44
Member.create! :name => "DHANSUKH SHETHIA", :mobile_phone => "98200 55157",:society_id => 44
Member.create! :name => "NANDLAL B. GABA", :mobile_phone => "98200 29086",:society_id => 44
Member.create! :name => "AJMANI HARMOHINDER SINGH", :mobile_phone => "98210 42562",:society_id => 44
Member.create! :name => "BHANWARLAL DUGAR", :mobile_phone => "98204 22763",:society_id => 44
Member.create! :name => "BINOD DUGAR", :mobile_phone => "98204 22763",:society_id => 44
Member.create! :name => "NARESH.N. PUNJABI", :mobile_phone => "93232 87494",:society_id => 44
Member.create! :name => "DHANSUKH MISTRY", :mobile_phone => "",:society_id => 44
Member.create! :name => "KAMAL MOHANLAL AGARWAL", :mobile_phone => "",:society_id => 44
Member.create! :name => "VIJAY DEVNANI", :mobile_phone => "98201 85085",:society_id => 44
Member.create! :name => "NARENDRA KUMAR AGARWAL", :mobile_phone => "",:society_id => 44
Member.create! :name => "SUNIL C.SAWNANI", :mobile_phone => "",:society_id => 44
Member.create! :name => "ANIL SHAMDAS MANIK", :mobile_phone => "98210 36256",:society_id => 44
Member.create! :name => "ISHWAR V TRIVEDI", :mobile_phone => "",:society_id => 44
Member.create! :name => "BRIJMOHAN RATHI", :mobile_phone => "93235 04869",:society_id => 44
Member.create! :name => "SANJAY GADHVI", :mobile_phone => "98201 87829",:society_id => 44
Member.create! :name => "AROONA IRANI KOHLI", :mobile_phone => "93222 82683",:society_id => 44
Member.create! :name => "SANJAY BAHADUR", :mobile_phone => "98208 88033",:society_id => 44
Member.create! :name => "MICKEY SIBAL", :mobile_phone => "98201 85185",:society_id => 44
Member.create! :name => "SUMEET VAID", :mobile_phone => "98218 87545",:society_id => 44
Member.create! :name => "MRS BHAVNA VISHAL MEHTA", :mobile_phone => "98204 38382",:society_id => 44
Member.create! :name => "SANJAY SINHAL", :mobile_phone => "98201 98761",:society_id => 44
Member.create! :name => "MRS SANIYA DINESH ISRANI", :mobile_phone => "98211 40800",:society_id => 44
Member.create! :name => "MALCOLM MONTEIRO", :mobile_phone => "98203 0093",:society_id => 44
Member.create! :name => "JAYA I VORA", :mobile_phone => "98922 38037",:society_id => 44
Member.create! :name => "AMOL VIPUL RANDERI", :mobile_phone => "98210 39092",:society_id => 44
Member.create! :name => "ANJU GUPTA", :mobile_phone => "98210 17400",:society_id => 44
Member.create! :name => "LALIT K KHANNA", :mobile_phone => "98201 21462",:society_id => 44
Member.create! :name => "DINESH SINGHAL", :mobile_phone => "98201 21489",:email_id=> "dinesh.singhals@gmail.com",:society_id => 44
Member.create! :name => "KALRA MANMOHAN HARKARAN", :mobile_phone => "98670 32921",:email_id=> "kalrastearningcenter@gmail.com",:society_id => 44
Member.create! :name => "NIKHIL AGGARWAL", :mobile_phone => "9820377111",:society_id => 44
Member.create! :name => "ASHISH AGGARWAL", :mobile_phone => "9867746205",:society_id => 44
Member.create! :name => "SEEMA A VIJ", :mobile_phone => "9820120818",:society_id => 44
Member.create! :name => "V P SETH", :mobile_phone => "9867696920",:society_id => 44
Member.create! :name => "ROHIT A SETHI", :mobile_phone => "9987091119",:society_id => 44
Member.create! :name => "SHIVANI A VIJ", :mobile_phone => "9820120818",:society_id => 44
Member.create! :name => "AKSHAY VIJ", :mobile_phone => "9820120818",:society_id => 44
Member.create! :name => "MIHIR BARBOZA", :mobile_phone => "9967463311",:society_id => 44
Member.create! :name => "SURENDRA CHAJJER", :mobile_phone => "9323282494",:society_id => 44
Member.create! :name => "NEHA AGGARWAL", :mobile_phone => "9820662515",:society_id => 44
Member.create! :name => "ANIT AGGARWAL", :mobile_phone => "9819822220",:society_id => 44
Member.create! :name => "JAI NARAIN AGGARWAL", :mobile_phone => "9821032079",:society_id => 44
Member.create! :name => "NAREN.C.ROHRA", :mobile_phone => "98201 26970",:society_id => 44
Member.create! :name => "SATYEN CHATRUMAL ROHRA", :mobile_phone => "98207 64384",:society_id => 44
Member.create! :name => "INDRA.C.ROHRA", :mobile_phone => "",:society_id => 44
Member.create! :name => "VINEET.P.MUNJAL", :mobile_phone => "98200 90759",:society_id => 44
Member.create! :name => "ASHIT PRAMODRAI PONIKH", :mobile_phone => "98197 19846",:society_id => 44
Member.create! :name => "SUBHASH MAGO", :mobile_phone => "98925 48173",:society_id => 44
Member.create! :name => "R K PHULWANI", :mobile_phone => "98190 88986",:society_id => 44
Member.create! :name => "KAJAL INDRAVADAM SANGANI", :mobile_phone => "",:society_id => 44
Member.create! :name => "KENNETH C PEREIRA", :mobile_phone => "",:society_id => 44
Member.create! :name => "ROHIT SAIGAL", :mobile_phone => "98201 29539",:society_id => 44
Member.create! :name => "SHIVEN RAMDASSANEY", :mobile_phone => "",:society_id => 44
Member.create! :name => "ESHAN RAMDASSANEY", :mobile_phone => "",:society_id => 44
Member.create! :name => "CHHADULAL TRIKAMJI SUCHDE", :mobile_phone => "",:society_id => 44
Member.create! :name => "BHAGWANJI MANJI PATEL", :mobile_phone => "98210 71715",:society_id => 45
Member.create! :name => "DEBOTOSH KUMAR ROY", :mobile_phone => "98201 47215",:society_id => 47
Member.create! :name => "CHRISTING RAMGOPAL", :mobile_phone => "98203 52008",:society_id => 47
Member.create! :name => "SANJAY KHIMESRA", :mobile_phone => "98201 38472",:society_id => 47
Member.create! :name => "DESAI MAHESH JASHVANRAI", :mobile_phone => "98202 96774",:society_id => 47
Member.create! :name => "ANIL GIONCHAND BHALLA", :mobile_phone => "98200 85658",:society_id => 47
Member.create! :name => "PRADEEP KABRA", :mobile_phone => "98200 29271",:email_id=> "pradeep@pkinternational.net",:society_id => 47
Member.create! :name => "DILIP KUMAR .N. KANDHARI", :mobile_phone => "98210 54894",:society_id => 47
Member.create! :name => "CHETAN BOLAR", :mobile_phone => "98200 95228",:society_id => 47
Member.create! :name => "ASHOK KUMAR JHAWAR", :mobile_phone => "93241 68944",:email_id=> "shyam_teaco@yahoo.co.in",:society_id => 47
Member.create! :name => "HEMANT .J.DESAI", :mobile_phone => "",:society_id => 47
Member.create! :name => "GIRISH R. GADODIA", :mobile_phone => "98206 79334",:email_id=> "girishgadodia@rediffmail.com",:society_id => 47
Member.create! :name => "DESAI ASHISH MAHESH", :mobile_phone => "98206 78385",:society_id => 47
Member.create! :name => "TARACHAND JAIN", :mobile_phone => "94147 71253",:society_id => 47
Member.create! :name => "SUDHIR SACHDEV", :mobile_phone => "9867156441",:society_id => 47
Member.create! :name => "SANDEEP D KANDHURI", :mobile_phone => "98191 89869",:society_id => 47
Member.create! :name => "MUKESH F LALWANI", :mobile_phone => "98331 89381",:society_id => 47
Member.create! :name => "RENU .K.BHAVNENI", :mobile_phone => "98202 93389",:society_id => 46
Member.create! :name => "PARVEEN MUSTAFA", :mobile_phone => "98690 47672",:society_id => 46
Member.create! :name => "NAROTTAM G. MANGHNANI", :mobile_phone => "93240 39966",:society_id => 46
Member.create! :name => "ANIL SAPRE", :mobile_phone => "98203 27142",:society_id => 46
Member.create! :name => "CHOUGLE RASLEEM A", :mobile_phone => "",:society_id => 46
Member.create! :name => "MANSOOR PYARALI HAMID", :mobile_phone => "98920 54222",:society_id => 46
Member.create! :name => "ALI KHAN", :mobile_phone => "93231 73002",:society_id => 46
Member.create! :name => "SURESH BABU", :mobile_phone => "98672 49878",:society_id => 46
Member.create! :name => "AAMIR ALI", :mobile_phone => "98211 16444",:society_id => 46
Member.create! :name => "UMAKANT CHITAMAN CHOGLE", :mobile_phone => "98193 62651",:society_id => 46
Member.create! :name => "PRADEEP NAIR", :mobile_phone => "98203 47652",:email_id=> "nairpra@gmail.com",:society_id => 46
Member.create! :name => "DR AJAY CHAUGHULE", :mobile_phone => "98200 53355",:society_id => 46
Member.create! :name => "NAWMAN MALIK", :mobile_phone => "93222 52815",:society_id => 46
Member.create! :name => "JAYA MANOHAR PATEL", :mobile_phone => "98927 96663",:society_id => 46
Member.create! :name => "AFTAB ALI KHAN", :mobile_phone => "98201 38101",:society_id => 46
Member.create! :name => "CHOTRANI MANOHAR ISSARDAS", :mobile_phone => "98201 28900",:email_id=> "intercen_agrade@hotmail.com",:society_id => 46
Member.create! :name => "PURNIMA C. BHANDARI", :mobile_phone => "98211 88569",:society_id => 46
Member.create! :name => "MRS KUSUM MOHAN KUMAR", :mobile_phone => "93232 87648",:email_id=> "kusummk@gmail.com",:society_id => 46
Member.create! :name => "KUNAL CHOTRANI", :mobile_phone => "98204 37636",:society_id => 46
Member.create! :name => "SUDHA K AJWANI", :mobile_phone => "98201 74455",:society_id => 46
Member.create! :name => "SIDDARTH KHANNA", :mobile_phone => "98338 65009",:society_id => 46
Member.create! :name => "MANOJ MANGHNANI", :mobile_phone => "98195 95050",:society_id => 46
Member.create! :name => "ANANT KHERA", :mobile_phone => "",:society_id => 47
Member.create! :name => "RAKESH JAIN", :mobile_phone => "93231 96644",:society_id => 47
Member.create! :name => "PUNIT NAGPM", :mobile_phone => "98202 71006",:society_id => 47
Member.create! :name => "INDU SINHAL", :mobile_phone => "98201 98761",:society_id => 44
Member.create! :name => "SUDHANSHU SINHAL", :mobile_phone => "98205 56601",:society_id => 44
Member.create! :name => "ROHIT KISHIN BHAVNANI", :mobile_phone => "98202 93389",:email_id=> "r_bhavnani@yahoo.com",:society_id => 46
Member.create! :name => "PRAKASH A. KHATWANI", :mobile_phone => "98201 69684",:society_id => 49
Member.create! :name => "HARISH RAMLAL KAPOOR", :mobile_phone => "98707 51999",:society_id => 49
Member.create! :name => "GAURAN HARISH KAPOOR", :mobile_phone => "98194 96774",:society_id => 49
Member.create! :name => "SURESH V. NIKUMBHE", :mobile_phone => "98205 07721",:email_id=> "snikumble@gmail.com",:society_id => 49
Member.create! :name => "SYED ALI RAZA", :mobile_phone => "93237 30719",:society_id => 49
Member.create! :name => "AJAY GANPAT KHANVILKAR", :mobile_phone => "97698 79828",:society_id => 49
Member.create! :name => "ASHOK BHUTANI", :mobile_phone => "98201 35617",:society_id => 49
Member.create! :name => "ABDUL RAUF", :mobile_phone => "98205 62626",:society_id => 49
Member.create! :name => "ISHVER M. MEHTA", :mobile_phone => "98204 32517",:society_id => 49
Member.create! :name => "UMESH SURESH NIKUMBHE", :mobile_phone => "98196 33857",:email_id=> "umesh.nikumble@flykingfisher.com",:society_id => 49
Member.create! :name => "ABDULLA ABBAS HAMDULE", :mobile_phone => "98200 61693",:society_id => 49
Member.create! :name => "MR AJIT AJAY KHANVILKAR", :mobile_phone => "99696 18678",:email_id=> "ajitk18@yahoo.com",:society_id => 49
Member.create! :name => "PRAKRUT ISHVER MEHTA", :mobile_phone => "98206 00788",:society_id => 49
Member.create! :name => "ABDUL RAHMAN", :mobile_phone => "98200 10735",:society_id => 49
Member.create! :name => "DHARAMRAJ SINGH", :mobile_phone => "9833113407",:society_id => 49
Member.create! :name => "REKHA J JOSHI", :mobile_phone => "9920813248",:society_id => 49
Member.create! :name => "MANOHAR N CHANCHLANI", :mobile_phone => "98210 37330",:email_id=> "anthrax009@gmail.com",:society_id => 49
Member.create! :name => "VIKAS KAPOOR", :mobile_phone => "98672 49878",:society_id => 49
Member.create! :name => "JIGNESH DALI CHAND SHAH", :mobile_phone => "93222 32160",:email_id=> "jignesh023@yahoo.co.in",:society_id => 50
Member.create! :name => "RUPESH GOENKA", :mobile_phone => "93222 74329",:email_id=> "naitika@vsnl.com",:society_id => 50
Member.create! :name => "MADHU RAMCHANDANI", :mobile_phone => "",:society_id => 50
Member.create! :name => "DR.ADITYA KAUSHIK", :mobile_phone => "98212 73845",:email_id=> "kaushikhand@gmail.com",:society_id => 50
Member.create! :name => "CHANDER BHATIA LOKUMAL", :mobile_phone => "98200 01908",:society_id => 50
Member.create! :name => "ZIEGLER CRUZ COLACO", :mobile_phone => "98230 72149",:email_id=> "ziegler.colaco@gamil.com",:society_id => 50
Member.create! :name => "BIHARI.J.TEKCHANDANI", :mobile_phone => "98206 86622",:society_id => 50
Member.create! :name => "BAGRI KRISHNA KUMAN", :mobile_phone => "97698 79021",:email_id=> "crw1952@hotmail.com",:society_id => 50
Member.create! :name => "PUSHPA MEHRA", :mobile_phone => "98205 56824",:society_id => 50
Member.create! :name => "KAVITA SAHAJWALA", :mobile_phone => "98192 34001",:society_id => 50
Member.create! :name => "RAJIV SAHAJWALA", :mobile_phone => "98191 65682",:email_id=> "rajsahaj@yahoo.com",:society_id => 50
Member.create! :name => "SUNIL SAHAJWALA", :mobile_phone => "98196 00014",:email_id=> "sunilsahajwalla@hotmail.com",:society_id => 50
Member.create! :name => "KHETARPAL CHANDRASHEKH M.", :mobile_phone => "",:society_id => 51
Member.create! :name => "RAJNEESH SATPAL THAPAR", :mobile_phone => "98693 02519",:email_id=> "r_thapar@rediffmailcom",:society_id => 51
Member.create! :name => "KAILASH.S.PAMNANI", :mobile_phone => "98214 12212",:society_id => 51
Member.create! :name => "HEMANT K. NAIR", :mobile_phone => "98677 64555",:email_id=> "hemantravan@yahoo.com",:society_id => 51
Member.create! :name => "MRS DIPIKA KANTHARIA", :mobile_phone => "98197 61860",:society_id => 51
Member.create! :name => "SHYAM N SADARANGANI", :mobile_phone => "",:society_id => 51
Member.create! :name => "VAIBHAV VASANT SAMANT", :mobile_phone => "93224 08677",:email_id=> "vaibhav.samant@hdfcbank.com",:society_id => 52
Member.create! :name => "DINESH RATANI", :mobile_phone => "9323450823",:society_id => 52
Member.create! :name => "RAHUL CHANCHLANI", :mobile_phone => "9594065773",:society_id => 52
Member.create! :name => "ANAND NATHANI", :mobile_phone => "9821031707",:society_id => 52
Member.create! :name => "DHARMENDRA NATHANI", :mobile_phone => "9821240179",:society_id => 52
Member.create! :name => "NIRANJAN NAIK", :mobile_phone => "9819141009",:society_id => 50
Member.create! :name => "DHIRAJ MANDAL", :mobile_phone => "98200 32390",:email_id=> "dhiraj_mandal@yahoo.com",:society_id => 50
Member.create! :name => "PRABIR KUMAR ACHARYA", :mobile_phone => "",:society_id => 50
Member.create! :name => "NARAIN BHOJWANI", :mobile_phone => "9820085858",:society_id => 51
Member.create! :name => "SUSHILKUMAR G. KATHURIA", :mobile_phone => "",:society_id => 53
Member.create! :name => "SHIBANI A. SHAH", :mobile_phone => "",:society_id => 53
Member.create! :name => "ANJUM MUKHUDA", :mobile_phone => "98200 65958",:society_id => 53
Member.create! :name => "SUNILKUMAR KATHURIA", :mobile_phone => "98200 67276",:society_id => 53
Member.create! :name => "RAJENDRA S. BORGHARKAR", :mobile_phone => "98200 62656",:society_id => 53
Member.create! :name => "REV ARTHUR T.J. KESKAR", :mobile_phone => "",:society_id => 53
Member.create! :name => "RAJGOPAL KHANDELWALA", :mobile_phone => "98210 91736",:society_id => 53
Member.create! :name => "R.D.SHRIYAN", :mobile_phone => "",:society_id => 53
Member.create! :name => "DEEPAK .P.ADVANI", :mobile_phone => "",:society_id => 53
Member.create! :name => "KUNTAL.G.GOEL", :mobile_phone => "98203 47735",:email_id=> "kuntalgoel@gmail.com",:society_id => 53
Member.create! :name => "HEMAL ASHOK UNARKAR", :mobile_phone => "98201 08427",:society_id => 53
Member.create! :name => "SANJEEV.S.CHANDAN", :mobile_phone => "98204 51727",:society_id => 53
Member.create! :name => "JAGDISH VISHINDAS HARIANI", :mobile_phone => "98690 74554",:society_id => 53
Member.create! :name => "BHASKAR MUKHERJEE", :mobile_phone => "",:society_id => 53
Member.create! :name => "JAYESH .M.CHHADVA", :mobile_phone => "98201 55604",:society_id => 53
Member.create! :name => "JIMMY .N. KARKARIA", :mobile_phone => "",:society_id => 53
Member.create! :name => "PREM VISHINDAS HARIANI", :mobile_phone => "",:society_id => 53
Member.create! :name => "MEHMOOD.V.BHARUCHA", :mobile_phone => "98210 9225",:society_id => 53
Member.create! :name => "PUNEET KULDIP SINGH", :mobile_phone => "98922 46045",:society_id => 53
Member.create! :name => "MEGHA CHHUGERA", :mobile_phone => "9820423164",:society_id => 53
Member.create! :name => "NARESH KHANDELWAL", :mobile_phone => "98200 56159",:society_id => 53
Member.create! :name => "RAHUL KHANDELWAL", :mobile_phone => "98210 91736",:society_id => 53
Member.create! :name => "ROHAN KHANDELWAL", :mobile_phone => "98210 91736",:society_id => 53
Member.create! :name => "ABHAY SETH", :mobile_phone => "98920 49050",:society_id => 53
Member.create! :name => "DHEERAJ S KATHURIA", :mobile_phone => "99302 01516",:society_id => 53
Member.create! :name => "PREM SRICHAND TALREJA", :mobile_phone => "98670 13050",:email_id=> "premstalreja@gmail.com",:society_id => 53
Member.create! :name => "NISHREEN H.H.", :mobile_phone => "",:society_id => 54
Member.create! :name => "K.S GUPTA", :mobile_phone => "",:society_id => 54
Member.create! :name => "VIJAY KUMAR .A.T.", :mobile_phone => "",:society_id => 54
Member.create! :name => "DEVENDRA RAVI KHANNA", :mobile_phone => "98203 28293",:email_id=> "drkhanna@vsnl.net",:society_id => 54
Member.create! :name => "AGARWAL KESHAR KUMAR", :mobile_phone => "93223 36351",:society_id => 54
Member.create! :name => "NAYANESH SHANTILAL PARIKH", :mobile_phone => "",:society_id => 54
Member.create! :name => "HEERA V PANJABI", :mobile_phone => "98211 34297",:society_id => 54
Member.create! :name => "A V PRAKASH", :mobile_phone => "98210 20651",:society_id => 54
Member.create! :name => "ROHIT A MEHRA", :mobile_phone => "98211 47633",:society_id => 54
Member.create! :name => "HUSSAIN HATIM HARIANAWALA", :mobile_phone => "98208 97490",:society_id => 54
Member.create! :name => "RASHMI RAMESH MEHATA", :mobile_phone => "98211 48560",:society_id => 54
Member.create! :name => "SANDRA M FERNANDEZ", :mobile_phone => "98339 65103",:society_id => 54
Member.create! :name => "SANJAY UTTAM", :mobile_phone => "98194 03497",:society_id => 54
Member.create! :name => "HAKIMUDIN HARIANAWALA", :mobile_phone => "26368670",:society_id => 54
Member.create! :name => "NARENDRA DALMIA", :mobile_phone => "93242 44833",:society_id => 55
Member.create! :name => "MOHAN LAL DALMIA", :mobile_phone => "",:society_id => 55
Member.create! :name => "MOHAN K. AICHANDANI", :mobile_phone => "93226 50577",:society_id => 55
Member.create! :name => "RAKESH BRIJLAL JAIN", :mobile_phone => "98210 22118",:society_id => 55
Member.create! :name => "MR ADEEP MATHUR", :mobile_phone => "98200 11781",:society_id => 55
Member.create! :name => "PANKAJ B.AGARWAL", :mobile_phone => "98692 36648",:society_id => 55
Member.create! :name => "BHAVESH K GANDHI", :mobile_phone => "98201 30191",:society_id => 55
Member.create! :name => "MRS RAJ VIJAY DALMIA", :mobile_phone => "98208 04220",:society_id => 55
Member.create! :name => "MR ANKIT VIJAY DALMIA", :mobile_phone => "98208 17232",:society_id => 55
Member.create! :name => "BELA N DODIYA", :mobile_phone => "",:society_id => 55
Member.create! :name => "VINESH ADVANI", :mobile_phone => "98206 26203",:email_id=> "vineshadvani@yahoo.com",:society_id => 55
Member.create! :name => "HEMCHAND JAIN", :mobile_phone => "99879 34011",:email_id=> "hejain30@gmail.com",:society_id => 55
Member.create! :name => "RAVINDRA TIBREWALA", :mobile_phone => "9821074706",:society_id => 55
Member.create! :name => "UTSAV VIJAY AGGARWAL", :mobile_phone => "9892094077",:society_id => 55
Member.create! :name => "DILIP K JAIN", :mobile_phone => "9892063198",:society_id => 55
Member.create! :name => "ASHUTOSH S KOTHARI", :mobile_phone => "9820055577",:society_id => 55
Member.create! :name => "ASHOK K BHUSARI", :mobile_phone => "9820511732",:society_id => 55
Member.create! :name => "SHREEKANT KHAITAN", :mobile_phone => "9833286280",:society_id => 55
Member.create! :name => "LALITA KOTHARI", :mobile_phone => "9987655577",:society_id => 55
Member.create! :name => "AKSHAY R JAIN", :mobile_phone => "9820330833",:society_id => 55
Member.create! :name => "JAGDISH C SHAH", :mobile_phone => "9820067383",:society_id => 55
Member.create! :name => "PRAVIN MEHTA", :mobile_phone => "9967369303",:society_id => 55
Member.create! :name => "NISHANT CHHAPARIA", :mobile_phone => "9920160484",:society_id => 55
Member.create! :name => "NIKUNJ CHHAPARIA", :mobile_phone => "9821024816",:society_id => 55
Member.create! :name => "KABIR R PHADKE", :mobile_phone => "9820143109",:society_id => 55
Member.create! :name => "ESHIKA R PHADKE", :mobile_phone => "9820143109",:society_id => 55
Member.create! :name => "VIKAS BHUSARI", :mobile_phone => "9819979949",:society_id => 55
Member.create! :name => "KANIKA JAIN", :mobile_phone => "9892926803",:society_id => 55
Member.create! :name => "SIDDHARTH JAIN", :mobile_phone => "9892399607",:society_id => 55
Member.create! :name => "AMIT A BHUSARI", :mobile_phone => "9820514877",:society_id => 55
Member.create! :name => "DIPAK RAVISHANKAR MODI", :mobile_phone => "9811112606",:society_id => 55
Member.create! :name => "VINOD KUMAR AGGARWAL", :mobile_phone => "9022259597",:society_id => 55
Member.create! :name => "MANGLA MODI", :mobile_phone => "9820466941",:society_id => 55
Member.create! :name => "VISHWAS SHAH", :mobile_phone => "9967545542",:society_id => 55
Member.create! :name => "NIMIT GHATALIA", :mobile_phone => "9920447118",:society_id => 55
Member.create! :name => "ANIMDHA P.NANSI", :mobile_phone => "",:society_id => 55
Member.create! :name => "BAL KISHAN BHAGCHANKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "VIKAS BHAGCHANKA", :mobile_phone => "98181 99996",:email_id=> "vikasb@m2kindia",:society_id => 55
Member.create! :name => "BIMIT KUMAR BHAGCHANKA", :mobile_phone => "98196 33365",:email_id=> "binitbhagchandka@hotmail.com",:society_id => 55
Member.create! :name => "ANURADHA BHAGCHANDKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "SARAWGI KOMAL DEEPAK", :mobile_phone => "98200 33147",:society_id => 55
Member.create! :name => "VIJAY DALMIA", :mobile_phone => "99670 88188",:email_id=> "vijay@dalmiapolytex.com",:society_id => 55
Member.create! :name => "SURESH BHAGCHANDRA", :mobile_phone => "98212 14409",:society_id => 55
Member.create! :name => "JAI KISHAN BHAGCHANDRA", :mobile_phone => "98210 13959",:email_id=> "jkb@shangrilaindia.com",:society_id => 55
Member.create! :name => "BIMAL KUMAR BAJORIA", :mobile_phone => "98210 53020",:society_id => 55
Member.create! :name => "KAMAL KUMAR BAJORIA", :mobile_phone => "98200 65550",:society_id => 55
Member.create! :name => "RAMESH SARDA", :mobile_phone => "98211 27323",:society_id => 55
Member.create! :name => "ARUN KUMAR CHHAPARIA", :mobile_phone => "98211 12913",:society_id => 55
Member.create! :name => "VINOD MAKHARIA", :mobile_phone => "",:society_id => 55
Member.create! :name => "MANISH MAKHARIA", :mobile_phone => "",:society_id => 55
Member.create! :name => "MUKESH MAKHARIA", :mobile_phone => "",:society_id => 55
Member.create! :name => "RAJESH P. GHATALIA", :mobile_phone => "99203 17118",:email_id=> "aaregdrugs@gmail.com",:society_id => 55
Member.create! :name => "BHAVESH H. SHETH", :mobile_phone => "98210 25557",:email_id=> "bhavesh@buddyz.in",:society_id => 55
Member.create! :name => "JAIN PRAVEEN", :mobile_phone => "98210 87941",:society_id => 55
Member.create! :name => "AGRAWAL VIJAY KUMAR", :mobile_phone => "98920 94077",:society_id => 55
Member.create! :name => "C.B.SINGH", :mobile_phone => "98690 02439",:society_id => 55
Member.create! :name => "SANJAY.S.SUNDARKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "NEELAM VIJAY AGARWAL", :mobile_phone => "93231 27394",:society_id => 55
Member.create! :name => "PRAVIN .J. PAREKH", :mobile_phone => "",:society_id => 55
Member.create! :name => "RAKESH.P.PAREKH", :mobile_phone => "98204 18624",:email_id=> "rp7001@yahoo.com",:society_id => 55
Member.create! :name => "TILAK RAJ KAPOOR", :mobile_phone => "98214 47960",:society_id => 55
Member.create! :name => "RAVINDER SINGH AHLUWALA", :mobile_phone => "",:society_id => 55
Member.create! :name => "ANIL MOHAN MATHUR", :mobile_phone => "98200 13881",:society_id => 55
Member.create! :name => "UMESH AGARWAL", :mobile_phone => "93201 56977",:society_id => 55
Member.create! :name => "SUMEGH AGARWAL", :mobile_phone => "93201 56977",:society_id => 55
Member.create! :name => "RAJENDRA PHADKE", :mobile_phone => "98201 43109",:society_id => 55
Member.create! :name => "ANIRUDHA J. BHAGCHANDKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "ANUSHAKA J.BHAGCHARDKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "AADITYA BHAVESH SHETH", :mobile_phone => "",:society_id => 55
Member.create! :name => "RITIKA BHAVESH SHETH", :mobile_phone => "",:society_id => 55
Member.create! :name => "ASHISH KAILASHPATI KEDIA", :mobile_phone => "98202 25822",:society_id => 55
Member.create! :name => "NAKUL ANIRODHA NANSI", :mobile_phone => "",:society_id => 55
Member.create! :name => "ASHWIN BHAGCHANDKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "ABHISHEK BHAGCHANDKA", :mobile_phone => "",:society_id => 55
Member.create! :name => "KARAN KAMAL BAJORIA", :mobile_phone => "98206 11311",:society_id => 55
Member.create! :name => "VARUN BIMAL BAJORIA", :mobile_phone => "98200 73502",:society_id => 55
Member.create! :name => "AJAY AGRAWAL", :mobile_phone => "98200 33767",:society_id => 55
Member.create! :name => "MRS SHEEBA A. SABIR", :mobile_phone => "98200 62708",:society_id => 55
Member.create! :name => "MITERSAIN JAIN", :mobile_phone => "93222 70027",:email_id=> "vikas2170@gmail.com",:society_id => 55
Member.create! :name => "VIKAS JAIN", :mobile_phone => "93223 38815",:email_id=> "vikas2170@gmailcom",:society_id => 55
Member.create! :name => "RAJESH PARIKH S.", :mobile_phone => "98201 02551",:society_id => 56
Member.create! :name => "RAKESH SHARMA", :mobile_phone => "98211 52446",:email_id=> "rakeshsh@hotmail.com",:society_id => 56
Member.create! :name => "KARTIK PAKVASA", :mobile_phone => "98202 93957",:society_id => 56
Member.create! :name => "MR.LOHI DAS", :mobile_phone => "98206 28442",:society_id => 56
Member.create! :name => "NASIR.A.DADARKAR", :mobile_phone => "98203 35551",:email_id=> "searing1234@rediffmai.com",:society_id => 56
Member.create! :name => "A.P.TAVADIA", :mobile_phone => "",:society_id => 56
Member.create! :name => "FARYANA ASPIE TAVADIA", :mobile_phone => "",:society_id => 56
Member.create! :name => "SANJEEV V. SINGHANI", :mobile_phone => "9803 51444",:society_id => 56
Member.create! :name => "UMESH WADHWA", :mobile_phone => "98206 38542",:email_id=> "wadhwaumesh@yahoo.com",:society_id => 56
Member.create! :name => "DILIP SINGH LODHA", :mobile_phone => "98213 32940",:society_id => 56
Member.create! :name => "TANDON PRAN NATH", :mobile_phone => "",:society_id => 56
Member.create! :name => "ANAND V. FEDANC", :mobile_phone => "",:society_id => 56
Member.create! :name => "PRABAL NAY", :mobile_phone => "98201 89074",:society_id => 56
Member.create! :name => "KAUSHIK K SHAH", :mobile_phone => "",:society_id => 56
Member.create! :name => "SANDEEP NAWAL GARIA", :mobile_phone => "98200 17535",:society_id => 56
Member.create! :name => "BRINDA SINGH", :mobile_phone => "92232 35795",:society_id => 56
Member.create! :name => "DEEPAK P TANDON", :mobile_phone => "98202 92767",:email_id=> "dtandan88@gmail.com",:society_id => 56
Member.create! :name => "AMIT ROHERA", :mobile_phone => "96673 26487",:society_id => 56
Member.create! :name => "RACHANA PAIKH", :mobile_phone => "98677 92454",:society_id => 56
Member.create! :name => "MRS BHUPINDER GREWAL", :mobile_phone => "98208 47711",:email_id=> "grewalmunna@hotmail.com",:society_id => 56
Member.create! :name => "URSHIT R PARIKH", :mobile_phone => "001-650-219-6663",:email_id=> "urshit@yahoo.com",:society_id => 56
Member.create! :name => "SHERRY KUMAR", :mobile_phone => "98707 80635",:society_id => 56
Member.create! :name => "VINOD TIRATHDAS RAISINGHANI", :mobile_phone => "9820452852",:society_id => 56
Member.create! :name => "DILIP BHATIA", :mobile_phone => "",:society_id => 57
Member.create! :name => "KAMLESH AJMERA", :mobile_phone => "98699 12235",:email_id=> "kpajmera@hotmail.com",:society_id => 57
Member.create! :name => "CHANDRASEKHAR C. NAIR", :mobile_phone => "98210 56266",:society_id => 57
Member.create! :name => "JAGDISH NATWARLAL SHAH", :mobile_phone => "",:society_id => 57
Member.create! :name => "SHEKHAR S. DADARKAR", :mobile_phone => "98210 44348",:society_id => 57
Member.create! :name => "DR. SATISH RANDHIR GALA", :mobile_phone => "98214 76858",:society_id => 57
Member.create! :name => "SAMANT RAJENDRA VRAJLAL", :mobile_phone => "99679 54304",:email_id=> "rajendra_samani@yahoo.co.in",:society_id => 57
Member.create! :name => "KEITH VAZ", :mobile_phone => "98213 21666",:email_id=> "keith_vaz71@hotmail.com",:society_id => 57
Member.create! :name => "DINANATH NARAYAN PAI", :mobile_phone => "99304 50460",:email_id=> "dnpai@hotmail.com",:society_id => 57
Member.create! :name => "ASHOK .R. MEHTA", :mobile_phone => "98200 19661",:email_id=> "ashokmehta14@hotmail.com",:society_id => 57
Member.create! :name => "NEERAJ R MALKANI", :mobile_phone => "98215 28550",:society_id => 57
Member.create! :name => "R ADITYA RAJU", :mobile_phone => "",:society_id => 57
Member.create! :name => "OME D. CHANGULANI", :mobile_phone => "",:society_id => 58
Member.create! :name => "SAILESH .C, THAKKAR", :mobile_phone => "98212 19959",:society_id => 58
Member.create! :name => "LAXMI LAXMAN BHATIA", :mobile_phone => "",:society_id => 58
Member.create! :name => "VIJAY SHANKAR CHOUBEY", :mobile_phone => "98201 82213",:society_id => 58
Member.create! :name => "DR. VANITA SHEKHAR RAUT", :mobile_phone => "",:society_id => 58
Member.create! :name => "RADHEYSHYAM.R.FALOD", :mobile_phone => "93222 69658",:society_id => 58
Member.create! :name => "M.T.DANIEL", :mobile_phone => "",:society_id => 58
Member.create! :name => "RAVI .N.VAZIRANI", :mobile_phone => "98191 91129",:email_id=> "ravinvazir@rediffmail.com",:society_id => 58
Member.create! :name => "SUNDRI .N.VAZIRANI", :mobile_phone => "",:society_id => 58
Member.create! :name => "AJIT SHETTY", :mobile_phone => "98204 36569",:email_id=> "reachrmt@gmail.com",:society_id => 58
Member.create! :name => "PURAMJIT SINGH CHHIBBER", :mobile_phone => "",:society_id => 58
Member.create! :name => "SANJAY ARORA", :mobile_phone => "98210 75740",:society_id => 58
Member.create! :name => "M.N.SUMESH", :mobile_phone => "98203 04234",:email_id=> "sumeshmn2002@yahoo.co.in",:society_id => 58
Member.create! :name => "RAVI TANDON", :mobile_phone => "98203 23630",:society_id => 58
Member.create! :name => "SHRIKANT R MAHESHWARI", :mobile_phone => "",:email_id=> "shriku10@rediffmail.com",:society_id => 58
Member.create! :name => "ADITYA R R MAHESHWARI", :mobile_phone => "98192 39759",:society_id => 58
Member.create! :name => "BHANSALI ASHOK A.", :mobile_phone => "98200 67370",:email_id=> "ashok@polariscables.com",:society_id => 58
Member.create! :name => "NISHANT S THAKKAR", :mobile_phone => "98212 19989",:society_id => 58
Member.create! :name => "ADITYA KUIPALANI", :mobile_phone => "98191 17286",:society_id => 58
Member.create! :name => "PRITAM UPPAL", :mobile_phone => "9820023671",:society_id => 58
Member.create! :name => "ARYAMAN GALA", :mobile_phone => "26336464",:society_id => 57
Member.create! :name => "SAGAR BHANSALI", :mobile_phone => "9820067370",:society_id => 58
Member.create! :name => "PRAMOD DWARPALAK", :mobile_phone => "98211 52253",:society_id => 59
Member.create! :name => "PANKAJ .S.ARORA", :mobile_phone => "98692 11264",:society_id => 60
Member.create! :name => "VIVEK ARYA", :mobile_phone => "93241 19069",:email_id=> "shaluarya@hotmail.com",:society_id => 60
Member.create! :name => "R M TURAKHIA", :mobile_phone => "99205 34351",:email_id=> "rushabht@gmail.com",:society_id => 61
Member.create! :name => "RUCHI M TURAKHIA", :mobile_phone => "99205 34352",:email_id=> "ruchi_turakhia@hotmail.com",:society_id => 61
Member.create! :name => "MR M M TURAKHIA", :mobile_phone => "99309 98073",:email_id=> "mayurmturakhia@hotmail.com",:society_id => 61
Member.create! :name => "MAHESHWARI SATYANARAIN.R.", :mobile_phone => "98201 80392",:email_id=> "ambluewater@gmail.com",:society_id => 61
Member.create! :name => "MAHESHWARI SANJAY .S.", :mobile_phone => "98202 39168",:email_id=> "shreedh333@hotmail.com",:society_id => 61
Member.create! :name => "BALVANTRAI H AMALEAN", :mobile_phone => "98213 23967",:email_id=> "bamalean@yahoo.com",:society_id => 62
Member.create! :name => "PANKAJ .R.GOENKA", :mobile_phone => "98201 44659",:society_id => 62
Member.create! :name => "MANISH .R.GOENKA", :mobile_phone => "98212 29596",:society_id => 62
Member.create! :name => "SANJAY RATADIYA", :mobile_phone => "98202 19156",:society_id => 62
Member.create! :name => "SAMPAT RAJESH KRISHNADAS", :mobile_phone => "98211 11564",:society_id => 62
Member.create! :name => "MINTO SINGHWASIN", :mobile_phone => "98212 19127",:society_id => 62
Member.create! :name => "RAJKUMAR GOENKA", :mobile_phone => "98211 34754",:society_id => 62
Member.create! :name => "DHANANJAY RAJESH SAMPAT", :mobile_phone => "93222 91747",:society_id => 62
Member.create! :name => "SATISH RAJPAL", :mobile_phone => "98213 38825",:society_id => 62
Member.create! :name => "AJAY ARORA", :mobile_phone => "",:society_id => 62
Member.create! :name => "SURABHI SHENOY", :mobile_phone => "98202 53273",:society_id => 62
Member.create! :name => "VIKRAM GOPAL THAKER", :mobile_phone => "98201 39212",:society_id => 63
Member.create! :name => "MUKESH K. ARORA", :mobile_phone => "98211 86495",:society_id => 63
Member.create! :name => "SUNIL G. KHANNA", :mobile_phone => "98202 10827",:society_id => 63
Member.create! :name => "SUSHMA CHANANA", :mobile_phone => "",:society_id => 63
Member.create! :name => "GOPAL.Y.KHANNA", :mobile_phone => "",:society_id => 63
Member.create! :name => "BIMAL.T.MANIUR", :mobile_phone => "98679 57230",:society_id => 63
Member.create! :name => "CHINTAN SAGREIYA", :mobile_phone => "98212 38746",:society_id => 63
Member.create! :name => "SARJANA CHINTAN SAGREIYA", :mobile_phone => "",:society_id => 63
Member.create! :name => "OMPRAKASH .L. KEDIA", :mobile_phone => "98212 98531",:society_id => 63
Member.create! :name => "ANIL KUMAR JAIN", :mobile_phone => "98203 06747",:society_id => 63
Member.create! :name => "VACHHANI HARI MADHOWDAS", :mobile_phone => "",:society_id => 63
Member.create! :name => "JAIDEEP S MANDAL", :mobile_phone => "98200 45933",:society_id => 63
Member.create! :name => "MRS RAJSHRI RAJEEV KARKHANIS", :mobile_phone => "93226 87191",:society_id => 63
Member.create! :name => "ASHOK BHOJWANI", :mobile_phone => "",:email_id=> "sonasimu@yahoo.com",:society_id => 63
Member.create! :name => "JAGDISH H SHIVLANI", :mobile_phone => "",:society_id => 63
Member.create! :name => "FAIZ SIDDIQUE", :mobile_phone => "9819397890",:society_id => 63
Member.create! :name => "KARAN KHANNA", :mobile_phone => "9820210827",:society_id => 63
Member.create! :name => "PRIYANKA CHANANA", :mobile_phone => "",:society_id => 63
Member.create! :name => "DILIP D BHATIA", :mobile_phone => "9323552090",:society_id => 63
Member.create! :name => "REGINA .A.SETHI", :mobile_phone => "98213 35779",:society_id => 63
Member.create! :name => "MEHESH RATANPAL", :mobile_phone => "98214 43389",:email_id=> "ratanpalm@hotmail.com",:society_id => 64
Member.create! :name => "BHARAT RATAN PAL", :mobile_phone => "99303 71004",:email_id=> "bhart_ratanpal@hotmail.com",:society_id => 64
Member.create! :name => "KARAN RATANPAL", :mobile_phone => "98202 64441",:email_id=> "karan_0508@hotmail.com",:society_id => 64
Member.create! :name => "ANISH DAYAL THAWRANI", :mobile_phone => "98704 07485",:email_id=> "anish.thawrani@hotmail.com",:society_id => 65
Member.create! :name => "ANIL J. BABEL", :mobile_phone => "98200 40350",:society_id => 66
Member.create! :name => "SUMEET S SHROFF", :mobile_phone => "98212 12676",:email_id=> "summet@prateeksha.com",:society_id => 66
Member.create! :name => "SHAYAM MALPANI", :mobile_phone => "98200 30230",:email_id=> "malpani_s@vsnl.com",:society_id => 66
Member.create! :name => "SRIKISHIN C SHROFF", :mobile_phone => "9821005123",:society_id => 66
Member.create! :name => "SURENDRA D. SUMEL", :mobile_phone => "",:society_id => 67
Member.create! :name => "AJAY OMPRAKASH MEHTA", :mobile_phone => "98211 49789",:society_id => 67
Member.create! :name => "RAKESH KUMAR MADANGOPAL SETH", :mobile_phone => "93235 60249",:society_id => 67
Member.create! :name => "ANUP MUNSHI", :mobile_phone => "",:society_id => 67
Member.create! :name => "BHARAT.B.LAKHANI", :mobile_phone => "98211 61856",:society_id => 67
Member.create! :name => "DINESH K SRIVASTAVA", :mobile_phone => "98670 45353",:email_id=> "dinesh28@gmail.com",:society_id => 67
Member.create! :name => "JAGMOHAN SINGH DANG", :mobile_phone => "98200 44994",:society_id => 67
Member.create! :name => "RAJU KANYALAL ASWANI", :mobile_phone => "",:society_id => 67
Member.create! :name => "MURALI BHERUMAL KHERAJANI", :mobile_phone => "",:society_id => 67
Member.create! :name => "AMIT MURALI KHERAJANI", :mobile_phone => "",:society_id => 67
Member.create! :name => "RANJIT MADHUKAR PATKAR", :mobile_phone => "98922 34660",:society_id => 67
Member.create! :name => "SHAKUNTALA MEHTA", :mobile_phone => "99871 98942",:society_id => 67
Member.create! :name => "SURAJ ASWANI", :mobile_phone => "99207 15457",:email_id=> "concordint@gmail.com",:society_id => 67
Member.create! :name => "NAVEEN JAIN", :mobile_phone => "98200 25238",:society_id => 67
Member.create! :name => "FIROZ.S.NEEMUCHWALA", :mobile_phone => "98925 26706",:society_id => 67
Member.create! :name => "MR PRAMOD SURAF", :mobile_phone => "98210 60175",:society_id => 67
Member.create! :name => "MAHENDRA BISANI", :mobile_phone => "93222 21591",:society_id => 67
Member.create! :name => "ALOK M BISANI", :mobile_phone => "98929 52528",:society_id => 67
Member.create! :name => "MAYUR M BISANI", :mobile_phone => "98211 50289",:society_id => 67
Member.create! :name => "GAURAV RAKESH SETH", :mobile_phone => "98206 87419",:email_id=> "gaurav317@hotmail.com",:society_id => 67
Member.create! :name => "ASHOK C DARYANANI", :mobile_phone => "98208 80136",:society_id => 67
Member.create! :name => "GAUTAM SETH", :mobile_phone => "98330 53049",:email_id=> "gautam271190@hotmail.com",:society_id => 67
Member.create! :name => "PRANAV SARAF", :mobile_phone => "",:society_id => 67
Member.create! :name => "ANURAG JAIN", :mobile_phone => "98209 21229",:society_id => 67
Member.create! :name => "SAVIO D SILVA", :mobile_phone => "90040 41555",:email_id=> "saviochote@gmail.com",:society_id => 67
Member.create! :name => "GHANSHYAM DAS JESWANI", :mobile_phone => "93229 76488",:society_id => 67
Member.create! :name => "ASHWIN PATNI", :mobile_phone => "98218 94570",:society_id => 67
Member.create! :name => "RAJESH MEHRA", :mobile_phone => "98204 36549",:society_id => 67
Member.create! :name => "DIPNA DARYANI", :mobile_phone => "9820610340",:society_id => 67
Member.create! :name => "ROHIT MEHTA", :mobile_phone => "9324181001",:society_id => 67
Member.create! :name => "NIKITA MEHTA", :mobile_phone => "",:society_id => 67
Member.create! :name => "NARASIMHA SHARMA", :mobile_phone => "9820199205",:society_id => 67
Member.create! :name => "ASHANK PATKAR", :mobile_phone => "9920734660",:society_id => 67
Member.create! :name => "DIPTI AHUJA", :mobile_phone => "9820373315",:society_id => 67
Member.create! :name => "S.M.PASHA", :mobile_phone => "",:society_id => 68
Member.create! :name => "UDAI GUPTA", :mobile_phone => "9820 51606",:society_id => 68
Member.create! :name => "NITIN.D.HARCHANDANI", :mobile_phone => "98200 54985",:email_id=> "jaivinh@yahoo.co.in",:society_id => 68
Member.create! :name => "VARYANI RAJESH", :mobile_phone => "",:society_id => 68
Member.create! :name => "GAURI SHANKAR GUPTA", :mobile_phone => "",:society_id => 68
Member.create! :name => "ILYAS PASHA SHAIKH", :mobile_phone => "",:society_id => 68
Member.create! :name => "SANJEEV RAMRAO BENADIKAR", :mobile_phone => "",:society_id => 68
Member.create! :name => "ANURAAG KOTHARI", :mobile_phone => "98204 00268",:society_id => 68
Member.create! :name => "MANISHA KALWANI", :mobile_phone => "9820151187",:society_id => 68
Member.create! :name => "YASH VARYANI", :mobile_phone => "9820017544",:society_id => 68
Member.create! :name => "ASHOK PAREEK", :mobile_phone => "9920363777",:society_id => 68
Member.create! :name => "SHAISTA PASHA SHAIKH", :mobile_phone => "98200 67481",:society_id => 68
Member.create! :name => "PANKAJ NEMCHAND RAYONIA", :mobile_phone => "93235 15575",:society_id => 68
Member.create! :name => "DEVINA PANKAJ RAYONIA", :mobile_phone => "",:society_id => 68
Member.create! :name => "SHALIT RAJPAL", :mobile_phone => "",:society_id => 69
Member.create! :name => "SATVINDER SINGH CHADHA", :mobile_phone => "98212 11869",:email_id=> "chadha77@vvltd.com",:society_id => 69
Member.create! :name => "CAP DIPAK MOHAN", :mobile_phone => "98207 10091",:society_id => 69
Member.create! :name => "KANHAIYALAL .D.MUNDHRA", :mobile_phone => "98690 59548",:society_id => 69
Member.create! :name => "SHIV BHAGWAN .D.MUNDHRA", :mobile_phone => "",:society_id => 69
Member.create! :name => "ROHIT S MUNDHRA", :mobile_phone => "98673 64274",:society_id => 69
Member.create! :name => "RAHUL MOHAN", :mobile_phone => "98200 73099",:society_id => 69
Member.create! :name => "MANISH MITTAL", :mobile_phone => "93250 80081",:society_id => 69
Member.create! :name => "MISHA INDRAKUMAR KARAMCHANDANI", :mobile_phone => "98923 25365",:society_id => 70
Member.create! :name => "IVAN CASTELINO", :mobile_phone => "",:society_id => 71
Member.create! :name => "BALDEV SINGH RANA", :mobile_phone => "",:society_id => 71
Member.create! :name => "ASHOK BANOD", :mobile_phone => "93240 60150",:society_id => 71
Member.create! :name => "NAURAJSINGH RANA BALDEV", :mobile_phone => "",:society_id => 71
Member.create! :name => "YUVRAJSINGH RANA BALDEV", :mobile_phone => "",:society_id => 71
Member.create! :name => "SATISH GAJANAND MANDELIA", :mobile_phone => "98691 54701",:society_id => 71
Member.create! :name => "MALHOTRA GUNNITA .S.", :mobile_phone => "98201 44784",:society_id => 71
Member.create! :name => "KULDEEP SURAM SINGH THAKUR", :mobile_phone => "98215 81811",:society_id => 71
Member.create! :name => "SULTAN I SEMY", :mobile_phone => "",:society_id => 71
Member.create! :name => "SUNIL NARWANI", :mobile_phone => "98210 12023",:society_id => 71
Member.create! :name => "SIDDHARTH CASTELIONO", :mobile_phone => "98201 26715",:society_id => 71
Member.create! :name => "JAYESH GANATRA", :mobile_phone => "98210 75761",:society_id => 71
Member.create! :name => "ASHOK P. AHUJA", :mobile_phone => "98191 33864",:society_id => 71
Member.create! :name => "ASIS KUMAR DATTA", :mobile_phone => "98205 31469",:society_id => 71
Member.create! :name => "MOHAR DUTTA", :mobile_phone => "98920 97575",:society_id => 71
Member.create! :name => "BUA SINGH", :mobile_phone => "99209 55576",:society_id => 71
Member.create! :name => "NAVNEET SINGH", :mobile_phone => "98200 31155",:society_id => 71
Member.create! :name => "GAURAV NARWANI", :mobile_phone => "9821012023",:society_id => 71
Member.create! :name => "YASH NARWANI", :mobile_phone => "9821012023",:society_id => 71
Member.create! :name => "AARTI NIHALANI", :mobile_phone => "9769558266",:society_id => 71
Member.create! :name => "DIVYA V NIHALANI", :mobile_phone => "9833151288",:society_id => 71
Member.create! :name => "DIMPLE GOYAL", :mobile_phone => "9820671906",:society_id => 71
Member.create! :name => "SEMY FAIM SULTAN", :mobile_phone => "98700 43210",:society_id => 71
Member.create! :name => "VIJAY M NIHALANI", :mobile_phone => "98213 12734",:society_id => 71
Member.create! :name => "SACHIN CASTELIONO", :mobile_phone => "98201 26715",:society_id => 71
Member.create! :name => "MANOJ TIWARI", :mobile_phone => "98201 32955",:society_id => 71
Member.create! :name => "GAGAN GUPTA", :mobile_phone => "98202 37699",:society_id => 71
Member.create! :name => "KAILASH CHANDRA GUPTA", :mobile_phone => "98214 21355",:email_id=> "kcgupta@blendfinance.com",:society_id => 72
Member.create! :name => "FATIMA MEHTA", :mobile_phone => "",:society_id => 72
Member.create! :name => "AJIT GHOSH", :mobile_phone => "98210 10004",:society_id => 72
Member.create! :name => "HARESH M. SHANI", :mobile_phone => "98202 12840",:email_id=> "gmgmnts@mtnl.net.in",:society_id => 72
Member.create! :name => "FAZAL MOHAMOOD", :mobile_phone => "96546 26647",:society_id => 72
Member.create! :name => "RAM PREMCHAND NIHALANI", :mobile_phone => "",:society_id => 72
Member.create! :name => "SOURABH NARANG", :mobile_phone => "98212 43869",:society_id => 72
Member.create! :name => "JEME.D. KERAWALLA", :mobile_phone => "98201 12801",:society_id => 72
Member.create! :name => "BHARAT.G.SHAH", :mobile_phone => "98216 39392",:email_id=> "saritabharat@yahoo.co.in",:society_id => 72
Member.create! :name => "IQBAL.D. BAVAN", :mobile_phone => "98205 67863",:society_id => 72
Member.create! :name => "TYEB .K.MEHTA", :mobile_phone => "",:society_id => 72
Member.create! :name => "RAVI GUPTA", :mobile_phone => "98211 38869",:society_id => 72
Member.create! :name => "NANDA KUMAR .B.NAIR", :mobile_phone => "98202 64770",:email_id=> "nand1@yahoo.com",:society_id => 72
Member.create! :name => "ARVINDER SODHI", :mobile_phone => "98200 72937",:society_id => 72
Member.create! :name => "ANAND PRAKASH C", :mobile_phone => "98205 37022",:society_id => 72
Member.create! :name => "SUMIT KHANNA", :mobile_phone => "98215 72198",:society_id => 72
Member.create! :name => "SURESH HEGDE", :mobile_phone => "9820436035",:society_id => 72
Member.create! :name => "VASHISHT AGGARWAL", :mobile_phone => "9820436035",:society_id => 72
Member.create! :name => "M L DEWAN", :mobile_phone => "9820108273",:society_id => 72
Member.create! :name => "SHABANA MULKANI", :mobile_phone => "9820140954",:society_id => 72
Member.create! :name => "ASHISH CHANDRAKANT TUMBAWALA", :mobile_phone => "98203 43288",:society_id => 73
Member.create! :name => "ROHINI CHANDRA", :mobile_phone => "98201 01114",:email_id=> "rohina_c@yahoo.co.in",:society_id => 73
Member.create! :name => "DAMANIA NIKHIL SHASHIKANT", :mobile_phone => "98201 51042",:email_id=> "nikkildamania@yahoo.co.in",:society_id => 73
Member.create! :name => "KESHAV BALKRISHNA JADHAV", :mobile_phone => "98201 35371",:society_id => 73
Member.create! :name => "DEEPA PAGNIS", :mobile_phone => "",:society_id => 73
Member.create! :name => "JAYESH JIVATLAL BHAGAT", :mobile_phone => "98201 82213",:society_id => 73
Member.create! :name => "DR.JAYANT GOVINDAS SAMPAT", :mobile_phone => "98211 40948",:email_id=> "sjsampat@gmail.com",:society_id => 73
Member.create! :name => "FERNANDES LOUIS LEO", :mobile_phone => "99672 92877",:email_id=> "louisleo01@hotmail.com",:society_id => 73
Member.create! :name => "DAMANIA DARSHIT", :mobile_phone => "98198 78963",:email_id=> "darshitdamania@hotmail.com",:society_id => 73
Member.create! :name => "KANTA BHAGAT", :mobile_phone => "98219 16964",:society_id => 73
Member.create! :name => "KAVITA KHANNA", :mobile_phone => "9869425462",:society_id => 73
Member.create! :name => "VIJAY KUMAR JAIN", :mobile_phone => "93235 61299",:society_id => 73
Member.create! :name => "KUNNATH ALLWYN JOHN", :mobile_phone => "93242 39701",:email_id=> "allwyn_india@hotmail.com",:society_id => 73
Member.create! :name => "TARIQ AMIRALI MERCHANT", :mobile_phone => "98923 33786",:society_id => 73
Member.create! :name => "KHANNA RAKESH .R.", :mobile_phone => "93237 39899",:society_id => 74
Member.create! :name => "MUKUND SHARMA", :mobile_phone => "98673 84689",:email_id=> "anushreenmukund@gmail.com",:society_id => 75
Member.create! :name => "RAMCHAND L. HEMDEV", :mobile_phone => "",:society_id => 76
Member.create! :name => "RUMY FRAMROZ BHIWANDIWALA", :mobile_phone => "98201 94013",:society_id => 76
Member.create! :name => "ABHIJIT R HEMDEV", :mobile_phone => "98336 84270",:society_id => 76
Member.create! :name => "DIWAN RAHUL NANDA", :mobile_phone => "",:society_id => 77
Member.create! :name => "C.R.RAJESH NAIR", :mobile_phone => "98198 43777",:society_id => 77
Member.create! :name => "MR JAGDISH SAXENA", :mobile_phone => "",:society_id => 77
Member.create! :name => "REKHA SAHAY", :mobile_phone => "98200 96963",:email_id=> "rekhasubodhsahay@gmail.com",:society_id => 78
Member.create! :name => "RAMESH N. SHIVANI", :mobile_phone => "",:society_id => 78
Member.create! :name => "DEEPAK CHUGH", :mobile_phone => "98195 43464",:email_id=> "deepak2like@yahoo.co.in",:society_id => 78
Member.create! :name => "SUKHDEO AGARAWAL", :mobile_phone => "98201 36193",:email_id=> "sukhdeo_1@hotmail.com",:society_id => 78
Member.create! :name => "ZEESHAN ABEDI SYED", :mobile_phone => "",:society_id => 78
Member.create! :name => "SUNDER .H.SHAHANI", :mobile_phone => "98690 53058",:society_id => 78
Member.create! :name => "HINDUJA BANSI DAYARAM", :mobile_phone => "99309 35795",:society_id => 78
Member.create! :name => "SEEMA .R. KESWANI", :mobile_phone => "98202 71121",:society_id => 78
Member.create! :name => "SARWAN KUMAR LIHALA", :mobile_phone => "98202 21134",:society_id => 78
Member.create! :name => "ANIL KUMAR .L.AGARWAL", :mobile_phone => "98210 38131",:society_id => 78
Member.create! :name => "SUBHASH .C.UDAIPURI", :mobile_phone => "",:society_id => 78
Member.create! :name => "MANOJ .S. KHETAN", :mobile_phone => "98202 90892",:society_id => 78
Member.create! :name => "SAMEER BHAKHRI", :mobile_phone => "98200 07598",:society_id => 78
Member.create! :name => "DEEPAK JOSHI", :mobile_phone => "",:society_id => 78
Member.create! :name => "ASHOK .C. SAIGAL", :mobile_phone => "",:society_id => 78
Member.create! :name => "ANIL KUMAR SEHGAL", :mobile_phone => "98210 88539",:society_id => 78
Member.create! :name => "SHARMILA .J.AGARWAL", :mobile_phone => "98211 98706",:society_id => 78
Member.create! :name => "SANGITA .P. AGGARWAL", :mobile_phone => "98203 45923",:society_id => 78
Member.create! :name => "PASARI NANDLAL", :mobile_phone => "98201 02874",:society_id => 78
Member.create! :name => "BIMALJIT SINGH GREWAL", :mobile_phone => "98698 49636",:society_id => 78
Member.create! :name => "SAWLANI KAMLESH KIMATRAI", :mobile_phone => "98205 03472",:society_id => 78
Member.create! :name => "ANAND D BANJARA", :mobile_phone => "98211 33173",:society_id => 78
Member.create! :name => "NIRAJ TEKRIWL", :mobile_phone => "98206 08761",:society_id => 78
Member.create! :name => "POURUSH JHUNJHUNWALA", :mobile_phone => "",:society_id => 78
Member.create! :name => "NISHANT M KHETAN", :mobile_phone => "98190 47597",:society_id => 78
Member.create! :name => "NISHIT M KHETAN", :mobile_phone => "98190 47597",:society_id => 78
Member.create! :name => "SUMIT ANULAL BAJORIA", :mobile_phone => "93245 22186",:email_id=> "bajoriasumit@gmail.com",:society_id => 78
Member.create! :name => "MR SHYAM G.AHUJA", :mobile_phone => "98336 46201",:society_id => 78
Member.create! :name => "SRIKANT CHATURVEDI", :mobile_phone => "98200 47758",:email_id=> "cskfelos_ca@vsnl.net",:society_id => 78
Member.create! :name => "LAXMI NARAYAN SOMANI", :mobile_phone => "9321511228",:society_id => 78
Member.create! :name => "PRAVEEN SOMANI", :mobile_phone => "9321166666",:society_id => 77
Member.create! :name => "IRFAN ALAM SIDDIQUE", :mobile_phone => "99309 98452",:society_id => 78
Member.create! :name => "PTATIKSH H.TANKARIA", :mobile_phone => "",:society_id => 78
Member.create! :name => "INDRA NENUMAL BABANI", :mobile_phone => "93208 78160",:society_id => 78
Member.create! :name => "KHANNA SHOBHA", :mobile_phone => "98208 84558",:society_id => 78
Member.create! :name => "K.RAVI SHANKAR", :mobile_phone => "98201 49773",:society_id => 78
Member.create! :name => "ARTI PUNJABI", :mobile_phone => "98203 83069",:email_id=> "artiprakashp@gmail.com",:society_id => 78
Member.create! :name => "RAVI V MALHOTRA", :mobile_phone => "99875 49055",:email_id=> "ravi_malhotra75@yahoo.com",:society_id => 78
Member.create! :name => "KAVAN JAGDISH MUKHTYAR", :mobile_phone => "9987538628",:society_id => 78
Member.create! :name => "CHETAN BATRA", :mobile_phone => "9867222219",:society_id => 78
Member.create! :name => "YASHASWINI S SAHAY", :mobile_phone => "9820096963",:society_id => 78
Member.create! :name => "RICHA S UDAIPURI", :mobile_phone => "9320871000",:society_id => 78
Member.create! :name => "DIVYA S UDAIPURI", :mobile_phone => "9320871000",:society_id => 78
Member.create! :name => "MOHAN ADNANI", :mobile_phone => "9930982053",:society_id => 78
Member.create! :name => "ANEES CEMENTWALA", :mobile_phone => "9820026080",:society_id => 78
Member.create! :name => "SANJIV K THAWANI", :mobile_phone => "9820030195",:society_id => 78
Member.create! :name => "NAVEEN SOMANI", :mobile_phone => "",:email_id=> "nnaveenn@groupinland.com",:society_id => 78
Member.create! :name => "MOHD. SHAMS ALAM SIDDIQUEE", :mobile_phone => "98200 77225",:society_id => 79
Member.create! :name => "ANIL KHERA", :mobile_phone => "98202 22200",:email_id=> "anilkhera@d2hmail.com",:society_id => 79
Member.create! :name => "D.N.SINGH", :mobile_phone => "98214 49269",:society_id => 79
Member.create! :name => "SIDDIQUEE RIZWAN ALAM", :mobile_phone => "98200 85399",:society_id => 79
Member.create! :name => "RAVIMDER SINGH", :mobile_phone => "98214 49269",:society_id => 79
Member.create! :name => "ANIRUDH LIHALA", :mobile_phone => "99303 74788",:society_id => 79
Member.create! :name => "AYUSHYA VARDHAN LIHALA", :mobile_phone => "98202 28083",:society_id => 79
Member.create! :name => "VIJAY CHANGLANI", :mobile_phone => "",:society_id => 79
Member.create! :name => "SURINDER KAPOOR", :mobile_phone => "",:society_id => 79
Member.create! :name => "DR ANUJ SAXENA", :mobile_phone => "93220 15407",:society_id => 79
Member.create! :name => "KALYAN SHAH", :mobile_phone => "92244 41843",:society_id => 80
Member.create! :name => "SHYAM RAJWANEY", :mobile_phone => "98200 49946",:society_id => 81
Member.create! :name => "SANDEEP RASTOGI", :mobile_phone => "98200 94214",:email_id=> "sandeeprastogi100@yahoo.co.in",:society_id => 81
Member.create! :name => "SUDHIR LUTHRA", :mobile_phone => "98922 01729",:society_id => 81
Member.create! :name => "RACHNA D'SILVA", :mobile_phone => "98200 80515",:society_id => 82
Member.create! :name => "VASUDEV N. PUNJABI", :mobile_phone => "",:society_id => 82
Member.create! :name => "SHERIFF HASSAN KALMADI", :mobile_phone => "",:society_id => 82
Member.create! :name => "RAMLAL P.HARWANI", :mobile_phone => "",:society_id => 82
Member.create! :name => "PRITAM RAMLAL .HARWANI", :mobile_phone => "",:society_id => 82
Member.create! :name => "SUNIL RAMLAL .HARWANI", :mobile_phone => "",:society_id => 82
Member.create! :name => "SURESH RAMLAL .HARWANI", :mobile_phone => "98210 93144",:society_id => 82
Member.create! :name => "CHANDA PRADEEP KUMAR", :mobile_phone => "98200 99282",:society_id => 82
Member.create! :name => "PARAG KISHOR SHAH", :mobile_phone => "98215 21270",:society_id => 82
Member.create! :name => "ASIM KISHOR SHAH", :mobile_phone => "98211 83859",:society_id => 82
Member.create! :name => "SHAMA SHAH", :mobile_phone => "",:society_id => 82
Member.create! :name => "KISHOR SUKH LAL SHAH", :mobile_phone => "",:society_id => 82
Member.create! :name => "SURJEET.M. DADIALA", :mobile_phone => "98213 48986",:email_id=> "skybluefinance9@gmail.com",:society_id => 82
Member.create! :name => "MS PRIYA TANDON", :mobile_phone => "",:society_id => 82
Member.create! :name => "BIMAL KUMARI TANDON", :mobile_phone => "",:society_id => 82
Member.create! :name => "JAYA PRAKASH LALWANI", :mobile_phone => "98215 76189",:society_id => 82
Member.create! :name => "SHARAN PRAKASH LALWANI", :mobile_phone => "98215 76189",:society_id => 82
Member.create! :name => "MONISHA PRAKASH LALWANI", :mobile_phone => "98704 57648",:society_id => 82
Member.create! :name => "SUJATA AGARWAL", :mobile_phone => "98203 05381",:society_id => 82
Member.create! :name => "POONAM DHIRAJ CHAUDHRY", :mobile_phone => "98190 83696",:society_id => 82
Member.create! :name => "SANJAY G MUNYAL", :mobile_phone => "98202 12169",:society_id => 82
Member.create! :name => "SAMEER M. DESHPANDE", :mobile_phone => "98925 39160",:email_id=> "desam@hotmail.com",:society_id => 83
Member.create! :name => "NIKHILESH .M. DESHPANDE", :mobile_phone => "98701 33577",:society_id => 83
Member.create! :name => "ASHISH .V, SAKSENA", :mobile_phone => "98201 39360",:society_id => 83
Member.create! :name => "SHANKER VENKATESWARAN", :mobile_phone => "98203 03104",:society_id => 83
Member.create! :name => "PRAVEEN KUMAR SHARMA", :mobile_phone => "98210 88941",:society_id => 83
Member.create! :name => "MANISH RAVINDRA AYADE", :mobile_phone => "98338 88993",:society_id => 83
Member.create! :name => "DIBAKAR BAG", :mobile_phone => "98201 26599",:society_id => 84
Member.create! :name => "S.D.PATHAK", :mobile_phone => "98200 31951",:society_id => 84
Member.create! :name => "SUDHIR SANTOSH PATHAK", :mobile_phone => "98201 35455",:society_id => 84
Member.create! :name => "SANDEEP CHATURVEDI", :mobile_phone => "98250 46847",:society_id => 84
Member.create! :name => "ANJALI CHATURVEDI", :mobile_phone => "",:society_id => 84
Member.create! :name => "ASHOK BINDAL", :mobile_phone => "98202 19802",:society_id => 84
Member.create! :name => "DIBYENDV BINDAL", :mobile_phone => "98203 39924",:society_id => 84
Member.create! :name => "MANISH CHANDRA", :mobile_phone => "98204 27825",:society_id => 84
Member.create! :name => "MITTAL G.PATEL", :mobile_phone => "98201 94156",:society_id => 84
Member.create! :name => "RAJIV V . VYAS", :mobile_phone => "98202 14241",:society_id => 84
Member.create! :name => "KARAN RAJ KUMAR", :mobile_phone => "",:society_id => 84
Member.create! :name => "RATTAN LAL TIKU", :mobile_phone => "98241 10927",:society_id => 84
Member.create! :name => "SUDHIR KHANNA", :mobile_phone => "98200 41444",:society_id => 84
Member.create! :name => "MUKULESH RISHI", :mobile_phone => "",:society_id => 84
Member.create! :name => "DEEPAK AJWANI", :mobile_phone => "",:society_id => 84
Member.create! :name => "LALIT MEHTA", :mobile_phone => "9821111679",:society_id => 84
Member.create! :name => "NILESH GOYAL", :mobile_phone => "93245 06959",:email_id=> "nilesh.goyal1@gmail.com",:society_id => 84
Member.create! :name => "ANIL LOHIA", :mobile_phone => "98200 44529",:society_id => 84
Member.create! :name => "NARASH KISHAN", :mobile_phone => "98200 62954",:society_id => 84
Member.create! :name => "DR.UDATTA KHER", :mobile_phone => "98200 69036",:society_id => 84
Member.create! :name => "TEJASHREE RANE CHAKRANI", :mobile_phone => "98190 49909",:society_id => 84
Member.create! :name => "CHANDRA K THAWANI", :mobile_phone => "98204 32717",:society_id => 84
Member.create! :name => "RAVI H VAZIRANI", :mobile_phone => "98920 77770",:society_id => 84
Member.create! :name => "BINOD KUMAR PRADHAN", :mobile_phone => "98210 45351",:email_id=> "binodpradhan@vsnl.com",:society_id => 84
Member.create! :name => "BINAY PRADHAN", :mobile_phone => "98197 64944",:email_id=> "cft.films@gmail.com",:society_id => 84
Member.create! :name => "DEEP PRADHAN", :mobile_phone => "",:society_id => 84
Member.create! :name => "VIJAY KUMAR MEHRA", :mobile_phone => "98332 36209",:email_id=> "sumitmehra08@gmail.com",:society_id => 84
Member.create! :name => "SUMIT MEHRA", :mobile_phone => "98209 07229",:email_id=> "sumitmehra08@gmail.com",:society_id => 84
Member.create! :name => "PRADEEP THAMPI", :mobile_phone => "98210 21255",:society_id => 84
Member.create! :name => "RAJUL H. BHAGATWALA", :mobile_phone => "98201 06826",:society_id => 84
Member.create! :name => "T S SANDHU", :mobile_phone => "98211 78200",:email_id=> "sandhuts@vsnl.com",:society_id => 84
Member.create! :name => "SANJEV HIREMATH", :mobile_phone => "98196 00031",:email_id=> "hiremath2004@hotmail.com",:society_id => 84
Member.create! :name => "SAMAR YOGISH GOYAL", :mobile_phone => "93230 51007",:society_id => 84
Member.create! :name => "SHAN KAMAL SETHI", :mobile_phone => "98200 86268",:society_id => 84
Member.create! :name => "SAMEER SETHI", :mobile_phone => "98206 51677",:society_id => 84
Member.create! :name => "PROMOD PRADHAN", :mobile_phone => "99675 33813",:email_id=> "promodpradhan@gmail.com",:society_id => 84
Member.create! :name => "DEEPAK BAJAJ", :mobile_phone => "98193 96666",:society_id => 84
Member.create! :name => "RAHUL THAWANI", :mobile_phone => "98334 98314",:society_id => 84
Member.create! :name => "AMIT THAWANI", :mobile_phone => "98210 27027",:society_id => 84
Member.create! :name => "PONAM KULKARNI", :mobile_phone => "",:society_id => 84
Member.create! :name => "VARUN R. VAZIRANI", :mobile_phone => "98920 77770",:society_id => 84
Member.create! :name => "NEHUL N JIANDANI", :mobile_phone => "98200 67933",:society_id => 84
Member.create! :name => "RHEA N JIANDANI", :mobile_phone => "98200 62959",:society_id => 84
Member.create! :name => "SIDDHI N SHETTY", :mobile_phone => "",:society_id => 84
Member.create! :name => "PRAMOD K TIWARI", :mobile_phone => "98198 36701",:society_id => 84
Member.create! :name => "NACHIKETA TIWARI", :mobile_phone => "98670 00092",:society_id => 84
Member.create! :name => "MRS.SHEELA GOYAL", :mobile_phone => "93241 65901",:society_id => 84
Member.create! :name => "NEERAJ GOYAL", :mobile_phone => "98210 53547",:email_id=> "neeraj@shivaja.com",:society_id => 84
Member.create! :name => "CAPT. NOSHIR D. DARUWALA", :mobile_phone => "",:society_id => 85
Member.create! :name => "NEVILLE. NOSHIR DARUWALA", :mobile_phone => "",:society_id => 85
Member.create! :name => "LATA .M. VASWANI", :mobile_phone => "98210 99676",:society_id => 85
Member.create! :name => "MATHANE SHASHANK DAMODER", :mobile_phone => "",:society_id => 85
Member.create! :name => "SACHIN KHANNA", :mobile_phone => "98211 14482",:society_id => 85
Member.create! :name => "ANIL KHANNA", :mobile_phone => "98200 38083",:society_id => 85
Member.create! :name => "SHANTANU DEY", :mobile_phone => "98201 32999",:society_id => 85
Member.create! :name => "MATHANE AMEET SHASHANK", :mobile_phone => "98215 99855",:society_id => 85
Member.create! :name => "ADRIAN FOX", :mobile_phone => "98701 62000",:society_id => 85
Member.create! :name => "SHANKAR NARAYAN", :mobile_phone => "98202 36612",:email_id=> "shankarnarayan76@rediffmail.com",:society_id => 85
Member.create! :name => "SURYAVEER SINGH BHULLAR", :mobile_phone => "98331 13471",:society_id => 85
Member.create! :name => "SAMEER KOHLI", :mobile_phone => "99670 17722",:society_id => 85
Member.create! :name => "NISHANT SANTKUMAR JITANI", :mobile_phone => "98200 81690",:society_id => 85
Member.create! :name => "RAJESH SHAH", :mobile_phone => "98690 05206",:society_id => 86
Member.create! :name => "SANDEEP MALHOTRA", :mobile_phone => "9870141978",:society_id => 87
Member.create! :name => "MEENA BRAHMESH PATEL", :mobile_phone => "98212 41932",:society_id => 88
Member.create! :name => "MADHUKAR AGARWAL", :mobile_phone => "",:society_id => 88
Member.create! :name => "SHANKAR LALCHAND KANOI", :mobile_phone => "98213 59612",:society_id => 88
Member.create! :name => "RAJ KUMAR SARAOGI", :mobile_phone => "98210 87654",:society_id => 88
Member.create! :name => "GUR PRATAP SINGH GANDHI", :mobile_phone => "98193 29398",:society_id => 88
Member.create! :name => "RAMESH KUMAR VATNANI", :mobile_phone => "98673 16741",:society_id => 89
Member.create! :name => "R.S.PUGGAL", :mobile_phone => "98211 58250",:society_id => 89
Member.create! :name => "GAUTAM SARKAR", :mobile_phone => "98339 27168",:society_id => 89
Member.create! :name => "MUNIRA HARSHAD MEHTA", :mobile_phone => "98330 06803",:society_id => 89
Member.create! :name => "DR MAHESH N. GUJRIA", :mobile_phone => "98210 39300",:society_id => 89
Member.create! :name => "SHANKAR IYER", :mobile_phone => "98388 98449",:email_id=> "xiyh@swiss.com",:society_id => 89
Member.create! :name => "SUMESH LEKHI", :mobile_phone => "98200 03737",:society_id => 89
Member.create! :name => "AMRISH ARORA", :mobile_phone => "98218 87053",:email_id=> "amrish@manushya.com",:society_id => 89
Member.create! :name => "NARESH SHARMA", :mobile_phone => "98198 27138",:society_id => 89
Member.create! :name => "EBRAHIM MOHAMMED SOORYA", :mobile_phone => "98211 84442",:society_id => 89
Member.create! :name => "SANDEEP J MEHTA", :mobile_phone => "93226 95003",:society_id => 89
Member.create! :name => "NISHA VATNANI", :mobile_phone => "",:society_id => 89
Member.create! :name => "KARISHMA VATNANI", :mobile_phone => "",:society_id => 89
Member.create! :name => "ANIL K NANDA", :mobile_phone => "9833994407",:society_id => 89
Member.create! :name => "KAWARDEEP S GANDHI", :mobile_phone => "9820866977",:society_id => 89
Member.create! :name => "RAJVEE S MEHTA", :mobile_phone => "9322695003",:society_id => 89
Member.create! :name => "VIRAAJ S MEHTA", :mobile_phone => "9322695003",:society_id => 89
Member.create! :name => "RAVIJAA S MEHTA", :mobile_phone => "9322695003",:society_id => 89
Member.create! :name => "DHRUV NANDA", :mobile_phone => "9833994407",:society_id => 89
Member.create! :name => "ATUL B. LUKHANI", :mobile_phone => "",:society_id => 90
Member.create! :name => "HARESH BAPNA", :mobile_phone => "98211 39012",:society_id => 90
Member.create! :name => "SURESH SAHARIA", :mobile_phone => "98211 09409",:society_id => 90
Member.create! :name => "SALIMA REHMAN", :mobile_phone => "98203 07373",:society_id => 90
Member.create! :name => "WADHWANI SURESH .J.", :mobile_phone => "",:society_id => 90
Member.create! :name => "TARULATA.N.GANDHI", :mobile_phone => "98690 48913",:society_id => 90
Member.create! :name => "SURESH M. VODECHA", :mobile_phone => "98213 60564",:society_id => 90
Member.create! :name => "NARENDRA HIMATLAL DAVE", :mobile_phone => "98200 62961",:society_id => 90
Member.create! :name => "SANDEEP V. WASLEKAR", :mobile_phone => "98212 88497",:society_id => 90
Member.create! :name => "VINOD T. HARISINGHANI", :mobile_phone => "98923 16707",:society_id => 90
Member.create! :name => "TARACHAND.N. HARISINGHANI", :mobile_phone => "",:society_id => 90
Member.create! :name => "MEENA BHARAT DEWAN", :mobile_phone => "",:society_id => 90
Member.create! :name => "SANJEEV SETHI", :mobile_phone => "",:email_id=> "sanjeevethi3@yahoo.co.in",:society_id => 90
Member.create! :name => "RAMGOPAL SINGH", :mobile_phone => "93231 41367",:society_id => 90
Member.create! :name => "SHEETAL MISTRY", :mobile_phone => "98676 81181",:society_id => 90
Member.create! :name => "MOHIT NARENDRA DAVE", :mobile_phone => "98200 62961",:society_id => 90
Member.create! :name => "HASMUKH R SHETH ( MEHTA )", :mobile_phone => "98333 77657",:society_id => 90
Member.create! :name => "HITESH H SHETH ( MEHTA )", :mobile_phone => "98200 07646",:society_id => 90
Member.create! :name => "ARVIND SONI", :mobile_phone => "98200 87405",:society_id => 90
Member.create! :name => "SAHARIA ROHAN", :mobile_phone => "93229 96636",:society_id => 90
Member.create! :name => "VARADRAJ SHRIAN", :mobile_phone => "98701 88667",:society_id => 90
Member.create! :name => "SANJEEV B KUMAR", :mobile_phone => "98692 39489",:society_id => 90
Member.create! :name => "MONICA ANIL MITRA", :mobile_phone => "98330 06408",:society_id => 90
Member.create! :name => "PRAGATI MEHRA", :mobile_phone => "98204 39060",:email_id=> "pragatimehra@gmail.com",:society_id => 90
Member.create! :name => "AMAR THAKKAR", :mobile_phone => "9892302600",:society_id => 90
Member.create! :name => "NASIM DESAI", :mobile_phone => "9619190421",:society_id => 90
Member.create! :name => "RANJAN GUPTA", :mobile_phone => "9833630010",:society_id => 90
Member.create! :name => "SURESH SAHU", :mobile_phone => "9820146623",:society_id => 90
Member.create! :name => "RAM B. LUKHANI", :mobile_phone => "98211 20635",:society_id => 90
Member.create! :name => "MS RIKITA WADHWANI", :mobile_phone => "98671 8336",:society_id => 90
Member.create! :name => "MADHU SONTHALIA", :mobile_phone => "98201 62652",:society_id => 90
Member.create! :name => "ROQUE RODRIGUES", :mobile_phone => "98210 83514",:society_id => 90
Member.create! :name => "RAJEEV KAMLAKAR SADAVARTE", :mobile_phone => "98210 34027",:society_id => 90
Member.create! :name => "SANJAY SONI", :mobile_phone => "98217 25797",:society_id => 90
Member.create! :name => "RANJIT SINGH GAMBHIR", :mobile_phone => "99670 51168",:society_id => 91
Member.create! :name => "PADAM D. SHARMA", :mobile_phone => "",:society_id => 91
Member.create! :name => "SMT. SUNITA S. RATANPAL", :mobile_phone => "98203 39971",:society_id => 91
Member.create! :name => "SATISH.C.BANSAL", :mobile_phone => "98200 59192",:society_id => 91
Member.create! :name => "HASMUKH AMRUTLAL SHAH", :mobile_phone => "",:society_id => 91
Member.create! :name => "DILIP K. KARAMCHANDANI", :mobile_phone => "98925 46114",:email_id=> "dilipk63@yahoo.com",:society_id => 91
Member.create! :name => "INDRAKUMAR K. KARAMCHANDANI", :mobile_phone => "99250 03409",:society_id => 91
Member.create! :name => "ANAND .R. ASWANI", :mobile_phone => "98202 35523",:society_id => 91
Member.create! :name => "ARJUN .R. ASWANI", :mobile_phone => "98202 35523",:society_id => 91
Member.create! :name => "SHAH RAJUN KRISHNADAS", :mobile_phone => "98200 38517",:society_id => 91
Member.create! :name => "ARUN KUMAR JAIN", :mobile_phone => "98200 77946",:society_id => 91
Member.create! :name => "NARESH.P.BOTHRA", :mobile_phone => "93222 30749",:email_id=> "nareshbothra@hotmail.com",:society_id => 91
Member.create! :name => "NARAYAN DAS UTTAMCHANDANI", :mobile_phone => "99678 98990",:email_id=> "nari_345@hotmail.com",:society_id => 91
Member.create! :name => "TARUN GUPTA", :mobile_phone => "98232 77334",:society_id => 91
Member.create! :name => "KANT GUPTA", :mobile_phone => "98207 69124",:society_id => 91
Member.create! :name => "DR.NEERAJ PARSON", :mobile_phone => "98210 33283",:society_id => 91
Member.create! :name => "SUNIL NAGRANI", :mobile_phone => "98203 86443",:society_id => 91
Member.create! :name => "SUMIT INDRAKUMAR KARAMCHANDANI", :mobile_phone => "98923 76335",:email_id=> "sumittheglent@hotmail.com",:society_id => 91
Member.create! :name => "ARUN CHAWLA", :mobile_phone => "93226 91704",:society_id => 91
Member.create! :name => "MOOLCHAND BEGANI", :mobile_phone => "98928 12252",:society_id => 91
Member.create! :name => "KUSHAL KARAMCHANDANI", :mobile_phone => "98199 38853",:society_id => 91
Member.create! :name => "OM PRAKASH AGRAWAL", :mobile_phone => "",:society_id => 91
Member.create! :name => "DEEPAK AGRAWAL", :mobile_phone => "98194 81135",:society_id => 91
Member.create! :name => "PANKAJ TUTEJA", :mobile_phone => "98676 02535",:email_id=> "pankaj_tuteja@hotmail.com",:society_id => 91
Member.create! :name => "ANOOP KARAMCHANDANI", :mobile_phone => "9619438853",:society_id => 91
Member.create! :name => "MOHAN BALHANI", :mobile_phone => "9820704645",:society_id => 91
Member.create! :name => "UTTARAKSH H SHAH", :mobile_phone => "9892104066",:society_id => 91
Member.create! :name => "RATTANLAL BHATNAGAR", :mobile_phone => "98211 53637",:society_id => 91
Member.create! :name => "SANJAY .L. JAGASIA", :mobile_phone => "98206 11543",:email_id=> "sanjayjagasia01@yahoo.co.in",:society_id => 92
Member.create! :name => "NAYAN CHARANDAS SWALY", :mobile_phone => "98203 02833",:society_id => 92
Member.create! :name => "LACHMAN S. WATWANI", :mobile_phone => "",:society_id => 92
Member.create! :name => "MAHESH .L. MIRCHANDANI", :mobile_phone => "98203 33811",:society_id => 92
Member.create! :name => "DR.JAYATEERTH L. KULKARNI", :mobile_phone => "98210 70355",:society_id => 92
Member.create! :name => "RAVINDRALAL JUGASIA", :mobile_phone => "98921 13088",:society_id => 92
Member.create! :name => "VANDANA DILIP SAMTANI", :mobile_phone => "",:society_id => 92
Member.create! :name => "NIRANJAN K. JARIWALA", :mobile_phone => "",:society_id => 92
Member.create! :name => "RUPARALIA N. NARENDRA", :mobile_phone => "98210 24392",:society_id => 92
Member.create! :name => "ROHIT CHANDRA", :mobile_phone => "98334 07811",:email_id=> "rohit_pnd@hotmail.com",:society_id => 92
Member.create! :name => "BHAGWAN.J.PUNJABI", :mobile_phone => "98670 59900",:society_id => 92
Member.create! :name => "MANMOHAN KANJANI", :mobile_phone => "98210 48839",:email_id=> "mohan@activehrd.com",:society_id => 92
Member.create! :name => "MR.RAJEEV.M. KANJANI", :mobile_phone => "98198 90222",:email_id=> "rajeev@activehrd.com",:society_id => 92
Member.create! :name => "MR.SANJEEV.M. KANJANI", :mobile_phone => "98210 75725",:email_id=> "sanjeev@activehrd.com",:society_id => 92
Member.create! :name => "RAJENDRA.H.PANDYA", :mobile_phone => "98210 79015",:society_id => 92
Member.create! :name => "SARLA MADHASUDAN BUDHIN", :mobile_phone => "9322 258276",:society_id => 92
Member.create! :name => "SATISH VASUDEV BATRA", :mobile_phone => "98330 58309",:email_id=> "crystal_export@yahoo.co.in",:society_id => 92
Member.create! :name => "RAKESH J KANDHARI", :mobile_phone => "98338 87985",:society_id => 92
Member.create! :name => "DR.ABHISHEK J.KULKARNI", :mobile_phone => "98210 70355",:society_id => 92
Member.create! :name => "HASMUKH C. SHAH", :mobile_phone => "98211 24481",:society_id => 92
Member.create! :name => "REEMA PANDIT SHARMA", :mobile_phone => "98196 79009",:society_id => 92
Member.create! :name => "JAILAKSHMI ADVANI", :mobile_phone => "9820199646",:society_id => 92
Member.create! :name => "YASH KUMAR ADVANI", :mobile_phone => "9833818685",:society_id => 92
Member.create! :name => "JASHANK M KATIYAL", :mobile_phone => "9769832129",:society_id => 92
Member.create! :name => "ISHAN ROOWALA", :mobile_phone => "9892870992/8",:society_id => 92
Member.create! :name => "SWALY NISARG NAYAN", :mobile_phone => "9820302833",:society_id => 92
Member.create! :name => "NYARI NAYAN SWALY", :mobile_phone => "9820302833",:society_id => 92
Member.create! :name => "MAITRAI M JARIWALA", :mobile_phone => "",:society_id => 92
Member.create! :name => "VIRUD JARIWALA", :mobile_phone => "9820700837",:society_id => 92
Member.create! :name => "KRITESH L WATWANI", :mobile_phone => "9820190259",:society_id => 92
Member.create! :name => "KATIYAL MAHESH RAMDHAN", :mobile_phone => "92241 20277",:society_id => 92
Member.create! :name => "GUL .H. ADVANI", :mobile_phone => "93222 80255",:email_id=> "gul@vsnl.com",:society_id => 92
Member.create! :name => "JAICHAND .N.KANDHARI", :mobile_phone => "98203 88163",:society_id => 92
Member.create! :name => "M.SIDHARTH M BUDHIA", :mobile_phone => "93222 58276",:society_id => 92
Member.create! :name => "MARISHA ASIF ROOWALLA", :mobile_phone => "98928 70992",:society_id => 92
Member.create! :name => "UTTAM KAUL", :mobile_phone => "98202 22741",:society_id => 92
Member.create! :name => "DHIRAJ LACHMAN WATWANI", :mobile_phone => "98207 83626",:society_id => 92
Member.create! :name => "VINOD SETH", :mobile_phone => "98201 33414",:society_id => 93
Member.create! :name => "BHARAT CHUMPAKLAL PAREKH", :mobile_phone => "98200 06556",:society_id => 93
Member.create! :name => "GAUTAM VINOD SETH", :mobile_phone => "98201 33414",:society_id => 93
Member.create! :name => "CAP MOHIT MALHOTRA", :mobile_phone => "98201 14107",:society_id => 93
Member.create! :name => "VIBHA KAPOOR", :mobile_phone => "98200 24256",:society_id => 93
Member.create! :name => "MUKESH PURANCHAND BIYANI", :mobile_phone => "98213 34525",:society_id => 93
Member.create! :name => "SANJAY SHARMA", :mobile_phone => "98202 21730",:email_id=> "sanjaypic@gmail.com",:society_id => 93
Member.create! :name => "ASHOK KUMAR CHOPRA", :mobile_phone => "98204 38686",:society_id => 93
Member.create! :name => "BRIJENDRA K PALSINGH", :mobile_phone => "",:society_id => 93
Member.create! :name => "TARUN KUMAR BHARTIA", :mobile_phone => "98211 47000",:society_id => 93
Member.create! :name => "CHADHA VIRENDER KUMAR", :mobile_phone => "98200 57735",:society_id => 93
Member.create! :name => "SURESH NOTANI", :mobile_phone => "98205 11669",:society_id => 93
Member.create! :name => "AJAY KUMAR BHASIN", :mobile_phone => "98210 29755",:society_id => 93
Member.create! :name => "VIKAS KAPOOR", :mobile_phone => "98201 92347",:society_id => 93
Member.create! :name => "SURINDER KUMAR DUTTA", :mobile_phone => "98690 02357",:society_id => 93
Member.create! :name => "DMRUVA S DATTA", :mobile_phone => "98203 37428",:society_id => 93
Member.create! :name => "KRISHNA S DATTA", :mobile_phone => "98191 33887",:society_id => 93
Member.create! :name => "RAJIV S DATTA", :mobile_phone => "98214 25772",:society_id => 93
Member.create! :name => "PRADEEP P. SANGHVI", :mobile_phone => "98923 99711",:email_id=> "psanghvi2001@yahoo.co.in",:society_id => 94
Member.create! :name => "ALICE RITA PINTO", :mobile_phone => "98922 90789",:email_id=> "alicepinto50@hotmail.com",:society_id => 94
Member.create! :name => "SUDHIR KRISHNA KANCHAN", :mobile_phone => "",:email_id=> "santoshchowdhary1@ymail.com",:society_id => 94
Member.create! :name => "KISHOR R. SAHETYA", :mobile_phone => "98210 36028",:society_id => 94
Member.create! :name => "KANWAL SINGH DEV", :mobile_phone => "98200 77544",:society_id => 94
Member.create! :name => "PRABAU NANJIANI", :mobile_phone => "90040 84338",:email_id=> "prabhu.nanjiani@gmail.com",:society_id => 94
Member.create! :name => "SAMEER P. SANGHVI", :mobile_phone => "98923 99711",:society_id => 94
Member.create! :name => "ANTHONY FERNANDES", :mobile_phone => "98204 03370",:society_id => 94
Member.create! :name => "RASHESH PATEL", :mobile_phone => "98920 16421",:society_id => 94
Member.create! :name => "ATMARAM SHROFF", :mobile_phone => "98191 06517",:society_id => 94
Member.create! :name => "YADNESH VASUDEO", :mobile_phone => "9820688957",:society_id => 94
Member.create! :name => "SELWYN LOBO", :mobile_phone => "9820080009",:society_id => 94
Member.create! :name => "YASMIN MERCHANT", :mobile_phone => "9821812601",:society_id => 94
Member.create! :name => "MR PURAN R DOLWANI", :mobile_phone => "",:society_id => 94
Member.create! :name => "SURINDER KAUR", :mobile_phone => "98204 20815",:society_id => 95
Member.create! :name => "MOHAN SINGH", :mobile_phone => "",:society_id => 95
Member.create! :name => "ASHOK BABURAO KAMBLE", :mobile_phone => "98334 95283",:society_id => 95
Member.create! :name => "RAJESH .H. CHANDIRAMNI", :mobile_phone => "93244 58700",:email_id=> "rajesh@gempl.net",:society_id => 95
Member.create! :name => "MADAN.J.VALECHA", :mobile_phone => "98200 75907",:society_id => 95
Member.create! :name => "DEVASHISH.D. GOSWAMI", :mobile_phone => "98212 98186",:society_id => 95
Member.create! :name => "ZUBIN .F.IRANI", :mobile_phone => "98204 41146",:society_id => 95
Member.create! :name => "GAURAV SHASHI KANCHAN", :mobile_phone => "98210 30379",:society_id => 95
Member.create! :name => "ZUBIN DASTUR", :mobile_phone => "98212 61752",:society_id => 95
Member.create! :name => "SACHET D GOSWAMI", :mobile_phone => "99676 54627",:society_id => 95
Member.create! :name => "SUSHANT D GOSWAMI", :mobile_phone => "99676 54627",:society_id => 95
Member.create! :name => "SUNIL KOCHAR", :mobile_phone => "98210 94776",:society_id => 95
Member.create! :name => "AJAY MEHRA", :mobile_phone => "9967414609",:society_id => 95
Member.create! :name => "IMAN H KHAN", :mobile_phone => "9821797874",:society_id => 95
Member.create! :name => "YASH CHANDIRAMANI", :mobile_phone => "9892695617",:society_id => 95
Member.create! :name => "IMRAN SHAIKH", :mobile_phone => "9821682691",:society_id => 95
Member.create! :name => "KAMAL K GUILOT", :mobile_phone => "9769991880",:society_id => 95
Member.create! :name => "SIMHA MASURKAR", :mobile_phone => "9820900300",:society_id => 95
Member.create! :name => "MANITA M MALIK", :mobile_phone => "9820225171",:society_id => 95
Member.create! :name => "VACHANI V. MADHOWDAS", :mobile_phone => "98200 45671",:society_id => 95
Member.create! :name => "SHASHI KANCHAN", :mobile_phone => "98210 30379",:society_id => 95
Member.create! :name => "NITESH C KOTAK", :mobile_phone => "98217 66263",:society_id => 95
Member.create! :name => "MEENU GUPTA", :mobile_phone => "98920 14223",:email_id=> "meenugupta65@yahoo.co.in",:society_id => 96
Member.create! :name => "SETHI RAJENDRA KUMAR", :mobile_phone => "98927 24686",:society_id => 96
Member.create! :name => "MANOHAR CHUGH", :mobile_phone => "",:society_id => 96
Member.create! :name => "RISHI MANOHAR CHUGH", :mobile_phone => "",:society_id => 96
Member.create! :name => "NANDKUMAR A. CHAUGULE", :mobile_phone => "98205 80559",:society_id => 96
Member.create! :name => "VIPAN KUMAR GADHOK", :mobile_phone => "98202 86359",:society_id => 96
Member.create! :name => "DR.D.N.GADHOK", :mobile_phone => "",:society_id => 96
Member.create! :name => "KISHIN H. RAMCHANDANI", :mobile_phone => "98202 61466",:society_id => 96
Member.create! :name => "VIJAY SHARMA", :mobile_phone => "98201 28557",:society_id => 96
Member.create! :name => "RAJESH MISHRA", :mobile_phone => "98200 46511",:society_id => 96
Member.create! :name => "HARSHAD.C.MEHTA", :mobile_phone => "98210 84077",:society_id => 96
Member.create! :name => "BABITA H. TRIVEDI", :mobile_phone => "99204 44158",:society_id => 96
Member.create! :name => "MEHTA VIJAY DHIRAJLAL", :mobile_phone => "98690 54534",:society_id => 96
Member.create! :name => "UDAY KUMAR SHETTY", :mobile_phone => "98702 47918",:email_id=> "ukshetty2002@yahoo.co.in",:society_id => 96
Member.create! :name => "CAPT R S NAIK", :mobile_phone => "098670 31001",:email_id=> "iramailc@hotmail.com",:society_id => 96
Member.create! :name => "BERNARD S DHASER", :mobile_phone => "98213 14767",:society_id => 96
Member.create! :name => "MRS NIDHI RAWAL", :mobile_phone => "98218 50830",:email_id=> "nrawal2000@yahoo.com",:society_id => 96
Member.create! :name => "TEJAS NANDKUMAR CHAUGULE", :mobile_phone => "98204 23997",:society_id => 96
Member.create! :name => "AJITESH NANDKUMAR CHAUGULE", :mobile_phone => "",:society_id => 96
Member.create! :name => "PRAKASH NICHANII", :mobile_phone => "9820035164",:society_id => 96
Member.create! :name => "NARESH MIRCHANDANI", :mobile_phone => "9867010201",:society_id => 96
Member.create! :name => "SANDHYA O JAJOO", :mobile_phone => "9870296670",:society_id => 96
Member.create! :name => "RISHI GADHOK", :mobile_phone => "9820286359",:society_id => 96
Member.create! :name => "KRITARTH GADHOK", :mobile_phone => "9930586933",:society_id => 96
Member.create! :name => "OM PRAKASH", :mobile_phone => "98210 17608",:society_id => 96
Member.create! :name => "MR PYARCRAJ NAIK (P T NAIK )", :mobile_phone => "98205 47985",:society_id => 96
Member.create! :name => "RISHI KAPOOR", :mobile_phone => "98924 77172",:society_id => 96
Member.create! :name => "DOSHI RASHMIKANT J.", :mobile_phone => "",:society_id => 97
Member.create! :name => "SATYA PRAKASH KHOSJU", :mobile_phone => "",:society_id => 97
Member.create! :name => "BALDEV SINGH AJMANI", :mobile_phone => "",:society_id => 97
Member.create! :name => "CAP ARUN KUMAR NANDA", :mobile_phone => "",:society_id => 97
Member.create! :name => "MAHESH MOHANLAL RAHEJA", :mobile_phone => "93236 05353",:email_id=> "apexfashion@live.com",:society_id => 97
Member.create! :name => "AZIZ YAKUB GABUJI", :mobile_phone => "98200 65642",:society_id => 97
Member.create! :name => "SHAKUNTALAL .R.LAHOTI", :mobile_phone => "98200 60631",:society_id => 97
Member.create! :name => "SUDHEER TELA", :mobile_phone => "98210 23669",:society_id => 97
Member.create! :name => "SHARATH KUMAR MOODBIDRI", :mobile_phone => "98205 35740",:society_id => 97
Member.create! :name => "MUKESH .K. SHAH", :mobile_phone => "98200 30542",:society_id => 97
Member.create! :name => "GURUMEET SUNIL RAHEJA", :mobile_phone => "98205 25007",:society_id => 97
Member.create! :name => "SURESH P. LAKHANI", :mobile_phone => "",:society_id => 97
Member.create! :name => "VINEET LAHOTI", :mobile_phone => "98205 50788",:society_id => 97
Member.create! :name => "RAJENDRA P. VORA", :mobile_phone => "",:society_id => 97
Member.create! :name => "RONAK TELA", :mobile_phone => "",:society_id => 97
Member.create! :name => "VIPUL R LAHOTI", :mobile_phone => "93222 35280",:society_id => 97
Member.create! :name => "CHANDRAKANT SHAH", :mobile_phone => "99308 17520",:society_id => 97
Member.create! :name => "PARASMANI P WADHWANI", :mobile_phone => "",:society_id => 97
Member.create! :name => "DR. RAJIV S. KHOSLA", :mobile_phone => "98200 63356",:email_id=> "drkhosla@gmail.com",:society_id => 97
Member.create! :name => "MAHESH B BHAMBHWANI", :mobile_phone => "93241 23922",:society_id => 97
Member.create! :name => "ARUN RAJENDRA LOHATI", :mobile_phone => "98692 81180",:society_id => 97
Member.create! :name => "JAGAJEEVANDAS SHETTY", :mobile_phone => "98196 21418",:society_id => 97
Member.create! :name => "APREET SINGH AJMANI", :mobile_phone => "98193 10205",:society_id => 97
Member.create! :name => "VIJAY SADANAH", :mobile_phone => "98673 45915",:society_id => 97
Member.create! :name => "ANJALI MAKHIJA", :mobile_phone => "98213 47812",:society_id => 97
Member.create! :name => "HUSEIN HASAN DHOON", :mobile_phone => "98211 27741",:society_id => 97
Member.create! :name => "DR AMAN R KHOSLA", :mobile_phone => "98202 29320",:email_id=> "arkhosla@gmail.com",:society_id => 97
Member.create! :name => "PANKAJ C DHEER", :mobile_phone => "98200 77461",:society_id => 97
Member.create! :name => "MOHAN B. MANBUBANI", :mobile_phone => "98211 19555",:society_id => 98
Member.create! :name => "JUZER GABAJIWALA", :mobile_phone => "98200 66920",:email_id=> "juzergoi@gmail.com",:society_id => 98
Member.create! :name => "GURUCHARAN SINGH HORA", :mobile_phone => "98207 89251",:society_id => 98
Member.create! :name => "DESAI MUKESH J.", :mobile_phone => "98200 78382",:society_id => 98
Member.create! :name => "ELIZABETH SHRIVASTAVA", :mobile_phone => "99670 22749",:email_id=> "elizabethshrivastava@hotmail.com",:society_id => 98
Member.create! :name => "KRISHNA GOPAL SAMDANI", :mobile_phone => "93231 46283",:society_id => 98
Member.create! :name => "SANJAY BAID", :mobile_phone => "98210 89534",:email_id=> "sbaid@vsnl.com",:society_id => 98
Member.create! :name => "SUSHIL DAGA", :mobile_phone => "98210 54356",:society_id => 98
Member.create! :name => "RAMINDER KAUR KOHLI", :mobile_phone => "",:society_id => 98
Member.create! :name => "ADITYA MUKESH DESAI", :mobile_phone => "98200 78382",:society_id => 98
Member.create! :name => "VANISH RAVI KAPOOR", :mobile_phone => "98201 35414",:society_id => 98
Member.create! :name => "VIKRANT JAYANT OAK", :mobile_phone => "98216 01970",:society_id => 98
Member.create! :name => "SABHA S KOCHAR", :mobile_phone => "98925 98995",:society_id => 98
Member.create! :name => "SURESH B WARKE", :mobile_phone => "98214 31765",:society_id => 98
Member.create! :name => "VIDESH NAIDU", :mobile_phone => "93242 49520",:society_id => 98
Member.create! :name => "DIYA MOHAN MAHBUBAN", :mobile_phone => "",:society_id => 98
Member.create! :name => "SUDHIR ROKADIA", :mobile_phone => "9819305295",:society_id => 98
Member.create! :name => "UMA KANODIA", :mobile_phone => "9022136060",:society_id => 98
Member.create! :name => "GURPREET S HORA", :mobile_phone => "9867379573",:society_id => 98
Member.create! :name => "HARMISH ROKADIA", :mobile_phone => "9930398779",:society_id => 98
Member.create! :name => "BHOUMIK S ROKADIA", :mobile_phone => "9819305295",:society_id => 98
Member.create! :name => "SATISH KUMAR SABOO", :mobile_phone => "9920840645",:society_id => 98
Member.create! :name => "ANURAG SABOO", :mobile_phone => "9833406678",:society_id => 98
Member.create! :name => "SANDEEP SABOO", :mobile_phone => "9321083183",:society_id => 98
Member.create! :name => "ANKUR SABOO", :mobile_phone => "9321083183",:society_id => 98
Member.create! :name => "SURENDRA S. ANAND", :mobile_phone => "98203 77742",:email_id=> "suru153@yahoo.com",:society_id => 99
Member.create! :name => "MR.PRATAPRAI S. PAREKH", :mobile_phone => "98205 25401",:society_id => 99
Member.create! :name => "DR R M SARGOGI", :mobile_phone => "98201 46689",:society_id => 99
Member.create! :name => "MR M R SARAOGI", :mobile_phone => "98205 29592",:society_id => 99
Member.create! :name => "PALAKH R SARAOGI", :mobile_phone => "98208 09553",:email_id=> "palakhsaraogi@gmail.com",:society_id => 99
Member.create! :name => "ABHISHEK ANAND", :mobile_phone => "98196 61268",:society_id => 99
Member.create! :name => "LALIT KISHAN LAL PUGALIA", :mobile_phone => "98200 22895",:society_id => 99
Member.create! :name => "KRISHAN KHADARIA", :mobile_phone => "98205 56088",:society_id => 99
Member.create! :name => "SANJAY KUMAR AGARWAL", :mobile_phone => "98210 14454",:society_id => 99
Member.create! :name => "DINESH S PUNIA", :mobile_phone => "98200 30243",:society_id => 99
Member.create! :name => "ANIL KUMAR AGARWAL", :mobile_phone => "98673 51134",:society_id => 99
Member.create! :name => "MR OMPRAKASH MONGA", :mobile_phone => "98210 16077",:society_id => 99
Member.create! :name => "MR GAURAV MONGA", :mobile_phone => "98218 03016",:email_id=> "gmonga@echomesindia.com",:society_id => 99
Member.create! :name => "NAYAAB SIDDIQUI", :mobile_phone => "",:society_id => 99
Member.create! :name => "ZAIDBIN S SIDDIQUI", :mobile_phone => "",:society_id => 99
Member.create! :name => "KAMAL S SINGHANIA", :mobile_phone => "9324236337",:society_id => 99
Member.create! :name => "FAISAL M KAPADI", :mobile_phone => "9820180583",:society_id => 99
Member.create! :name => "MANJIT SIGH SANDHU", :mobile_phone => "98675 84998",:society_id => 100
Member.create! :name => "SANJEEV N PAREKH", :mobile_phone => "98674 99226",:email_id=> "parekhsanjiv@gmail.com",:society_id => 100
Member.create! :name => "ANIL KANT BIRLA", :mobile_phone => "98201 22006",:society_id => 100
Member.create! :name => "VIKAS BIRLA", :mobile_phone => "98201 22006",:society_id => 100
Member.create! :name => "ATUL BIRLA", :mobile_phone => "98201 22005",:society_id => 100
Member.create! :name => "DILIP KUMAR BIRLA", :mobile_phone => "98200 66374",:society_id => 100
Member.create! :name => "MANOJ BAJPAYEE", :mobile_phone => "98206 40795",:email_id=> "manojbajpay@gmail.com",:society_id => 100
Member.create! :name => "LALIT MITTAL", :mobile_phone => "98195 37878",:society_id => 100
Member.create! :name => "KISHORE JADHWANI", :mobile_phone => "9004686752",:society_id => 100
Member.create! :name => "RAJENDRA CHHAPWALE", :mobile_phone => "9820315283",:society_id => 100
Member.create! :name => "KARAN S CHUGH", :mobile_phone => "9820069127",:society_id => 100
Member.create! :name => "ARJUN SANJAY CHUGH", :mobile_phone => "9833113321",:society_id => 100
Member.create! :name => "DR. VAIJNATH SITARAM PHAD", :mobile_phone => "",:society_id => 101
Member.create! :name => "RAMESH MATKAR", :mobile_phone => "",:society_id => 101
Member.create! :name => "MAHENDRA C. PATEL", :mobile_phone => "98202 21102",:society_id => 101
Member.create! :name => "MUKESH DHANDHANIA", :mobile_phone => "98200 47594",:society_id => 101
Member.create! :name => "CHURIWALA VISHESH S.", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA JAGDISH B.", :mobile_phone => "93226 67622",:email_id=> "jagdishchuriwala@yahoo.com",:society_id => 101
Member.create! :name => "CHURIWALA SITARAM B.", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA BANWARILAL", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA PAVANRAJ", :mobile_phone => "",:society_id => 101
Member.create! :name => "RAJESH MALHOTRA", :mobile_phone => "98212 07525",:email_id=> "EC",:society_id => 101
Member.create! :name => "KUSH D. MAKKER", :mobile_phone => "",:email_id=> "kushdmakker@gmail.com",:society_id => 101
Member.create! :name => "RAJENDER SINGH SURI", :mobile_phone => "98201 77177",:society_id => 101
Member.create! :name => "SHAYM MENDA", :mobile_phone => "98218 37988",:email_id=> "smenda@msn.com",:society_id => 101
Member.create! :name => "VASUDEO V. KANUGA", :mobile_phone => "98213 31626",:society_id => 101
Member.create! :name => "YOGESH MALHOTRA", :mobile_phone => "",:society_id => 101
Member.create! :name => "ANIL RIJHWANI", :mobile_phone => "98205 87541",:society_id => 101
Member.create! :name => "SUNIL.R.PESHAWARIA", :mobile_phone => "98190 48219",:email_id=> "sunilp@electraestates.com",:society_id => 101
Member.create! :name => "KISHOR MAHTANI", :mobile_phone => "98200 77367",:society_id => 101
Member.create! :name => "RAJAN MALIK", :mobile_phone => "98400 77467",:society_id => 101
Member.create! :name => "SHARAD CHANDRA MISRA", :mobile_phone => "",:society_id => 101
Member.create! :name => "PARIKH MANISH P.", :mobile_phone => "98202 88067",:society_id => 101
Member.create! :name => "AMIT KUMAR JALAN", :mobile_phone => "",:society_id => 101
Member.create! :name => "JANAK G PAREKH", :mobile_phone => "98200 46710",:email_id=> "janakp26@yahoo.com",:society_id => 101
Member.create! :name => "SUNIL SHGAM MENDU", :mobile_phone => "98209 47316",:society_id => 101
Member.create! :name => "PRATAP K SHAH", :mobile_phone => "93243 37955",:society_id => 101
Member.create! :name => "DEV MAKKER", :mobile_phone => "",:society_id => 101
Member.create! :name => "BHUMIKA MAKKER", :mobile_phone => "",:society_id => 101
Member.create! :name => "ADITYA JAGDISH CHURIWALA", :mobile_phone => "98203 3338",:society_id => 101
Member.create! :name => "SHAILESH MAKHARIA", :mobile_phone => "98332 08780",:society_id => 101
Member.create! :name => "JAGDEEP V. MADHAN", :mobile_phone => "98202 50006",:society_id => 101
Member.create! :name => "RAJKUMAR B LULLA", :mobile_phone => "9821069721",:society_id => 101
Member.create! :name => "CHURIWALA VISHESH S.", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA JAGDISH B.", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA SITARAM B.", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA BANWARILAL", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHURIWALA PAVANRAJ", :mobile_phone => "",:society_id => 101
Member.create! :name => "CHANDRAKANT V SETH", :mobile_phone => "98203 96457",:society_id => 102
Member.create! :name => "HIMANSHU SETH", :mobile_phone => "98214 13907",:society_id => 102
Member.create! :name => "ABDUL JALEEL BANGI", :mobile_phone => "",:society_id => 103
Member.create! :name => "RAM N KOTAK", :mobile_phone => "9820350501",:society_id => 104
Member.create! :name => "NIHAL KOTAK", :mobile_phone => "9820345522",:society_id => 104
Member.create! :name => "RAMESH HIRALAL PATEL", :mobile_phone => "98200 03332",:society_id => 0
Member.create! :name => "JAYESH HIRALAL PATEL", :mobile_phone => "98707 29236",:society_id => 0
Member.create! :name => "SURUCHI S DHANDA", :mobile_phone => "9820629922",:society_id => 105
Member.create! :name => "TUSHAR SAIGHAT", :mobile_phone => "9821043144",:society_id => 106
Member.create! :name => "DHRUV A KAPOOR", :mobile_phone => "9820262328",:society_id => 106
Member.create! :name => "DIGRANI A.G.", :mobile_phone => "98199 53621",:society_id => 106
Member.create! :name => "AMAR JAISWAL", :mobile_phone => "98210 29509",:society_id => 106
Member.create! :name => "NILESH SANGAVI", :mobile_phone => "",:society_id => 106
Member.create! :name => "GOURANGA C. GHOSH", :mobile_phone => "",:society_id => 106
Member.create! :name => "BHAJAN GABA", :mobile_phone => "",:society_id => 106
Member.create! :name => "KUMAR GABA", :mobile_phone => "98203 56555",:society_id => 106
Member.create! :name => "RAJESH.R.KHANDELWALA", :mobile_phone => "93230 24284",:society_id => 106
Member.create! :name => "DR.TEJUS .K. MAUN", :mobile_phone => "",:society_id => 106
Member.create! :name => "SHAH CHANDRESH C.", :mobile_phone => "98200 47250",:society_id => 106
Member.create! :name => "PRITPAL H. SINGH", :mobile_phone => "",:society_id => 106
Member.create! :name => "DELAIR H. SINGH", :mobile_phone => "",:society_id => 106
Member.create! :name => "GURVIND H. SINGH", :mobile_phone => "",:society_id => 106
Member.create! :name => "JAGDISH KUMAR .B. AWTANI", :mobile_phone => "98201 20723",:society_id => 106
Member.create! :name => "ASAWANI .R. KAPOOR", :mobile_phone => "",:society_id => 106
Member.create! :name => "SANJAY BHANWARLAL KABRA", :mobile_phone => "93222 54387",:society_id => 106
Member.create! :name => "ASHOK JETHANAND LULLA", :mobile_phone => "98212 85803",:society_id => 106
Member.create! :name => "AMIT DINESH DOSHI", :mobile_phone => "98210 76231",:society_id => 106
Member.create! :name => "KALPNA .R. MALKANI", :mobile_phone => "98690 75322",:society_id => 106
Member.create! :name => "INDER MOHAN SINGH BAJAJ", :mobile_phone => "98200 34378",:society_id => 106
Member.create! :name => "SURESH .G.DINGARANI", :mobile_phone => "98201 35365",:society_id => 106
Member.create! :name => "ARJAN THAWARDAS RATNANI", :mobile_phone => "98206 81287",:society_id => 106
Member.create! :name => "SANJAY .K. TANILIANI", :mobile_phone => "98200 27811",:society_id => 106
Member.create! :name => "ARVIND VIRJI GANGAR", :mobile_phone => "98211 38193",:society_id => 106
Member.create! :name => "HARISH .N.RUPANI", :mobile_phone => "",:society_id => 106
Member.create! :name => "MONIKA ASHOK DMGRONI", :mobile_phone => "",:society_id => 106
Member.create! :name => "VIVEK RAJ ANAND", :mobile_phone => "98211 52980",:email_id=> "avivekr@gmail.com",:society_id => 106
Member.create! :name => "HARINDERPAL SINGH PAHWA", :mobile_phone => "98210 35091",:society_id => 106
Member.create! :name => "LALIT S MEHRA", :mobile_phone => "93225 06380",:society_id => 106
Member.create! :name => "VIVEK MEHRA", :mobile_phone => "",:society_id => 106
Member.create! :name => "SANJAY MEHRA", :mobile_phone => "98211 13301",:society_id => 106
Member.create! :name => "SHASHANK S KABRA", :mobile_phone => "98201 94200",:society_id => 106
Member.create! :name => "MANDIP SINGH BAJAJ", :mobile_phone => "98210 53850",:society_id => 106
Member.create! :name => "RAJ KUMAR ANAND", :mobile_phone => "98211 52987",:society_id => 106
Member.create! :name => "SANDEEP S. DINGRANI", :mobile_phone => "98201 89243",:society_id => 106
Member.create! :name => "PRASHANT S DINGRANI", :mobile_phone => "",:society_id => 106
Member.create! :name => "PARAMJIT SINGH BAJAJ", :mobile_phone => "98200 52467",:society_id => 106
Member.create! :name => "ANIL GARG", :mobile_phone => "",:society_id => 107
Member.create! :name => "RIJH SINGHANI P. ROCHIRUM", :mobile_phone => "",:society_id => 107
Member.create! :name => "RAJENDER SINGH CHUGH", :mobile_phone => "98202 24469",:society_id => 107
Member.create! :name => "VIPIN CHANDOK", :mobile_phone => "98200 17823",:society_id => 107
Member.create! :name => "SATNAM SINGH DANG", :mobile_phone => "98210 45318",:society_id => 107
Member.create! :name => "LAKHIANI HIRAMAND VALABDAS", :mobile_phone => "98921 25795",:society_id => 107
Member.create! :name => "JAISINGH .H.UDHAVDAS", :mobile_phone => "98208 56218",:society_id => 107
Member.create! :name => "DHARMESH DAYAL THAWRANI", :mobile_phone => "98210 39208",:email_id=> "paras.68@hotmail.com",:society_id => 107
Member.create! :name => "DHARMENDRA PATEL", :mobile_phone => "9833008244",:society_id => 107
Member.create! :name => "AMEETA RAM SINGH", :mobile_phone => "",:society_id => 108
Member.create! :name => "BHATTI MOHAMMED IRSHAD", :mobile_phone => "98200 60803",:society_id => 108
Member.create! :name => "SUMAN SHARMA", :mobile_phone => "98213 68085",:society_id => 108
Member.create! :name => "ALEXANDER SALDANHA", :mobile_phone => "",:society_id => 108
Member.create! :name => "CHAWLA RAJESH HARIRAM", :mobile_phone => "98203 23653",:email_id=> "rajeshchawla@yahoo.co.in",:society_id => 108
Member.create! :name => "SALMAN.N. SIDDIQUI", :mobile_phone => "",:society_id => 108
Member.create! :name => "RAKESH NIHALANI", :mobile_phone => "98676 11117",:society_id => 108
Member.create! :name => "KAMLESH .R.NIHALANI", :mobile_phone => "98202 23206",:society_id => 108
Member.create! :name => "MAHESH GUPTA", :mobile_phone => "98218 89202",:society_id => 108
Member.create! :name => "SANJIV.J. WADHWA", :mobile_phone => "98200 83658",:society_id => 108
Member.create! :name => "CHANDAM.D.LALA", :mobile_phone => "98200 80973",:society_id => 108
Member.create! :name => "MANISH MUKUNDRAI HARSORA", :mobile_phone => "98197 66244",:email_id=> "manishharsora@rediffmailcom",:society_id => 108
Member.create! :name => "MANOJ MUKUNDRAI HARSORA", :mobile_phone => "98207 10385",:email_id=> "manoj.harsora@hotmail.com",:society_id => 108
Member.create! :name => "HARIRUM L. KATARA", :mobile_phone => "98200 61670",:society_id => 108
Member.create! :name => "RAJEN N. KOTWANI", :mobile_phone => "98338 33520",:email_id=> "rajen.kotwani@eds.com",:society_id => 108
Member.create! :name => "NARESH LALA", :mobile_phone => "98211 17229",:society_id => 108
Member.create! :name => "SUDHAMAMAL G LUDHANI", :mobile_phone => "98690 03356",:society_id => 108
Member.create! :name => "VIJAY SUDHAMAMAL LUDHANI", :mobile_phone => "98690 03350",:society_id => 108
Member.create! :name => "MUKESH SUDHAMAMAL LUDHANI", :mobile_phone => "98694 08850",:society_id => 108
Member.create! :name => "NISHITA M HARSORA", :mobile_phone => "98207 10381",:society_id => 108
Member.create! :name => "DHAUVI M HARSORA", :mobile_phone => "98197 66244",:society_id => 108
Member.create! :name => "VINAYAK LALA", :mobile_phone => "98211 17229",:society_id => 108
Member.create! :name => "TUSHAR LUDHANI", :mobile_phone => "98690 03356",:society_id => 108
Member.create! :name => "MANISH NAVNIT SHAH", :mobile_phone => "98210 13258",:society_id => 108
Member.create! :name => "HEMA D.RAWLANI", :mobile_phone => "98203 48258",:society_id => 108
Member.create! :name => "MR GUL I. ADVANI", :mobile_phone => "98213 60222",:society_id => 108
Member.create! :name => "AMAN DEEP SHARMA", :mobile_phone => "98670 28731",:society_id => 108
Member.create! :name => "VIJAY V.MANDHYAN", :mobile_phone => "92267 64399",:society_id => 108
Member.create! :name => "VNAY CHAK", :mobile_phone => "98218 94940",:society_id => 108
Member.create! :name => "TEJINDER SINGH", :mobile_phone => "93241 21142",:society_id => 108
Member.create! :name => "THAKUR D MATAI", :mobile_phone => "93238 79791",:society_id => 108
Member.create! :name => "KRISH R. CHAWLA", :mobile_phone => "98203 23653",:society_id => 108
Member.create! :name => "MUNIKUMAR GAJRIA", :mobile_phone => "97573 98560",:email_id=> "gajriamuni@hotmail.com",:society_id => 108
Member.create! :name => "SAHIL ASIF ANSARI", :mobile_phone => "26315849",:society_id => 108
Member.create! :name => "SARA ASIF ANSARI", :mobile_phone => "26315849",:society_id => 108
Member.create! :name => "MUKESH MERANI", :mobile_phone => "9323610002",:society_id => 108
Member.create! :name => "MOHNISH KOTWANI", :mobile_phone => "9833232457",:society_id => 108
Member.create! :name => "ROHATLAL .N.NIHALANI", :mobile_phone => "",:society_id => 108
Member.create! :name => "KIRAN AJMERA", :mobile_phone => "98201 20146",:society_id => 108
Member.create! :name => "GANSHYAM .A.BANWANI", :mobile_phone => "98211 42687",:society_id => 109
Member.create! :name => "CHANDERSHEKHER.N. MALHOTRA", :mobile_phone => "93222 86508",:society_id => 109
Member.create! :name => "SHABBIR .H.DOCTOR", :mobile_phone => "",:society_id => 109
Member.create! :name => "SHEKHAR AGARWAL", :mobile_phone => "92203 17890",:society_id => 109
Member.create! :name => "MAHESH KISHAN CHAWLA", :mobile_phone => "93232 99399",:society_id => 109
Member.create! :name => "MANOJ SANTDAS GALANI", :mobile_phone => "98204 01177",:society_id => 109
Member.create! :name => "BHARAT G", :mobile_phone => "98200 47990",:society_id => 109
Member.create! :name => "ASHOK H MEHRA", :mobile_phone => "98198 53150",:society_id => 109
Member.create! :name => "SANJAY K MOTWANI", :mobile_phone => "98219 14215",:email_id=> "sanjay.motwani@rraheja.com",:society_id => 109
Member.create! :name => "BALCHANDANI TAHIL", :mobile_phone => "98690 02476",:society_id => 109
Member.create! :name => "SIMRAN R MERANI", :mobile_phone => "93742 76662",:society_id => 109
Member.create! :name => "ANIL R. MERANI", :mobile_phone => "98202 03489",:society_id => 109
Member.create! :name => "VIVEK PAWAN JAIN", :mobile_phone => "98201 21132",:society_id => 109
Member.create! :name => "RAJIV PRAKASH", :mobile_phone => "98207 53594",:email_id=> "rajivprakash1964@indiatimes.com",:society_id => 109
Member.create! :name => "EKTA MERANI", :mobile_phone => "9820317516",:society_id => 109
Member.create! :name => "ANIL K MENON", :mobile_phone => "9820371083",:society_id => 109
Member.create! :name => "RENUKA ISRANI", :mobile_phone => "9821447951",:society_id => 109
Member.create! :name => "ADITYA MEHRA", :mobile_phone => "9819853150",:society_id => 109
Member.create! :name => "VISHNU .M.BANWARI", :mobile_phone => "98211 23406",:email_id=> "vbanwani@yahoo.co.in",:society_id => 109
Member.create! :name => "PARAMJIT SINGH JUNEJA", :mobile_phone => "98201 06652",:society_id => 109
Member.create! :name => "KIRLWANTRAI MALHOTRA", :mobile_phone => "9821488815",:society_id => 0
Member.create! :name => "GURBU SINGH NAGI", :mobile_phone => "98198 93229",:society_id => 110
Member.create! :name => "ANUJ M CHATTERJEE", :mobile_phone => "98210 78599",:society_id => 110
Member.create! :name => "SARABJIT SINGH NAGI", :mobile_phone => "98200 63403",:society_id => 110
Member.create! :name => "KHAMBATY QUREISH MOHSIN", :mobile_phone => "98211 35314",:society_id => 111
Member.create! :name => "DEEEPAK V. GUPTA", :mobile_phone => "98210 89553",:society_id => 111
Member.create! :name => "AGARWAL PRADIP M", :mobile_phone => "",:society_id => 111
Member.create! :name => "CAPT.SUNIL BAHL", :mobile_phone => "98202 33022",:society_id => 111
Member.create! :name => "RAJIV TEWANI", :mobile_phone => "98204 29763",:society_id => 111
Member.create! :name => "KALPANA TEWANI", :mobile_phone => "98204 29763",:society_id => 111
Member.create! :name => "HARESH .M.AIDSANI", :mobile_phone => "",:society_id => 111
Member.create! :name => "CAPT BALKRISHNA MANDREKAR", :mobile_phone => "98204 02130",:society_id => 111
Member.create! :name => "MUSTAN TAMBAWALA", :mobile_phone => "",:society_id => 111
Member.create! :name => "SUBRATA SEN", :mobile_phone => "98201 55521",:email_id=> "tradam@gmail.com",:society_id => 111
Member.create! :name => "AMRIK SINGH NAGPAL", :mobile_phone => "",:society_id => 111
Member.create! :name => "GULZAR SINGH NAGPAL", :mobile_phone => "",:society_id => 111
Member.create! :name => "HARMOHAN SINGH NAGPAL", :mobile_phone => "98202 85072",:society_id => 111
Member.create! :name => "MANJUL .K.SINHA", :mobile_phone => "98210 87734",:society_id => 111
Member.create! :name => "HARESH .K.SUJAN", :mobile_phone => "98205 21531",:society_id => 111
Member.create! :name => "PREM GOSWAMY", :mobile_phone => "",:society_id => 111
Member.create! :name => "ALOK KUMAR DHANDHANIA", :mobile_phone => "93222 33999",:email_id=> "alokdhandhania@hotmail.com",:society_id => 111
Member.create! :name => "NEHA JHALANI", :mobile_phone => "98210 89558",:society_id => 111
Member.create! :name => "NIDHI DEEPAK GUPTA", :mobile_phone => "98190 50259",:society_id => 111
Member.create! :name => "MIHIR MANDREKAR", :mobile_phone => "98213 41577",:society_id => 111
Member.create! :name => "VINOD AIDASANI", :mobile_phone => "98202 42897",:society_id => 111
Member.create! :name => "BIPIN M GANDH", :mobile_phone => "93232 01189",:society_id => 111
Member.create! :name => "MAHESH LAKHWANI LAKHMICHAND", :mobile_phone => "98241 55877",:society_id => 111
Member.create! :name => "KARAN ANSHUMAN", :mobile_phone => "98211 54183",:society_id => 111
Member.create! :name => "MANISH AIDASANI", :mobile_phone => "98207 25014",:society_id => 111
Member.create! :name => "ARIFA CHUNAWALA", :mobile_phone => "9892998830",:society_id => 111
Member.create! :name => "AHMED CHUNAWALA", :mobile_phone => "9820067347",:society_id => 111
Member.create! :name => "VIVEK SEHGAL", :mobile_phone => "98206 26080",:society_id => 111
Member.create! :name => "MAHENDRA M GANDHI", :mobile_phone => "98200 83581",:society_id => 111
Member.create! :name => "JAY TEWANI", :mobile_phone => "98200 27173",:society_id => 111
Member.create! :name => "RAJESH R RAMCHANDANI", :mobile_phone => "98704 77678",:email_id=> "rajesh1964_1@yahoo.com",:society_id => 111
Member.create! :name => "RAJINDER PAL VOHRA", :mobile_phone => "98673 86472",:email_id=> "rajinder@rheal.com",:society_id => 111
Member.create! :name => "SHRI GUL K. MIRCHANDANI", :mobile_phone => "98211 36334",:society_id => 112
Member.create! :name => "SUNIL SUBRAMANIAM", :mobile_phone => "98201 32392",:society_id => 112
Member.create! :name => "RAMASWAMI SUBRAMANIAM", :mobile_phone => "",:society_id => 112
Member.create! :name => "PRASAD VASUDEO PARANJAPE", :mobile_phone => "",:society_id => 112
Member.create! :name => "VASUDEO P. PARANJAPE", :mobile_phone => "",:society_id => 112
Member.create! :name => "RAZAK NOORMOHAMED MEMON", :mobile_phone => "",:society_id => 112
Member.create! :name => "ASIF RAZAK MEMON", :mobile_phone => "98204 44106",:email_id=> "memi29@gmail.com",:society_id => 112
Member.create! :name => "IRFAN RAZAK MEMON", :mobile_phone => "98925 40199",:email_id=> "giza@oliviaindia.com",:society_id => 112
Member.create! :name => "NARENDRAKUMAR SUBRAMANIAM", :mobile_phone => "98214 48305",:society_id => 112
Member.create! :name => "RAASHID.Z.KHAN", :mobile_phone => "98210 06289",:society_id => 113
Member.create! :name => "PREM H. MEHRA", :mobile_phone => "",:society_id => 113
Member.create! :name => "NARENDRA CHADHA", :mobile_phone => "98210 90193",:email_id=> "nrc504@gmail.com",:society_id => 113
Member.create! :name => "J.S.BHATIA", :mobile_phone => "",:society_id => 113
Member.create! :name => "PRADEEP KUMAR JAIN", :mobile_phone => "93225 95295",:society_id => 113
Member.create! :name => "JHAMANDAS K. BHALLA", :mobile_phone => "98204 25688",:email_id=> "khg@vsnl.com",:society_id => 113
Member.create! :name => "HARESH J. BHALLA", :mobile_phone => "98920 18585",:email_id=> "khg@vsnl.com",:society_id => 113
Member.create! :name => "NARESH.F.CHOKSEY", :mobile_phone => "98201 24141",:society_id => 113
Member.create! :name => "NISHITH CHOKSEY", :mobile_phone => "98201 24144",:society_id => 113
Member.create! :name => "JAWAHAR MEHRA", :mobile_phone => "98212 22605",:society_id => 113
Member.create! :name => "ASHISH JAWAHAR MEHRA", :mobile_phone => "98702 01036",:email_id=> "ashishmehra1981@gmail.com",:society_id => 113
Member.create! :name => "MONIKA UBEROI", :mobile_phone => "98200 37586",:society_id => 113
Member.create! :name => "SURUCHI BHATIA", :mobile_phone => "98205 23886",:society_id => 113
Member.create! :name => "ANUBHA PATEL", :mobile_phone => "98196 72993",:society_id => 113
Member.create! :name => "KABIR CHADHA", :mobile_phone => "98338 90338",:email_id=> "kabir.cha87@gmail.com",:society_id => 113
Member.create! :name => "MRS RITU MANISH GOENKA", :mobile_phone => "98332 57997",:email_id=> "manish@unitekindia.com",:society_id => 113
Member.create! :name => "SEKHON TULIKA", :mobile_phone => "9820327710",:society_id => 113
Member.create! :name => "PARAG D DHANAK", :mobile_phone => "9820010122",:society_id => 113
Member.create! :name => "HARI PRASAD GOENKA", :mobile_phone => "9820226174",:society_id => 113
Member.create! :name => "PREM PRAKASH KAPOOR", :mobile_phone => "9322822401",:society_id => 113
Member.create! :name => "ASLAM MODH SHAIKH", :mobile_phone => "98212 27047",:society_id => 113
Member.create! :name => "VISHESH JAWAHAR MEHRA", :mobile_phone => "98702 01036",:email_id=> "vishesh78@yahoo.com",:society_id => 113
Member.create! :name => "ROHAN PRADEEP JAIN", :mobile_phone => "98338 46606",:email_id=> "rohanjain_20@hotmail.com",:society_id => 113
Member.create! :name => "RAJAN L NARAYAN", :mobile_phone => "98703 90949",:email_id=> "rajan.narayan@gmail.com",:society_id => 113
Member.create! :name => "PAWANDEEP SINGH", :mobile_phone => "",:society_id => 113
Member.create! :name => "DEEPAN DESAI", :mobile_phone => "9833945803",:society_id => 113
Member.create! :name => "RUPALI PATHAK", :mobile_phone => "9820440197",:society_id => 113
Member.create! :name => "JANAK MIRCHANDANI", :mobile_phone => "9821514793",:society_id => 114
Member.create! :name => "RAJIV SATYAPAL KUMAR", :mobile_phone => "98211 51844",:society_id => 115
Member.create! :name => "DR. IRFAN SHAH SHAUKAT", :mobile_phone => "97686 03612",:email_id=> "sshankatumer@yahoo.com",:society_id => 118
Member.create! :name => "NARESH SHETTY", :mobile_phone => "982110 8810",:society_id => 118
Member.create! :name => "RIGA M MALHOTRA", :mobile_phone => "",:society_id => 118
Member.create! :name => "PAWAN KUMAR MITTAL", :mobile_phone => "93210 26005",:society_id => 118
Member.create! :name => "NARESH KUMAR MITTAL", :mobile_phone => "",:society_id => 118
Member.create! :name => "JAYATA SHAH", :mobile_phone => "99202 88980",:society_id => 116
Member.create! :name => "HUSEINI A. JAGMAG", :mobile_phone => "98213 11723",:email_id=> "huseini@yahoo.com",:society_id => 117
Member.create! :name => "TIKAM NARAINDAS SUJAN", :mobile_phone => "",:society_id => 117
Member.create! :name => "MANOJ TIKAM SUJAN", :mobile_phone => "",:society_id => 117
Member.create! :name => "NARESHWAR SINGH KONDAL", :mobile_phone => "98690 63036",:society_id => 117
Member.create! :name => "HINGORANI SANTDASN", :mobile_phone => "",:society_id => 117
Member.create! :name => "RAJU HINGORANI", :mobile_phone => "",:society_id => 117
Member.create! :name => "JAY KUMAR MOTWANI", :mobile_phone => "98200 00812",:society_id => 117
Member.create! :name => "DALJIT SINGH MATHAROO", :mobile_phone => "98192 62646",:email_id=> "matharoods@hotmail.com",:society_id => 117
Member.create! :name => "MAJID MUSA MEMON", :mobile_phone => "98203 96983",:society_id => 117
Member.create! :name => "YOGESH SAHU", :mobile_phone => "98200 63385",:email_id=> "yogeshsahu98@yahoo.com",:society_id => 117
Member.create! :name => "JAGDISH.N.SAIGAL", :mobile_phone => "",:society_id => 117
Member.create! :name => "KULBIR SAHNEY", :mobile_phone => "98200 18838",:society_id => 117
Member.create! :name => "VED PRAKASH SINGH", :mobile_phone => "98208 56272",:society_id => 117
Member.create! :name => "SHER S CHAUDHARY", :mobile_phone => "98928 10997",:society_id => 117
Member.create! :name => "DEPAK CHHABRIA", :mobile_phone => "98206 00280",:society_id => 117
Member.create! :name => "NAKUL KOHLI", :mobile_phone => "98703 14815",:society_id => 117
Member.create! :name => "BHARAT SAIGAL", :mobile_phone => "93222 49739",:email_id=> "bharatsaigal@hotmail.com",:society_id => 117
Member.create! :name => "AVINASH MAHESH SHETTY", :mobile_phone => "98196 69800",:society_id => 117
Member.create! :name => "WAHEEDA RAZAK", :mobile_phone => "98210 20648",:society_id => 117
Member.create! :name => "RAHAT KALIM", :mobile_phone => "98199 97566",:society_id => 117
Member.create! :name => "PRAKASH HINGORANI", :mobile_phone => "",:society_id => 117
Member.create! :name => "UPENDRA K SITWALA", :mobile_phone => "98702 54440",:society_id => 117
Member.create! :name => "RAKESH .H.KHANNA", :mobile_phone => "98190 09000",:email_id=> "rakesh_khanna@syntelinc.com",:society_id => 118
Member.create! :name => "PRAVEEN GIRDHAR HINDUJA", :mobile_phone => "98200 68350",:society_id => 118
Member.create! :name => "FARIDA T. KOTHARI", :mobile_phone => "",:society_id => 119
Member.create! :name => "RAKESH KUMAR SHARMA", :mobile_phone => "93232 82118",:email_id=> "rakeshkumar@hotmail.com",:society_id => 119
Member.create! :name => "MYTHILI SANJEEV SAWANT", :mobile_phone => "",:society_id => 119
Member.create! :name => "DR.GANESH PUTTU RANE", :mobile_phone => "98202 15330",:society_id => 119
Member.create! :name => "SANDEEP SANCHALD CHHAJED", :mobile_phone => "98200 46219",:society_id => 119
Member.create! :name => "SANJAY SANCHALD CHHAJED", :mobile_phone => "98200 65548",:society_id => 119
Member.create! :name => "RAJESH.M.MAKHIJA", :mobile_phone => "98200 74949",:society_id => 119
Member.create! :name => "SANJIV SETH", :mobile_phone => "99205 66440",:email_id=> "sanjiv_seth@hotmail.com",:society_id => 119
Member.create! :name => "TANYA RAJIV SETH", :mobile_phone => "",:society_id => 119
Member.create! :name => "RONAK MAKHIJA", :mobile_phone => "9820074949",:society_id => 119
Member.create! :name => "RISHAB SETH", :mobile_phone => "9819402453",:society_id => 119
Member.create! :name => "RACHHPAL SAINI", :mobile_phone => "9821455917",:society_id => 119
Member.create! :name => "DINESH J NIHALANI", :mobile_phone => "9820222243",:society_id => 119
Member.create! :name => "MIHIR ARUN SETH", :mobile_phone => "9819864447",:society_id => 119
Member.create! :name => "PURNIMA ARUN SETH", :mobile_phone => "9322237529",:society_id => 119
Member.create! :name => "RAJIV SETH", :mobile_phone => "93241 47305",:email_id=> "rajivplastics@hotmail.com",:society_id => 119
Member.create! :name => "GERARAD PINTO", :mobile_phone => "9867216395",:society_id => 119
Member.create! :name => "PARMESHWAR NILKANT", :mobile_phone => "98702 93539",:email_id=> "pnilkant@gmail.com",:society_id => 120
Member.create! :name => "ANIL VALBH", :mobile_phone => "",:society_id => 120
Member.create! :name => "CAPT SHIRAZ B CONTRACTOR", :mobile_phone => "",:society_id => 120
Member.create! :name => "ARUN ARORA", :mobile_phone => "98214 16936",:society_id => 120
Member.create! :name => "CAPT R.K.NAYAR", :mobile_phone => "98200 60695",:email_id=> "captrknayar@yahoo.co.in",:society_id => 120
Member.create! :name => "VINAY.S.PATEL", :mobile_phone => "98200 60573",:society_id => 120
Member.create! :name => "KIRAN.S.PATEL", :mobile_phone => "98201 21683",:society_id => 120
Member.create! :name => "SHANTILAL.N.PATEL", :mobile_phone => "98200 60573",:society_id => 120
Member.create! :name => "ARJUN NAYAR", :mobile_phone => "99204 02220",:email_id=> "arjunnayar@yahoo.co.in",:society_id => 120
Member.create! :name => "RAJIV DUGGAL", :mobile_phone => "98200 12437",:email_id=> "buntyduggal@rediffmail.com",:society_id => 120
Member.create! :name => "NARENDRA REGE", :mobile_phone => "9821211155",:society_id => 120
Member.create! :name => "RAJU /R/ SAHEVYA", :mobile_phone => "98210 90102",:society_id => 121
Member.create! :name => "CHANDER PRAKASH", :mobile_phone => "93221 30998",:email_id=> "cp@avalontec.com.sg",:society_id => 121
Member.create! :name => "ANAND SHALIGRAM DAYASINGH", :mobile_phone => "98210 20175",:email_id=> "id.info@anandpan.com",:society_id => 121
Member.create! :name => "ARORA KRISHANLAL", :mobile_phone => "93228 25708",:society_id => 121
Member.create! :name => "CAPT R.S.SARNA", :mobile_phone => "98203 34047",:society_id => 121
Member.create! :name => "HIRACHAND .D.DAND", :mobile_phone => "",:society_id => 121
Member.create! :name => "SURESH PALICHA", :mobile_phone => "99301 02057",:society_id => 121
Member.create! :name => "ASIT PALICHA", :mobile_phone => "98200 67483",:society_id => 121
Member.create! :name => "DR. RAMKRISHNA B. M.D", :mobile_phone => "",:society_id => 121
Member.create! :name => "HARISH TULSIANI", :mobile_phone => "",:society_id => 121
Member.create! :name => "C.V.ISRANI", :mobile_phone => "98212 18773",:society_id => 121
Member.create! :name => "BRIJ MOHAN MAHESHWARI", :mobile_phone => "98201 05812",:society_id => 121
Member.create! :name => "ROHIT KAPOOR", :mobile_phone => "98922 68110",:email_id=> "srat@vsnl.com",:society_id => 121
Member.create! :name => "ANKESH R SAHETYA", :mobile_phone => "98203 05454",:society_id => 121
Member.create! :name => "BRIJESH ANAND", :mobile_phone => "",:society_id => 121
Member.create! :name => "RAJIV SUBHASH SETH", :mobile_phone => "93225 10865",:society_id => 121
Member.create! :name => "JAYSHREE S SHAH", :mobile_phone => "98202 33760",:society_id => 121
Member.create! :name => "NUPUR S SHAH", :mobile_phone => "98202 33756",:society_id => 121
Member.create! :name => "YOGITA A SHAH", :mobile_phone => "98219 33453",:society_id => 121
Member.create! :name => "MEET SANJIV PAREKH", :mobile_phone => "98674 99227",:society_id => 121
Member.create! :name => "AMRIT B SAHNI", :mobile_phone => "9867235370",:society_id => 121
Member.create! :name => "MANJARI GURBANI", :mobile_phone => "9820529656",:society_id => 121
Member.create! :name => "AKASH HEMRAJANI", :mobile_phone => "98920 49348",:society_id => 121
Member.create! :name => "TANYA SARNA", :mobile_phone => "98204 75759",:society_id => 121
Member.create! :name => "KARAN ARORA", :mobile_phone => "93228 25708",:society_id => 121
Member.create! :name => "MANAN S PAREKH", :mobile_phone => "98670 99226",:society_id => 121
Member.create! :name => "RAJESH .P.MANCHANDA", :mobile_phone => "98676 95545",:email_id=> "rajesh.p.manchanda@gmail.com",:society_id => 122
Member.create! :name => "RAJESH BANKA", :mobile_phone => "998758170",:society_id => 122
Member.create! :name => "DHANANJAY KADAM", :mobile_phone => "9930709970",:society_id => 122
Member.create! :name => "VIKRAM KADAM", :mobile_phone => "9819822330",:society_id => 122
Member.create! :name => "SANJAY B.ARTE", :mobile_phone => "98202 90048",:society_id => 123
Member.create! :name => "DEEPAK R. GUPTA", :mobile_phone => "98203 10525",:society_id => 123
Member.create! :name => "NIRANJAN S. KANDHARI", :mobile_phone => "98330 41114",:email_id=> "nirajkandhari@yahoo.com",:society_id => 123
Member.create! :name => "NANIK TEJUMAL PUNJABI", :mobile_phone => "98211 59581",:society_id => 123
Member.create! :name => "AJAY NANIK PUNJABI", :mobile_phone => "98211 95925",:email_id=> "ajay_punjabi2000@hotmail.com",:society_id => 123
Member.create! :name => "IQBAL A. KHALIQ", :mobile_phone => "99300 93484",:society_id => 123
Member.create! :name => "RAMJI NARAYAN PATEL", :mobile_phone => "",:society_id => 123
Member.create! :name => "CHANDRU JAMAITIAI MOTWANI", :mobile_phone => "98206 84398",:society_id => 123
Member.create! :name => "RAMESH MAGANLAL NINGOO", :mobile_phone => "98201 01535",:society_id => 123
Member.create! :name => "SANJAY SINGH", :mobile_phone => "98207 88762",:society_id => 123
Member.create! :name => "JEEVAN D'SA", :mobile_phone => "98204 95827",:society_id => 123
Member.create! :name => "CHADHA RAVINDER SINGH", :mobile_phone => "98203 41757",:society_id => 123
Member.create! :name => "CHADHA INDERPAL SINGH", :mobile_phone => "98200 44520",:society_id => 123
Member.create! :name => "MUMTAZ. .M. SHEIKH", :mobile_phone => "98208 64959",:society_id => 123
Member.create! :name => "KAWALJIT SINGH DHINGRA", :mobile_phone => "98198 35090",:email_id=> "san@apollointernational.net",:society_id => 123
Member.create! :name => "JUNED RASID BADSHAH", :mobile_phone => "98200 16210",:email_id=> "junedbadshah@yahoo.com",:society_id => 123
Member.create! :name => "AVINASH RAMESH BHAVANI", :mobile_phone => "",:society_id => 123
Member.create! :name => "KUMAR.T.ISRANI", :mobile_phone => "98218 85016",:society_id => 123
Member.create! :name => "DEEP KUMAR ISRANI", :mobile_phone => "93235 74536",:society_id => 123
Member.create! :name => "KISHIN.R. JODHUN/SHAKUNTALA", :mobile_phone => "",:society_id => 123
Member.create! :name => "HIRA CHINTAN MEHTA", :mobile_phone => "98218 96718",:society_id => 123
Member.create! :name => "KULNEETT S CHODHA", :mobile_phone => "98206 23809",:society_id => 123
Member.create! :name => "ALKA TANDAN", :mobile_phone => "98200 47588",:email_id=> "alkatandan@hotmail.com",:society_id => 123
Member.create! :name => "SAURAJIT DE", :mobile_phone => "98195 44520",:society_id => 123
Member.create! :name => "SURINDER MAHAJAN", :mobile_phone => "93223 83533",:society_id => 123
Member.create! :name => "YATEEN KARYEKAR", :mobile_phone => "98201 29627",:society_id => 123
Member.create! :name => "PARESH GAJWANI", :mobile_phone => "",:society_id => 123
Member.create! :name => "ANAND MALIWAL", :mobile_phone => "93215 77508",:society_id => 123
Member.create! :name => "VISHAL M KUKREJA", :mobile_phone => "98201 88075",:email_id=> "vishalkukreja_rocks@hotmail.com",:society_id => 123
Member.create! :name => "ROMIT ARTE", :mobile_phone => "99200 64715",:email_id=> "romit.arte@gmail.com",:society_id => 123
Member.create! :name => "ARSHIA NAVED KHAN", :mobile_phone => "9930093484",:society_id => 123
Member.create! :name => "KALPITA G BHIRUEL", :mobile_phone => "9870067890",:society_id => 123
Member.create! :name => "RAJESH DOODRAJ", :mobile_phone => "98203 36860",:society_id => 123
Member.create! :name => "VISHAL H GARG", :mobile_phone => "98201 50790",:society_id => 123
Member.create! :name => "VINOD BALKRISHNA VORA", :mobile_phone => "98203 63789",:society_id => 123
Member.create! :name => "MRS VAISHALI AGGARWAL", :mobile_phone => "98204 46877",:society_id => 124
Member.create! :name => "ARVIND BHUCHAR", :mobile_phone => "98200 24824",:email_id=> "arvindbhuchare@gmail.com",:society_id => 124
Member.create! :name => "MADAN MOHAN SAKHALA", :mobile_phone => "98190 48006",:society_id => 124
Member.create! :name => "DR.SAKHARCHAND C. CHHAJED", :mobile_phone => "98215 50244",:email_id=> "ashishsc@gmail.com",:society_id => 124
Member.create! :name => "ASHISH SAKHARCHAND CHHAJED", :mobile_phone => "98204 01793",:email_id=> "ashishsc@gmail.com",:society_id => 124
Member.create! :name => "AKASH SAKHARCHAND CHHAJED", :mobile_phone => "98192 39455",:email_id=> "ashishsc@gmail.com",:society_id => 124
Member.create! :name => "VIKRAM KHOSLA", :mobile_phone => "98202 28757",:society_id => 124
Member.create! :name => "IQBAL DAMANWALA", :mobile_phone => "98212 44889",:society_id => 124
Member.create! :name => "PRABHAJOT SINGH CHANDOK", :mobile_phone => "98201 43195",:society_id => 124
Member.create! :name => "RANJAT SINGH CHANDOK", :mobile_phone => "98210 82554",:email_id=> "ravijot_chandhok@hotmail.com",:society_id => 124
Member.create! :name => "INDERJAT SINGH CHANDOK", :mobile_phone => "98210 82552",:society_id => 124
Member.create! :name => "PRIMLA KHOSLA", :mobile_phone => "",:society_id => 124
Member.create! :name => "ABILASH.K.JAIN", :mobile_phone => "98335 58870",:email_id=> "akjain117@yahoo.com",:society_id => 124
Member.create! :name => "NARENDRA .A.JAIN", :mobile_phone => "93242 90999",:email_id=> "narendralalli@yahoo.com",:society_id => 124
Member.create! :name => "JITENDRA.A.JAIN", :mobile_phone => "93246 46211",:email_id=> "jitenladdi@yahoo.com",:society_id => 124
Member.create! :name => "ARUN NIRANJANLAL AGARAWAL", :mobile_phone => "",:society_id => 124
Member.create! :name => "RAICHANDANI B. JAMNUDAS", :mobile_phone => "98210 42038",:society_id => 124
Member.create! :name => "OM PRAKASH SHARMA", :mobile_phone => "98206 28445",:society_id => 124
Member.create! :name => "VIJAY LALWANI", :mobile_phone => "98200 47564",:society_id => 124
Member.create! :name => "DILIP SONI", :mobile_phone => "98206 14988",:society_id => 124
Member.create! :name => "SANJAY JHUNJHUN WALA", :mobile_phone => "98210 19422",:society_id => 124
Member.create! :name => "VINAY .K.DATT", :mobile_phone => "98210 10128",:society_id => 124
Member.create! :name => "D.K. VARMA", :mobile_phone => "98208 02223",:society_id => 124
Member.create! :name => "DR.ATUL CHANDRAKANT SHAH", :mobile_phone => "98203 07232",:society_id => 124
Member.create! :name => "HEMLATA CHANDRAKANT SHAH", :mobile_phone => "",:society_id => 124
Member.create! :name => "MUKESH KAURA", :mobile_phone => "98200 61207",:society_id => 124
Member.create! :name => "KUNAL KUWADEKAR", :mobile_phone => "98201 28737",:society_id => 124
Member.create! :name => "ARUN KUMAR MAKHIJA", :mobile_phone => "98210 90191",:society_id => 124
Member.create! :name => "DARSHAN GOPALDAS KHANNA", :mobile_phone => "92232 43444",:society_id => 124
Member.create! :name => "DEEPAK.D.KHANNA", :mobile_phone => "92261 71208",:society_id => 124
Member.create! :name => "DIVESH.D.KHANNA", :mobile_phone => "98231 80581",:society_id => 124
Member.create! :name => "RAJEEV SIKKA", :mobile_phone => "98200 57512",:society_id => 124
Member.create! :name => "SHAIKH MOHD MUSTAHASAN", :mobile_phone => "98200 43607",:society_id => 124
Member.create! :name => "RAJESH B ARORA", :mobile_phone => "93222 33747",:society_id => 124
Member.create! :name => "AMALENDU JAJODIA", :mobile_phone => "",:society_id => 124
Member.create! :name => "AJAY CHAUDHRY", :mobile_phone => "98211 22445",:email_id=> "ajay080808@gmail.com",:society_id => 124
Member.create! :name => "SANDEEP ARORA", :mobile_phone => "93222 50528",:society_id => 124
Member.create! :name => "ALOK GUPTA", :mobile_phone => "98213 54051",:society_id => 124
Member.create! :name => "ASHMA DAMANWALA", :mobile_phone => "98672 23013",:society_id => 124
Member.create! :name => "SAMEER R ARORA", :mobile_phone => "98214 47632",:society_id => 124
Member.create! :name => "SATISH KHANNA", :mobile_phone => "98200 26856",:society_id => 124
Member.create! :name => "SHILPA KHANNA THAKKAR", :mobile_phone => "98207 12107",:society_id => 124
Member.create! :name => "NARESH B SHARMA", :mobile_phone => "98201 26050",:society_id => 124
Member.create! :name => "MR HANSVEER SINGH CHANDOK", :mobile_phone => "98212 72554",:email_id=> "scurycur@hotmail.com",:society_id => 124
Member.create! :name => "SUMMEET SINGH CHANDHOK", :mobile_phone => "98200 03080",:society_id => 124
Member.create! :name => "SANMEET SINGH CHANDHOK", :mobile_phone => "98197 66998",:email_id=> "sanmeet.chandhok@gmail.com",:society_id => 124
Member.create! :name => "MS AVNEET KAUR CHANDHOK", :mobile_phone => "98920 88888",:society_id => 124
Member.create! :name => "ANSH MAKHIJA", :mobile_phone => "98210 18891",:email_id=> "ansh2009@hotmail.com",:society_id => 124
Member.create! :name => "ZIAUS SAYYADAIN", :mobile_phone => "98210 76268",:society_id => 124
Member.create! :name => "HARSH KHOSLA", :mobile_phone => "93244 59270",:society_id => 124
Member.create! :name => "CHIRAG KHOSLA", :mobile_phone => "93240 08630",:society_id => 124
Member.create! :name => "ANIRUDH BHUCHAR", :mobile_phone => "9819420424",:society_id => 124
Member.create! :name => "ASHUTOSH BHUCHAR", :mobile_phone => "9820176513",:society_id => 124
Member.create! :name => "SANIL R KALRA", :mobile_phone => "9374011111",:society_id => 124
Member.create! :name => "JITESH KALRA", :mobile_phone => "9323477777",:society_id => 124
Member.create! :name => "JAY KALRA", :mobile_phone => "",:society_id => 124
Member.create! :name => "SAHIL KALRA", :mobile_phone => "9022755533",:society_id => 124
Member.create! :name => "SHRI JAMNADAS RAICHANDANI", :mobile_phone => "",:society_id => 124
Member.create! :name => "ASLAM DAMANWALA", :mobile_phone => "98210 11525",:society_id => 124
Member.create! :name => "PANKAJ U. TRIVEDI", :mobile_phone => "98201 23364",:society_id => 125
Member.create! :name => "SURENDRA KUMAR R. ARORA", :mobile_phone => "98200 65406",:email_id=> "arapf@rediffmail.com",:society_id => 125
Member.create! :name => "TARUN KUMAR PODDAR", :mobile_phone => "98201 54269",:email_id=> "tkpoddar@yahoo.com",:society_id => 125
Member.create! :name => "NAJMUDDIN ROOPAWALLA", :mobile_phone => "98210 19460",:society_id => 125
Member.create! :name => "RAJESH NARANG", :mobile_phone => "98209 92523",:society_id => 125
Member.create! :name => "Y USUF H ROOPAWALLA", :mobile_phone => "98210 19460",:society_id => 125
Member.create! :name => "PANKAJ S MAJITHIA", :mobile_phone => "98218 88256",:email_id=> "majithia_pankaj@yahoo.com",:society_id => 125
Member.create! :name => "MANISH MEHRA", :mobile_phone => "98202 35090",:email_id=> "manish.d.mehra@aexp.com",:society_id => 126
Member.create! :name => "GAUTAM PODDAR", :mobile_phone => "9820154269",:society_id => 125
Member.create! :name => "MRITUNJAY PANDEY", :mobile_phone => "98922 36900",:email_id=> "mritunjay.pandey@gmail.com",:society_id => 1
Member.create! :name => "DR. ASPI JAMSHED IRANI", :mobile_phone => "93222 27460",:email_id=> "aspi131@hotmail.com",:society_id => 125
Member.create! :name => "NARENDRA C. BHANDARI", :mobile_phone => "",:society_id => 128
Member.create! :name => "NITYANAND HANUMAIAH", :mobile_phone => "98210 30272",:society_id => 128
Member.create! :name => "UMESH SETH", :mobile_phone => "",:society_id => 128
Member.create! :name => "RAJESH SETH", :mobile_phone => "98212 96695",:society_id => 128
Member.create! :name => "SANJAY .G.PANJNANI", :mobile_phone => "98204 68740",:society_id => 128
Member.create! :name => "SNEHLATA DAGA", :mobile_phone => "",:society_id => 128
Member.create! :name => "DR.GAURAV DAGA", :mobile_phone => "",:society_id => 128
Member.create! :name => "SAHARSH DAGA", :mobile_phone => "",:society_id => 128
Member.create! :name => "LEELAVATI .S.PARMAR", :mobile_phone => "93235 15069",:email_id=> "mazaamumbai@rediffmailcom",:society_id => 128
Member.create! :name => "PARMAR RAVINDRA S.", :mobile_phone => "",:society_id => 128
Member.create! :name => "PARMAR PRAVINCHAND S.", :mobile_phone => "93227 11252",:society_id => 128
Member.create! :name => "PARMAR MAHENDRA S.", :mobile_phone => "93242 57261",:email_id=> "maazamumbai@rediffmail.com",:society_id => 128
Member.create! :name => "PARMAR RAJENDRA", :mobile_phone => "93246 37226",:email_id=> "maazamumbai@rediffmail.com",:society_id => 128
Member.create! :name => "SUNIL VALECHA", :mobile_phone => "93469 85289",:society_id => 128
Member.create! :name => "SAROJ SAMTANI", :mobile_phone => "98922 55299",:society_id => 128
Member.create! :name => "MAJOR GURDAS SHOURIE", :mobile_phone => "",:society_id => 128
Member.create! :name => "HETAL VASANT HAKANI", :mobile_phone => "98923 33337",:society_id => 128
Member.create! :name => "YAASHMIN GIANI", :mobile_phone => "98201 82088",:email_id=> "yaashmin@yahoo.co.in",:society_id => 128
Member.create! :name => "ROHAN SAMTANI", :mobile_phone => "98215 66789",:email_id=> "rohansamtani45@yahoo.com",:society_id => 128
Member.create! :name => "SHOBA SRIVASTAVA", :mobile_phone => "",:society_id => 128
Member.create! :name => "DILIP K MEHERISH", :mobile_phone => "",:society_id => 128
Member.create! :name => "KANWAL KISHOR SETH", :mobile_phone => "98928 54197",:society_id => 128
Member.create! :name => "RAHUL SAUNIK", :mobile_phone => "92233 49010",:society_id => 128
Member.create! :name => "NAROTTAMDAS MEHRA", :mobile_phone => "98218 55406",:society_id => 128
Member.create! :name => "VISHAL N MEHRA", :mobile_phone => "98212 45406",:society_id => 128
Member.create! :name => "RAJESH N MEHRA", :mobile_phone => "98707 55406",:society_id => 128
Member.create! :name => "SHAUKHAT AHMED", :mobile_phone => "98929 09050",:society_id => 128
Member.create! :name => "MEGHA BHANDARI", :mobile_phone => "9820744311",:society_id => 128
Member.create! :name => "VIRANDER BEHL", :mobile_phone => "9870023388",:society_id => 128
Member.create! :name => "SHRADDHA SETH", :mobile_phone => "9821318586",:society_id => 128
Member.create! :name => "AKHIL SETH", :mobile_phone => "9821223901",:society_id => 128
Member.create! :name => "KASHVI KAPOOR", :mobile_phone => "9820180212",:society_id => 128
Member.create! :name => "SUNNY PARMAR", :mobile_phone => "9892367284",:society_id => 128
Member.create! :name => "VINOD KUMRA MEHRA", :mobile_phone => "93241 19795",:society_id => 128
Member.create! :name => "AAHANA SAMTANI", :mobile_phone => "98197 24442",:email_id=> "sweetaahan@hotmail.com",:society_id => 128
Member.create! :name => "SUBHASH MEHRA", :mobile_phone => "932346 54741",:society_id => 129
Member.create! :name => "PRAKASH TATIA", :mobile_phone => "98201 55546",:society_id => 129
Member.create! :name => "ROHIT MAGANLAL SHAH", :mobile_phone => "98922 22108",:society_id => 129
Member.create! :name => "PRASHANT AHUJA", :mobile_phone => "98211 75505",:society_id => 129
Member.create! :name => "ANUP MULKHRAJ BAJAJ", :mobile_phone => "98213 30984",:society_id => 129
Member.create! :name => "ASHA KRIPALANI", :mobile_phone => "98207 87160",:email_id=> "ashkrip@hotmail.com",:society_id => 129
Member.create! :name => "AJAY PAUL", :mobile_phone => "98202 10505",:email_id=> "ajaypaul55@yahoo.com",:society_id => 129
Member.create! :name => "HASSO GULABRAI JAIRAM", :mobile_phone => "",:society_id => 129
Member.create! :name => "SUNITAGOPALDAS RAJWANI", :mobile_phone => "98673 57218",:society_id => 129
Member.create! :name => "SURINDER KUMAR TILAK", :mobile_phone => "93241 69705",:email_id=> "amantilak@hotmail.com",:society_id => 129
Member.create! :name => "CAPT AMAN TILAK", :mobile_phone => "93237 47400",:email_id=> "amantilak@hotmail.com",:society_id => 129
Member.create! :name => "RAJEEV SETHI", :mobile_phone => "98203 29137",:society_id => 129
Member.create! :name => "SANJAY ARYA", :mobile_phone => "93245 20518",:email_id=> "shreeomshirting@mtnl.net.in",:society_id => 129
Member.create! :name => "NARENDRA RAJWANI", :mobile_phone => "98925 29903",:society_id => 129
Member.create! :name => "JEET SHAH", :mobile_phone => "",:society_id => 129
Member.create! :name => "JAINENDRA KUMAR", :mobile_phone => "9769547165",:society_id => 129
Member.create! :name => "MANAV SHAH", :mobile_phone => "9867004800",:society_id => 129
Member.create! :name => "RAMNEET BHATIA", :mobile_phone => "9223301119",:society_id => 129
Member.create! :name => "DR.SHRENIK A. DOSHI", :mobile_phone => "98201 45499",:society_id => 130
Member.create! :name => "PARESH VINOD MEHTA", :mobile_phone => "93770 01223",:email_id=> "paresh@pollycab.com",:society_id => 130
Member.create! :name => "HEMANT HARIDAS SHAH", :mobile_phone => "",:society_id => 130
Member.create! :name => "KARAN ARORA", :mobile_phone => "98215 09100",:email_id=> "watsinaname1@rediffmail.com",:society_id => 130
Member.create! :name => "PATEL YOGESH B.", :mobile_phone => "",:society_id => 130
Member.create! :name => "GAUTAM KUMAR D. JAIN", :mobile_phone => "98210 16158",:society_id => 130
Member.create! :name => "DHANJI GELA PATEL", :mobile_phone => "98672 28846",:email_id=> "justyog2@gmail.com",:society_id => 130
Member.create! :name => "SANGEETA VARYANI", :mobile_phone => "",:society_id => 130
Member.create! :name => "KISHOR C. SHAH", :mobile_phone => "98205 70266",:society_id => 130
Member.create! :name => "MEDHA ARORA", :mobile_phone => "98200 64460",:society_id => 130
Member.create! :name => "RAMESH PURAVANKNU", :mobile_phone => "98200 72493",:email_id=> "rpuravankara60@gmail.com",:society_id => 130
Member.create! :name => "RAJPAL BRIKH AGGARWAL", :mobile_phone => "",:society_id => 130
Member.create! :name => "BAFNA ASHOK H.", :mobile_phone => "98201 45355",:society_id => 130
Member.create! :name => "AMBALAL.K. PATEL", :mobile_phone => "98200 28531",:email_id=> "ambalal.patel@hotmail.com",:society_id => 130
Member.create! :name => "ASHISH .A.PATEL", :mobile_phone => "98201 84703",:email_id=> "ashish_a_patel@hotmail.com",:society_id => 130
Member.create! :name => "MR MANISH Y THAKKAR", :mobile_phone => "98200 13324",:society_id => 130
Member.create! :name => "SANJEEV VASANT JOSHI", :mobile_phone => "93248 60660",:society_id => 130
Member.create! :name => "MRS PRAGNA SAILESH BHATIA", :mobile_phone => "",:society_id => 130
Member.create! :name => "SAVITA D PATEL", :mobile_phone => "",:society_id => 130
Member.create! :name => "YOGESH PATEL", :mobile_phone => "9920659880",:society_id => 130
Member.create! :name => "NITIN D PATEL", :mobile_phone => "9819244112",:society_id => 130
Member.create! :name => "BRINDA P MEHTA", :mobile_phone => "9833040002",:society_id => 130
Member.create! :name => "BAFNA MAHENDRA H.", :mobile_phone => "",:society_id => 130
Member.create! :name => "SHAILESH GAGLANI", :mobile_phone => "98200 16306",:society_id => 130
Member.create! :name => "UPENDRA B TRIPATHI", :mobile_phone => "98211 14895",:society_id => 130
Member.create! :name => "RAJ YOGESH PATEL", :mobile_phone => "",:society_id => 130
Member.create! :name => "AKHIL KAPUR", :mobile_phone => "98200 53961",:society_id => 130
Member.create! :name => "BHRUGAL YOGESH PATEL", :mobile_phone => "93222 43628",:society_id => 130
Member.create! :name => "MANISH C SHAH", :mobile_phone => "98208 00992",:society_id => 130
Member.create! :name => "HARISH M. UDESHI", :mobile_phone => "98202 22067",:society_id => 130
Member.create! :name => "ADI TASLEEM CHOUGLE", :mobile_phone => "98202 94264",:society_id => 131
Member.create! :name => "NAKI TASLEEM CHOUGLE", :mobile_phone => "99201 42333",:society_id => 131
Member.create! :name => "BOHRA SUBHASH BRIJMOHAN", :mobile_phone => "98200 27042",:society_id => 132
Member.create! :name => "GOTHI PARBAT MANJI", :mobile_phone => "98202 87327",:society_id => 133
Member.create! :name => "PATEL VALAJI MANJI", :mobile_phone => "98200 25038",:society_id => 133
Member.create! :name => "RANCHHOD MANJI PATEL", :mobile_phone => "98200 00452",:society_id => 133
Member.create! :name => "MANOJ G LALWANI", :mobile_phone => "98200 99584",:email_id=> "manojlalwani@gmail.com",:society_id => 134
Member.create! :name => "PRADIP R SHAH", :mobile_phone => "98202 49571",:email_id=> "pradipshah100@yahoo.com",:society_id => 134
Member.create! :name => "SIDHHARTH P SHAH", :mobile_phone => "98202 49571",:email_id=> "pradipshah100@yahoo.com",:society_id => 134
Member.create! :name => "KULDIP SINGH LATHAR", :mobile_phone => "",:society_id => 134
Member.create! :name => "RITA SETH", :mobile_phone => "9820022404",:society_id => 136
Member.create! :name => "PRAKASH GAIKWAD", :mobile_phone => "9892486371",:society_id => 136
Member.create! :name => "HARDIK TEWARI", :mobile_phone => "9833592253",:society_id => 136
Member.create! :name => "ASHOK RAJA", :mobile_phone => "9820194347",:society_id => 136
Member.create! :name => "MEETI P MANDANZ", :mobile_phone => "9819801707",:society_id => 136
Member.create! :name => "SACHIN GUPTA", :mobile_phone => "9820058034",:society_id => 136
Member.create! :name => "DR SYEDA VAKIL", :mobile_phone => "9820219296",:society_id => 136
Member.create! :name => "NIHAL PANDA", :mobile_phone => "9820182532",:society_id => 136
Member.create! :name => "PRAFUL H DAVE", :mobile_phone => "9867111001",:society_id => 136
Member.create! :name => "GUNVANTLAL K.SHAH", :mobile_phone => "98215 44562",:email_id=> "samarth@samarthpharma.com",:society_id => 135
Member.create! :name => "RAJIV GUNVANTLAL SHAH", :mobile_phone => "98213 54751",:society_id => 135
Member.create! :name => "DR.S.H.MALIK", :mobile_phone => "98691 15988",:email_id=> "31saleem@gmail.com",:society_id => 136
Member.create! :name => "ASHOK SUKHIJA", :mobile_phone => "98197 00151",:email_id=> "asukhija@indussystem.com",:society_id => 136
Member.create! :name => "K.N. KUNDER", :mobile_phone => "",:society_id => 136
Member.create! :name => "CAP SIDDHARTH BHARDVAJ", :mobile_phone => "98205 14854",:society_id => 136
Member.create! :name => "VIJITA TEWARI", :mobile_phone => "98335 92253",:society_id => 136
Member.create! :name => "MANISH .B.MORDANI", :mobile_phone => "98212 17144",:society_id => 136
Member.create! :name => "PARAG VAIIABHDAS DESAI", :mobile_phone => "98211 71626",:society_id => 136
Member.create! :name => "KRIPALCHAND .J. DEVNANI", :mobile_phone => "",:society_id => 136
Member.create! :name => "SHIV KUMAR BAGRI", :mobile_phone => "98200 04764",:society_id => 136
Member.create! :name => "DEBENDRA .K. MODI", :mobile_phone => "98201 24085",:society_id => 136
Member.create! :name => "MANDANI PANKAJ .J.", :mobile_phone => "98202 21775",:email_id=> "pankajstar2000@yahoo.com",:society_id => 136
Member.create! :name => "MAHESH MURLIDHAR HINDUJA", :mobile_phone => "",:society_id => 136
Member.create! :name => "LALIT MALIWAL", :mobile_phone => "",:society_id => 136
Member.create! :name => "VEENA RAJBIR AGARWAL", :mobile_phone => "",:society_id => 136
Member.create! :name => "RAJESH SURESH WASWANI", :mobile_phone => "",:society_id => 136
Member.create! :name => "SHALEEN BAHADUR", :mobile_phone => "98210 12304",:society_id => 136
Member.create! :name => "PREM GUPTA", :mobile_phone => "98200 28166",:email_id=> "prem@miraclelifestyle.com",:society_id => 136
Member.create! :name => "ZARIMA MAHMOOD", :mobile_phone => "",:society_id => 136
Member.create! :name => "CAPT JEETENDRASINGH K.", :mobile_phone => "98202 90261",:society_id => 136
Member.create! :name => "GUL.K.MELWANI", :mobile_phone => "98211 10719",:society_id => 136
Member.create! :name => "VIROOMAL.H.MANVANI", :mobile_phone => "98201 25661",:society_id => 136
Member.create! :name => "MEENA MELWANI", :mobile_phone => "98211 18695",:society_id => 136
Member.create! :name => "CHANDRA.V. MANVANI", :mobile_phone => "98201 25661",:society_id => 136
Member.create! :name => "CHANDER G. PURSNANI", :mobile_phone => "",:society_id => 136
Member.create! :name => "SOMDATT .P.GUPTA", :mobile_phone => "",:society_id => 136
Member.create! :name => "MAHESH K. ASSUDANI", :mobile_phone => "98201 51534",:email_id=> "mahesh_bmc@hotmail.com",:society_id => 136
Member.create! :name => "NIRAJ BAGRI", :mobile_phone => "98209 88493",:society_id => 136
Member.create! :name => "SANJOG MAHESH HINDUJA", :mobile_phone => "98215 95919",:society_id => 136
Member.create! :name => "CAPT ARUN KUMAR D", :mobile_phone => "98213 61181",:society_id => 136
Member.create! :name => "PATEL RAJESH HIRALAL", :mobile_phone => "98212 83969",:email_id=> "rajeshgothi@rediffmail.com",:society_id => 136
Member.create! :name => "SHAGUN D HINDUJA", :mobile_phone => "",:society_id => 136
Member.create! :name => "DISHA D HINDUJA", :mobile_phone => "",:society_id => 136
Member.create! :name => "G FERNANDES", :mobile_phone => "98206 44057",:society_id => 136
Member.create! :name => "VEDDNT GUPTA", :mobile_phone => "",:society_id => 136
Member.create! :name => "KHETAN ANKIT LALIT", :mobile_phone => "98203 64917",:society_id => 136
Member.create! :name => "BHARAT VASANT GAIKWAD", :mobile_phone => "98330 06803",:society_id => 136
Member.create! :name => "MANOJ K PARWANI", :mobile_phone => "98212 49431",:society_id => 136
Member.create! :name => "JANAK TAPRANI", :mobile_phone => "98212 87751",:society_id => 136
Member.create! :name => "SUSHANT PANDA", :mobile_phone => "98210 28644",:society_id => 136
Member.create! :name => "RAJENDRA PRASAD JHANWAR", :mobile_phone => "98202 89938",:society_id => 136
Member.create! :name => "MONICA GROVER", :mobile_phone => "98203 35797",:society_id => 136
Member.create! :name => "DHAVAL BAKUL SHAH", :mobile_phone => "98206 74007",:society_id => 136
Member.create! :name => "UDHAV OJHA", :mobile_phone => "98677 88822",:society_id => 136
Member.create! :name => "PUNEET DAWAR", :mobile_phone => "99676 22900",:society_id => 136
Member.create! :name => "RAJAN GUPTA", :mobile_phone => "98200 80669",:society_id => 136
Member.create! :name => "ATIF SALEEM MALIK", :mobile_phone => "99679 75429",:society_id => 136
Member.create! :name => "GIRISH HANSRAJ", :mobile_phone => "98210 17969",:email_id=> "girish@clapstem.com",:society_id => 136
Member.create! :name => "SANJAY BALRAM RAMCHANDANI", :mobile_phone => "9821033373",:society_id => 136
Member.create! :name => "SUMIT R AGGARWAL", :mobile_phone => "9930093670",:society_id => 136
Member.create! :name => "DEEPAK K. DEVNANI", :mobile_phone => "",:society_id => 136
Member.create! :name => "LALIT .S. KHETAN", :mobile_phone => "93222 63395",:society_id => 136
Member.create! :name => "CHANDRU R. GULRAJNI", :mobile_phone => "98203 29771",:society_id => 136
Member.create! :name => "DILIP.M.HINDUJA", :mobile_phone => "",:society_id => 136
Member.create! :name => "NORBERT FERNANDES", :mobile_phone => "",:society_id => 136
Member.create! :name => "PANKAJ BAGRI", :mobile_phone => "",:society_id => 136
Member.create! :name => "MRS ANJUM SHAIKH", :mobile_phone => "98213 61300",:society_id => 136
Member.create! :name => "DEEPAK JOSHI", :mobile_phone => "98211 18651",:society_id => 136
Member.create! :name => "KAMAL G. GULRAJANI", :mobile_phone => "98200 84159",:email_id=> "gulrajani_kamal@vsnl.net",:society_id => 136
Member.create! :name => "VASNANI M. ASSONDAS", :mobile_phone => "98205 75140",:society_id => 136
Member.create! :name => "PRANAV G. SHAH", :mobile_phone => "98670 50229",:email_id=> "pranav@samarthpharma.com",:society_id => 135
Member.create! :name => "AMARJEET SINGH SETHI", :mobile_phone => "98204 19805",:society_id => 137
Member.create! :name => "HARVINDER SINGH SETHI", :mobile_phone => "",:society_id => 137
Member.create! :name => "ATUL MEDIRATTA", :mobile_phone => "",:society_id => 137
Member.create! :name => "TARUN K. MEDIRATTA", :mobile_phone => "98201 49105",:society_id => 137
Member.create! :name => "SUNDEEP MEDIRATTA", :mobile_phone => "98210 17181",:society_id => 137
Member.create! :name => "RAJ NARAYAN TAPARIA", :mobile_phone => "98200 78451",:society_id => 137
Member.create! :name => "SYED ABDUR RASHEED", :mobile_phone => "98202 11695",:society_id => 137
Member.create! :name => "SYEDA RUKSHEDA NAZLI", :mobile_phone => "92237 01812",:society_id => 137
Member.create! :name => "SYED ABDUR UMAIR", :mobile_phone => "98201 06122",:society_id => 137
Member.create! :name => "SYED ABDUR ZUBAIR", :mobile_phone => "98202 97433",:society_id => 137
Member.create! :name => "KRISHANLAL R. MEDIRATTA", :mobile_phone => "98211 41696",:society_id => 137
Member.create! :name => "DR A. A. PATEL", :mobile_phone => "98213 12711",:society_id => 137
Member.create! :name => "SURESH MOTIRAM LALWANI", :mobile_phone => "98201 36789",:email_id=> "lalwanisin@hotmail.com",:society_id => 138
Member.create! :name => "LALWANI MOTI HOTCHAND", :mobile_phone => "",:society_id => 138
Member.create! :name => "KAZI SAYEED MUSHTAQALI", :mobile_phone => "98702 11007",:society_id => 139
Member.create! :name => "DALAL HARENDRA K.", :mobile_phone => "98205 48205",:society_id => 139
Member.create! :name => "DHARAMJIT SINGH", :mobile_phone => "98200 63902",:society_id => 139
Member.create! :name => "SANJAY CHOWDHARY", :mobile_phone => "98923 28064",:society_id => 139
Member.create! :name => "ANISHA SUSHIL GHARAT", :mobile_phone => "98212 40498",:society_id => 139
Member.create! :name => "ASHOTOSH CHANDRA", :mobile_phone => "99300 47001",:email_id=> "ashutosh_railways@yahoo.com",:society_id => 139
Member.create! :name => "HEMANSHU HASMUKH SHETH", :mobile_phone => "98676 55131",:society_id => 139
Member.create! :name => "ATIL PARIKH", :mobile_phone => "9819235090",:society_id => 139
Member.create! :name => "ASHOK KUMAR SWAMY", :mobile_phone => "98204 44619",:email_id=> "aswamy@vsnl.com",:society_id => 139
Member.create! :name => "RAKESH ATMARAM ARORA", :mobile_phone => "98200 97590",:society_id => 140
Member.create! :name => "DWARKANATH MAKKER", :mobile_phone => "99673 61743",:email_id=> "kushdmakker@gmail.com",:society_id => 141
Member.create! :name => "RAJ KUMAR MAKHARIA", :mobile_phone => "93225 09270",:email_id=> "raj@gdesignindia.com",:society_id => 141
Member.create! :name => "SAJJAN KUMAR MAKHARIA", :mobile_phone => "98200 30033",:email_id=> "sajjan.makharia@gmail.com",:society_id => 141
Member.create! :name => "PREMOD GOPINATH", :mobile_phone => "98206 32590",:society_id => 142
Member.create! :name => "MOHAN DUDANEY", :mobile_phone => "9819058519",:society_id => 142
Member.create! :name => "VASAKH.S.MADHAN", :mobile_phone => "98701 77703",:society_id => 141
Member.create! :name => "SANJAY DUTTA", :mobile_phone => "99675 30059",:society_id => 142
Member.create! :name => "RAJAT KAPUR", :mobile_phone => "98211 45575",:email_id=> "rajatkapur@hotmail.com",:society_id => 142
Member.create! :name => "UMANG BUDHRAJA", :mobile_phone => "98672 36594",:society_id => 142
Member.create! :name => "SAKET MAKHARIA", :mobile_phone => "98191 93309",:society_id => 142
Member.create! :name => "CHANDRASEN SOBHANI", :mobile_phone => "9819344175",:society_id => 142
Member.create! :name => "ROMESH KAPUR", :mobile_phone => "9820625822",:society_id => 142
Member.create! :name => "GANESH WAGHJI PATEL", :mobile_phone => "98690 32502",:society_id => 143
Member.create! :name => "P. BHASKAR SHETTY", :mobile_phone => "98200 39263",:society_id => 144
Member.create! :name => "SURESH KUMAR BATRA", :mobile_phone => "98201 44437",:society_id => 144
Member.create! :name => "RAMESH KUMAR AGARWAL", :mobile_phone => "9892075158",:society_id => 144
Member.create! :name => "AVADH KISHOR SAHDEV", :mobile_phone => "9967061475",:society_id => 144
Member.create! :name => "ANANT D THAKRE", :mobile_phone => "9819573499",:society_id => 144
Member.create! :name => "LIPIKA SHARMA", :mobile_phone => "98202 86292",:society_id => 144
Member.create! :name => "KETAN M THAKKAR", :mobile_phone => "98211 32939",:society_id => 144
Member.create! :name => "ASHIT M THAKKAR", :mobile_phone => "",:society_id => 144
Member.create! :name => "ADVANI ISHWAR", :mobile_phone => "",:society_id => 144
Member.create! :name => "VICKY D. JAIN", :mobile_phone => "98193 32281",:society_id => 144
Member.create! :name => "CHANDRAPRAKASH SAROJ", :mobile_phone => "98204 10005",:society_id => 144
Member.create! :name => "CHANDRAPRAKASH DWIVEDI", :mobile_phone => "98200 58853",:society_id => 144
Member.create! :name => "SHYAM H MALIK", :mobile_phone => "98210 69915",:society_id => 144
Member.create! :name => "DEVASHISH MALIK", :mobile_phone => "98216 06434",:society_id => 144
Member.create! :name => "ADHAR AGGARWAL", :mobile_phone => "9892075158",:society_id => 144
Member.create! :name => "VIKAS R GANERIWAL", :mobile_phone => "9819607004",:society_id => 144
Member.create! :name => "ARADHANA SAHDEV MATHUR", :mobile_phone => "9324645754",:society_id => 144
Member.create! :name => "ABHISHEK AGGARWAL", :mobile_phone => "9892075158",:society_id => 144
Member.create! :name => "AMIT SAHDEV", :mobile_phone => "9930266067",:society_id => 144
Member.create! :name => "KETAN PARIKH", :mobile_phone => "9820224967",:society_id => 144
Member.create! :name => "PARUL K. NIGAM", :mobile_phone => "98923 92281",:email_id=> "capco_in@hotmail.com",:society_id => 145
Member.create! :name => "ANJUM M.SAMEL", :mobile_phone => "",:society_id => 146
Member.create! :name => "PRITAM .B. LUDHANI", :mobile_phone => "98210 32269",:email_id=> "pritamludhanigood_deal@hotmail.com",:society_id => 146
Member.create! :name => "DINESH B. PATEL", :mobile_phone => "93240 64054",:society_id => 146
Member.create! :name => "MURLIDHAR T. CHUGH", :mobile_phone => "98672 61758",:email_id=> "murlidharchugh@yahoo.co.in",:society_id => 146
Member.create! :name => "AMARPRAKASH AGARWAL", :mobile_phone => "98216 20171",:email_id=> "contact@satec.co.in",:society_id => 146
Member.create! :name => "PARVEEN SINGLA", :mobile_phone => "",:society_id => 146
Member.create! :name => "KISHAN.H.CHANDNANI", :mobile_phone => "",:society_id => 146
Member.create! :name => "VIPAN KUMAR C. SEHGAL", :mobile_phone => "98205 89939",:society_id => 146
Member.create! :name => "SARABJEET KALRA", :mobile_phone => "98200 49419",:society_id => 146
Member.create! :name => "WARYAM SINGH", :mobile_phone => "98200 71208",:email_id=> "waryam.singh@hotmail.com",:society_id => 146
Member.create! :name => "SURESH PREHAR", :mobile_phone => "98200 50960",:society_id => 146
Member.create! :name => "SURENDER KUMAR CHHOPRA", :mobile_phone => "98200 83673",:society_id => 146
Member.create! :name => "BHARAT ARORA", :mobile_phone => "98203 28486",:society_id => 146
Member.create! :name => "NARESH.A.GOOMER", :mobile_phone => "98210 87222",:society_id => 146
Member.create! :name => "RAM KANYALAL ASWANI", :mobile_phone => "98200 62693",:society_id => 146
Member.create! :name => "KANYALAL NARAIN ASWANI", :mobile_phone => "98190 19999",:society_id => 146
Member.create! :name => "DAVINDER RAMPRAKASH SURI", :mobile_phone => "98200 63387",:society_id => 146
Member.create! :name => "RITU DEWAN", :mobile_phone => "",:society_id => 146
Member.create! :name => "DILIP KUMAR R. SANGANERIA", :mobile_phone => "98200 63173",:society_id => 146
Member.create! :name => "NARINDER SINGH CHHATWAL", :mobile_phone => "",:society_id => 146
Member.create! :name => "NISHA .S. KARANDE", :mobile_phone => "98200 70834",:email_id=> "prink4K@yahoo.com",:society_id => 146
Member.create! :name => "BHAGWATIDEVI DALMIA", :mobile_phone => "",:society_id => 146
Member.create! :name => "AJAY KUMAR DALMIA", :mobile_phone => "",:society_id => 146
Member.create! :name => "VINOD KUMAR SEHGAL", :mobile_phone => "",:society_id => 146
Member.create! :name => "UJJVAL KUMAR SEHGAL", :mobile_phone => "",:society_id => 146
Member.create! :name => "PRADEEP R. ARORA", :mobile_phone => "98200 59120",:society_id => 146
Member.create! :name => "ANIL.H.TURAKHIA", :mobile_phone => "",:society_id => 146
Member.create! :name => "SOAMNATH BHATIA", :mobile_phone => "98204 30825",:society_id => 146
Member.create! :name => "AMAN SINGH", :mobile_phone => "98204 01833",:society_id => 146
Member.create! :name => "SUNPREET SINGH", :mobile_phone => "98200 82162",:society_id => 146
Member.create! :name => "HARILAL SHAH", :mobile_phone => "9819 71027",:society_id => 146
Member.create! :name => "CHIRAG ANIL TURAKHIA", :mobile_phone => "98332 78332",:society_id => 146
Member.create! :name => "AMAR ANIL TURAKHIA", :mobile_phone => "98200 39010",:society_id => 146
Member.create! :name => "BHARATHI V MUDALIAR", :mobile_phone => "93213 73677",:society_id => 146
Member.create! :name => "MOHIT ARORA", :mobile_phone => "98920 93454",:email_id=> "mohit77arora@gmail.com",:society_id => 146
Member.create! :name => "ARUN BHATIA", :mobile_phone => "98205 53478",:society_id => 146
Member.create! :name => "VIRAL SHAH", :mobile_phone => "98200 88566",:email_id=> "vshah123@gmail.com",:society_id => 146
Member.create! :name => "SHADAAB Z HAVA", :mobile_phone => "98204 07630",:society_id => 146
Member.create! :name => "KISHORI LAL SANGANERIA", :mobile_phone => "98200 60681",:society_id => 146
Member.create! :name => "NIKUNJ K SANGANERIA", :mobile_phone => "98198 61626",:society_id => 146
Member.create! :name => "HITESH K SANGANERIA", :mobile_phone => "98335 60680",:society_id => 146
Member.create! :name => "KARAN DINESH PATEL", :mobile_phone => "93240 64051",:email_id=> "karan5557@hotmail.com",:society_id => 146
Member.create! :name => "AMIT SURI", :mobile_phone => "9820295146",:society_id => 146
Member.create! :name => "SAHIL D SURI", :mobile_phone => "26812698",:society_id => 146
Member.create! :name => "ASHISH R SINGLA", :mobile_phone => "9820667745",:society_id => 146
Member.create! :name => "GAURANG D SANGANERIA", :mobile_phone => "9819814183",:society_id => 146
Member.create! :name => "ANUSHREE SANGANERIA", :mobile_phone => "9819878437",:society_id => 146
Member.create! :name => "DR.RAJESH G. KEWALRAMNI", :mobile_phone => "98204 98254",:email_id=> "drkewal@rediffmail.com",:society_id => 146
Member.create! :name => "JASPAL SINGH CHHATWAL", :mobile_phone => "98200 63322",:society_id => 146
Member.create! :name => "KAPAL S. ARORA", :mobile_phone => "98213 41180",:society_id => 146
Member.create! :name => "HARESH PRITAMDAS LUDHANI", :mobile_phone => "98210 32249",:society_id => 146
Member.create! :name => "TORAL A TURAKHIA", :mobile_phone => "98210 48803",:society_id => 146
Member.create! :name => "RAJAN GROVER", :mobile_phone => "98205 30008",:society_id => 146
Member.create! :name => "RAKESH GOPAL KEWALRAMANI", :mobile_phone => "98205 69895",:email_id=> "formulacar@rediffmail.com",:society_id => 146
Member.create! :name => "NITIN SEHGAL", :mobile_phone => "98211 22766",:society_id => 146
Member.create! :name => "SUNIL HASANAND VAZIRANI", :mobile_phone => "98920 66660",:society_id => 146
Member.create! :name => "MEHDI DABIR NAQUI", :mobile_phone => "98213 64061",:society_id => 146
Member.create! :name => "J G BHATIA", :mobile_phone => "98201 93556",:society_id => 146
Member.create! :name => "K J BHATIA", :mobile_phone => "92234 33543",:society_id => 146
Member.create! :name => "CHANDAN SUNIL VAZIRANI", :mobile_phone => "",:society_id => 146
Member.create! :name => "PRIYANKA S VARIRANI", :mobile_phone => "98211 83440",:society_id => 146
Member.create! :name => "DR SUNIL C ULLAL", :mobile_phone => "98218 74964",:email_id=> "psullal@hotmail.com",:society_id => 146
Member.create! :name => "HIMANSHU BHATIA", :mobile_phone => "98208 03661",:society_id => 146
Member.create! :name => "RAMSUNDER.B.AGARWALA", :mobile_phone => "",:society_id => 146
Member.create! :name => "PRANAV KUMAR SEHGAL", :mobile_phone => "",:society_id => 146
Member.create! :name => "GUPTA MONICA", :mobile_phone => "98210 51674",:society_id => 147
Member.create! :name => "GUPTA NITTISH VIJAY", :mobile_phone => "98200 72151",:email_id=> "nvsdiamond@yahoo.co.in",:society_id => 147
Member.create! :name => "VARMA RADHAKRISHNA B.", :mobile_phone => "98201 00890",:email_id=> "rbvarma@bisleri.co.in",:society_id => 147
Member.create! :name => "VARMA VISHAL R.", :mobile_phone => "98211 51826",:email_id=> "varmainternational@gmail.com",:society_id => 147
Member.create! :name => "CHURIWALA SUSHIL B.", :mobile_phone => "",:society_id => 147
Member.create! :name => "PREM ARORA", :mobile_phone => "98201 71085",:email_id=> "fizzicaltshirt@yahoo.co.in",:society_id => 147
Member.create! :name => "VISHAL ARORA", :mobile_phone => "98200 35096",:society_id => 147
Member.create! :name => "SURJIT SINGH GANDHI", :mobile_phone => "",:society_id => 147
Member.create! :name => "ARVINDER SINGH GANDHI", :mobile_phone => "98200 48605",:society_id => 147
Member.create! :name => "JUGAL KISHOR .S. MEHRA", :mobile_phone => "93241 62611",:society_id => 147
Member.create! :name => "ASHISH .J.MEHRA", :mobile_phone => "98202 16122",:society_id => 147
Member.create! :name => "M. SALIM KALLAN", :mobile_phone => "98211 11388",:society_id => 147
Member.create! :name => "MR DESIKAN VELUSWAMI M", :mobile_phone => "98191 27788",:society_id => 147
Member.create! :name => "CAPT MUDULIAN N VELUSWANI", :mobile_phone => "98210 93505",:society_id => 147
Member.create! :name => "CHURIWALA RACHMIKANT B.", :mobile_phone => "98927 28291",:society_id => 147
Member.create! :name => "VIJAY B.KHANDELWAL", :mobile_phone => "",:society_id => 148
Member.create! :name => "VIKAS B.KHANDELWAL", :mobile_phone => "",:society_id => 148
Member.create! :name => "BABULAL KHANDELWAL", :mobile_phone => "",:society_id => 148
Member.create! :name => "RAJLAL CHANDANI", :mobile_phone => "98210 49918",:society_id => 148
Member.create! :name => "KANHIAVALAL.C.HEMNANI", :mobile_phone => "98211 31952",:society_id => 148
Member.create! :name => "KHANNA NITIN BHISHMA", :mobile_phone => "93222 20163",:email_id=> "khanna@vsnl.com",:society_id => 148
Member.create! :name => "KHANNA PANKAJ BHISHMA", :mobile_phone => "98210 34798",:email_id=> "khanna@vsnl.com",:society_id => 148
Member.create! :name => "RAMESH SHARMA", :mobile_phone => "",:society_id => 148
Member.create! :name => "OM PRAKASH AGRAWAL", :mobile_phone => "98201 22434",:society_id => 148
Member.create! :name => "KRISHAN PRATAP MALIK", :mobile_phone => "98334 20261",:email_id=> "kpmalik@gmail.com",:society_id => 148
Member.create! :name => "TEKOO I. MAHBOOBONI", :mobile_phone => "98200 69127",:society_id => 148
Member.create! :name => "KETAKI S DESAI", :mobile_phone => "98210 13769",:society_id => 148
Member.create! :name => "VIJAY KODUMAL SHEWANI", :mobile_phone => "98190 50882",:society_id => 148
Member.create! :name => "SACHIN MANSOTRA", :mobile_phone => "98201 38632",:society_id => 148
Member.create! :name => "MUKESH KAPOOR", :mobile_phone => "98200 62660",:email_id=> "mickykapoor@hotmail.com",:society_id => 148
Member.create! :name => "ATUL KUMAR M SHAH", :mobile_phone => "93232 87266",:society_id => 148
Member.create! :name => "ALOK KUMAR TEWARI", :mobile_phone => "982111 3919",:society_id => 148
Member.create! :name => "VIJAY CHARAMDAS KHANNA", :mobile_phone => "93249 63869",:society_id => 148
Member.create! :name => "RISHI VIJAY KHANNA", :mobile_phone => "98200 67723",:email_id=> "rishikhanna@hotmail.com",:society_id => 148
Member.create! :name => "SMIT KANTILAL JAIN", :mobile_phone => "",:society_id => 148
Member.create! :name => "ARTI GIRISH HINGORANI", :mobile_phone => "9820610667",:society_id => 148
Member.create! :name => "BHARAT RAJ LALCHANDANI", :mobile_phone => "9820843417",:society_id => 148
Member.create! :name => "DARSHAN DALAL", :mobile_phone => "9820298114",:society_id => 148
Member.create! :name => "JAGDISH GANDHI", :mobile_phone => "9987522887",:society_id => 148
Member.create! :name => "DEEP KHANNA", :mobile_phone => "9322220163",:society_id => 148
Member.create! :name => "RAJESH WAZIR", :mobile_phone => "",:society_id => 148
Member.create! :name => "KANTI .B.JAIN", :mobile_phone => "",:society_id => 148
Member.create! :name => "MANISH KUBRA", :mobile_phone => "98200 89589",:society_id => 149
Member.create! :name => "VIKAS MUNOT", :mobile_phone => "98200 89015",:society_id => 149
Member.create! :name => "NARSHIV MUKUND PRABHU", :mobile_phone => "98212 59280",:society_id => 149
Member.create! :name => "PRATHL B BRAHM BHATT", :mobile_phone => "",:society_id => 149
Member.create! :name => "MANGHARAM G. SAKHRANI", :mobile_phone => "",:society_id => 149
Member.create! :name => "SMITA RAVINDRA BHIVAGAJE", :mobile_phone => "98921 03482",:society_id => 149
Member.create! :name => "AVAD SHAH", :mobile_phone => "98201 25432",:society_id => 149
Member.create! :name => "DR.SANJAY CHAUDHARI", :mobile_phone => "98201 29123",:email_id=> "drsbchaudhari@gmail.com",:society_id => 149
Member.create! :name => "KANCHAN.S.SAMTANI", :mobile_phone => "982021 9281",:society_id => 149
Member.create! :name => "MURLINARAYAN KUBRA", :mobile_phone => "",:society_id => 149
Member.create! :name => "MUKESH KUBRA", :mobile_phone => "98207 07510",:society_id => 149
Member.create! :name => "MANOJ KUBRA", :mobile_phone => "",:society_id => 149
Member.create! :name => "POONAM MEHROTRA", :mobile_phone => "98218 70432",:email_id=> "mehrotra.poonam@gmail.com",:society_id => 149
Member.create! :name => "KAMLA RATADIYA", :mobile_phone => "",:society_id => 149
Member.create! :name => "MANISH KANU BHAI DANI", :mobile_phone => "98207 09492",:society_id => 149
Member.create! :name => "GAURAV KABRA", :mobile_phone => "",:society_id => 149
Member.create! :name => "EKLAVYA JAI N", :mobile_phone => "98672 21465",:society_id => 149
Member.create! :name => "SUSHILAA R PATHAK", :mobile_phone => "98216 23741",:email_id=> "sushipat@hotmail.com",:society_id => 149
Member.create! :name => "DEEPA SAMTANI", :mobile_phone => "98202 19281",:society_id => 149
Member.create! :name => "AANCHAL SAXENA KANNAN", :mobile_phone => "98214 44945",:email_id=> "aanchalsaxena@hotmail.com",:society_id => 149
Member.create! :name => "ALOK T. RATADIYA", :mobile_phone => "98202 19534",:society_id => 149
Member.create! :name => "SUNITA B. MIRCHANDANI", :mobile_phone => "98200 69432",:society_id => 149
Member.create! :name => "ISHAN N PRABHU", :mobile_phone => "98194 84919",:society_id => 149
Member.create! :name => "DEEP KABRA", :mobile_phone => "",:society_id => 149
Member.create! :name => "SHUBHAM KABRA", :mobile_phone => "",:society_id => 149
Member.create! :name => "OM PRAKASH SHAH", :mobile_phone => "9323947933",:society_id => 149
Member.create! :name => "SANJAY O SHAH", :mobile_phone => "9324275085",:society_id => 149
Member.create! :name => "SARAS SHAH", :mobile_phone => "9821252565",:society_id => 149
Member.create! :name => "VEDANT CHAUDHARI", :mobile_phone => "",:society_id => 149
Member.create! :name => "SURAJ SAMTANI", :mobile_phone => "9820219281",:society_id => 149
Member.create! :name => "AJAY GUPTA", :mobile_phone => "",:society_id => 150
Member.create! :name => "ALI KHAN G. MAHAWLA", :mobile_phone => "98677 54648",:email_id=> "ali_valik@yahoo.com",:society_id => 150
Member.create! :name => "MOHAN K. ADVANI", :mobile_phone => "98200 81073",:society_id => 150
Member.create! :name => "C SUBOTH LAROYA", :mobile_phone => "98214 44942",:society_id => 150
Member.create! :name => "BIMAL KUMAR SONI", :mobile_phone => "98690 00234",:society_id => 150
Member.create! :name => "BHANU KUMAR NAHATA", :mobile_phone => "98201 55228",:society_id => 150
Member.create! :name => "BRIJ BHUSHAN .M.SHARMA", :mobile_phone => "98690 14736",:email_id=> "shape_india@rediffmail.com",:society_id => 150
Member.create! :name => "AMARJIT SINGH GUJRAL", :mobile_phone => "98211 04298",:society_id => 150
Member.create! :name => "AJIT PENDHARKAR", :mobile_phone => "98922 26284",:email_id=> "ajit.pendkar@rediffmail.com",:society_id => 150
Member.create! :name => "ROHIT SAMANT", :mobile_phone => "98206 14300",:society_id => 150
Member.create! :name => "HANUMANMAL SHAYMSUKHA", :mobile_phone => "98921 36249",:society_id => 150
Member.create! :name => "ANIL.R.SETHI", :mobile_phone => "98212 88551",:email_id=> "anilrsethi@hotmail.com",:society_id => 150
Member.create! :name => "ANOOP.V.HINGORANI", :mobile_phone => "98211 08597",:society_id => 150
Member.create! :name => "ASHOK MISHRA", :mobile_phone => "98206 00676",:society_id => 150
Member.create! :name => "RAJ KUMARI BOTHRA", :mobile_phone => "93226 07024",:society_id => 150
Member.create! :name => "GERA GULSHAN LAL", :mobile_phone => "98201 81073",:society_id => 150
Member.create! :name => "HANISH .K.MEHTA", :mobile_phone => "98210 50423",:society_id => 150
Member.create! :name => "RAMAN.S.GROVER", :mobile_phone => "98200 94493",:society_id => 150
Member.create! :name => "NAHATA P. BHANUKUMAR", :mobile_phone => "98210 33283",:society_id => 150
Member.create! :name => "JAIKISHAN S. MANSHARAMUNI", :mobile_phone => "93222 24226",:society_id => 150
Member.create! :name => "MRS NEHA P. MELWANI", :mobile_phone => "98701 89780",:society_id => 150
Member.create! :name => "KARAN H MEHTA", :mobile_phone => "",:society_id => 150
Member.create! :name => "AAYUSH H MEHTA", :mobile_phone => "",:society_id => 150
Member.create! :name => "SOMYA GUPTA", :mobile_phone => "98200 90888",:society_id => 150
Member.create! :name => "AMOL ANAND INAMDAR", :mobile_phone => "98190 49789",:society_id => 150
Member.create! :name => "SUDEEP SAHIR", :mobile_phone => "98203 17734",:society_id => 150
Member.create! :name => "RAKHI GERA BANDARI", :mobile_phone => "98203 17434",:society_id => 150
Member.create! :name => "NIDHI GERA", :mobile_phone => "98923 03552",:society_id => 150
Member.create! :name => "ATUL D SHAH", :mobile_phone => "98206 11211",:society_id => 150
Member.create! :name => "HARKIRATH SINGH GUJRAL", :mobile_phone => "98211 04298",:society_id => 150
Member.create! :name => "RAHUL BIMAL KUMAR SONI", :mobile_phone => "93225 10922",:society_id => 150
Member.create! :name => "SUNIL RAJADAKSHAYA", :mobile_phone => "98231 12402",:email_id=> "sunilrajadhyksha@hotmail.com",:society_id => 150
Member.create! :name => "RAJESH LEHR", :mobile_phone => "9930041571",:society_id => 150
Member.create! :name => "SANJAY M ADVANI", :mobile_phone => "9819381074",:society_id => 150
Member.create! :name => "BIJOY METHIL", :mobile_phone => "9867725677",:society_id => 150
Member.create! :name => "VENITA VASWANI", :mobile_phone => "9552123856",:society_id => 150
Member.create! :name => "KARTIK PENDHARKAR", :mobile_phone => "9869067163",:society_id => 150
Member.create! :name => "PRIYANKA KGUPATA", :mobile_phone => "98200 90888",:society_id => 150
Member.create! :name => "NIKUNJ BIMAL KUMAR SONI", :mobile_phone => "",:society_id => 150
Member.create! :name => "RISHABH BIMAL KUMAR SONI", :mobile_phone => "",:society_id => 150
Member.create! :name => "KOMAL DEEPAK THARANI", :mobile_phone => "98202 12617",:society_id => 151
Member.create! :name => "BANWARILAL R. BAJAJ", :mobile_phone => "",:society_id => 151
Member.create! :name => "CHARAN BIRSINGH ANAND", :mobile_phone => "",:society_id => 151
Member.create! :name => "NIRAJ BHATIA", :mobile_phone => "98201 85601",:society_id => 151
Member.create! :name => "VINAY GUPTA", :mobile_phone => "",:society_id => 151
Member.create! :name => "MEHRA ARUN KUMAR J.", :mobile_phone => "99206 91679",:society_id => 151
Member.create! :name => "JAISINGH RAMESH S.", :mobile_phone => "98205 94057",:society_id => 151
Member.create! :name => "KHEMJI.R. PATEL", :mobile_phone => "98200 77964",:society_id => 151
Member.create! :name => "DEV NAIR", :mobile_phone => "98210 19469",:society_id => 151
Member.create! :name => "PRABHJOYT SINGH RAJPAL", :mobile_phone => "93226 99227",:society_id => 151
Member.create! :name => "BHAGIRATH.V.GANDHI", :mobile_phone => "93222 22922",:email_id=> "bhagirathgandhi@yahoo.com",:society_id => 151
Member.create! :name => "SURESH LALWANI", :mobile_phone => "99696 18792",:email_id=> "sureshlalwani123@rediffmail.com",:society_id => 151
Member.create! :name => "CHUHARMAL LALWANI", :mobile_phone => "92244 16434",:society_id => 151
Member.create! :name => "GANDHI JITENDRA .B.", :mobile_phone => "",:society_id => 151
Member.create! :name => "MANOHARLAL J. HINDUJA", :mobile_phone => "",:society_id => 151
Member.create! :name => "KUNWARJIT PAINTAL", :mobile_phone => "98200 92598",:society_id => 151
Member.create! :name => "KAWALJIT KAUR SABHARWAL", :mobile_phone => "",:society_id => 151
Member.create! :name => "ASHWIN SOMALAL SHAH", :mobile_phone => "98213 30987",:society_id => 151
Member.create! :name => "HIRALAL CHAGANLAL JAIN", :mobile_phone => "98694 43651",:society_id => 151
Member.create! :name => "MAHAVIR SHANTILAL JAIN", :mobile_phone => "98692 50470",:society_id => 151
Member.create! :name => "SURESH JALAN", :mobile_phone => "",:society_id => 151
Member.create! :name => "MAMTA R BHOJWANI", :mobile_phone => "9820153058",:society_id => 151
Member.create! :name => "PULIN N KUSUMGAR", :mobile_phone => "98219 33333",:society_id => 151
Member.create! :name => "HARJEET SINGH NARANG", :mobile_phone => "93245 45219",:society_id => 151
Member.create! :name => "RANDEEP SINGH ANAND", :mobile_phone => "982094 8887",:society_id => 151
Member.create! :name => "KARAN A MEHRA", :mobile_phone => "",:society_id => 151
Member.create! :name => "MAHEK MANDLIK", :mobile_phone => "93234 69312",:society_id => 152
Member.create! :name => "SIDDHARTH AURORA", :mobile_phone => "98214 47985",:society_id => 152
Member.create! :name => "DARSHAN AURORA", :mobile_phone => "98208 64959",:society_id => 152
Member.create! :name => "BIPIN Kotak", :mobile_phone => "98922 41111",:society_id => 152
Member.create! :name => "ARUN R.MEHRA", :mobile_phone => "98213 35419",:society_id => 152
Member.create! :name => "SANJAY LALCHAND CHHABRIA", :mobile_phone => "98210 19218",:society_id => 152
Member.create! :name => "ASHISH SANJAY CHHABRIA", :mobile_phone => "98210 19218",:society_id => 152
Member.create! :name => "SHRADDHA SANJAY CHHABRIA", :mobile_phone => "98210 19218",:society_id => 152
Member.create! :name => "RAICHAND D. JAIN", :mobile_phone => "98203 33578",:society_id => 153
Member.create! :name => "JAGDUL P. KHANDEIWAL", :mobile_phone => "98200 30256",:society_id => 153
Member.create! :name => "SAKET BATRA", :mobile_phone => "98200 88410",:society_id => 153
Member.create! :name => "M.M. RANGWALA", :mobile_phone => "",:society_id => 153
Member.create! :name => "RAJESH RAM GEHANI", :mobile_phone => "99204 77320",:email_id=> "rrgehani@gmail.com",:society_id => 153
Member.create! :name => "KETAN C. AVLANI", :mobile_phone => "98210 30286",:society_id => 153
Member.create! :name => "KRISHANLAL ROATRA", :mobile_phone => "",:society_id => 153
Member.create! :name => "RAJIV C. CHODDHARY", :mobile_phone => "",:society_id => 153
Member.create! :name => "CHANDRN C. CHODDHARY", :mobile_phone => "",:society_id => 153
Member.create! :name => "RAJENDRA R. SINGH", :mobile_phone => "98206 42478",:society_id => 153
Member.create! :name => "R.K. SUNDARAM", :mobile_phone => "93235 87595",:email_id=> "aarkayess2003@yahoo.co.in",:society_id => 153
Member.create! :name => "CAPT RAVINDERPAL SINGH", :mobile_phone => "",:society_id => 153
Member.create! :name => "VINAY M. SAHNI", :mobile_phone => "98204 07058",:email_id=> "vinay@horizzon.com",:society_id => 153
Member.create! :name => "SUBHASH R. DOLE", :mobile_phone => "98200 54986",:society_id => 153
Member.create! :name => "VIVEK SHETH", :mobile_phone => "98215 95925",:society_id => 153
Member.create! :name => "NASEEM SIKANDER KAZI", :mobile_phone => "98212 88934",:society_id => 153
Member.create! :name => "JAISINGH SANWALDAS P.", :mobile_phone => "",:society_id => 153
Member.create! :name => "JAISINGH RAJU SANWALDAS", :mobile_phone => "98202 26377",:society_id => 153
Member.create! :name => "JAISINGH DILIP SANWALDAS", :mobile_phone => "98202 26608",:society_id => 153
Member.create! :name => "ADVANI BHOJRAJ DHALMAL", :mobile_phone => "",:society_id => 153
Member.create! :name => "VIRAL PRAVIN MEHTA", :mobile_phone => "98210 21263",:society_id => 153
Member.create! :name => "TUSHAR PRAVIN MEHTA", :mobile_phone => "98200 60056",:society_id => 153
Member.create! :name => "DR.NICHANI KISHOR TULSIDAS", :mobile_phone => "98200 66051",:email_id=> "kishorenichani@gmail.com",:society_id => 153
Member.create! :name => "VIJAY SINGH RAJAWAT", :mobile_phone => "98200 36943",:society_id => 153
Member.create! :name => "GURBACHAN SINGH", :mobile_phone => "",:society_id => 153
Member.create! :name => "RANJIT SINGH", :mobile_phone => "98201 55645",:society_id => 153
Member.create! :name => "RINKU VIKAS ARORA", :mobile_phone => "98690 50330",:society_id => 153
Member.create! :name => "SANJEEV MEHTA", :mobile_phone => "",:society_id => 153
Member.create! :name => "BHARAT NAYAR", :mobile_phone => "98205 00391",:email_id=> "bharatnayar@hotmail.com",:society_id => 153
Member.create! :name => "SUBHASH ARYA", :mobile_phone => "98216 29895",:society_id => 153
Member.create! :name => "VINEET ARYA", :mobile_phone => "",:society_id => 153
Member.create! :name => "JIVANI NOORUDIN .V.", :mobile_phone => "98200 52158",:society_id => 153
Member.create! :name => "BHARAT .N.KACHWALA", :mobile_phone => "98202 97244",:society_id => 153
Member.create! :name => "MANISH KACHWALA", :mobile_phone => "",:society_id => 153
Member.create! :name => "ATUL ARYA", :mobile_phone => "98210 92959",:society_id => 153
Member.create! :name => "CHETAN PRAKASH KAINATH", :mobile_phone => "98203 99190",:society_id => 153
Member.create! :name => "LOVAI RAJABALI DALAL", :mobile_phone => "98200 27985",:society_id => 153
Member.create! :name => "PARUL ASHWIN MANIAR", :mobile_phone => "98200 35375",:society_id => 153
Member.create! :name => "SALIL - E - JANARDANAN", :mobile_phone => "99305 83848",:email_id=> "deepz.salil@gmail.com",:society_id => 153
Member.create! :name => "GAURAV MEHRA", :mobile_phone => "98214 17188",:society_id => 153
Member.create! :name => "SAURABH MEHRA", :mobile_phone => "98214 17188",:society_id => 153
Member.create! :name => "IMRAN R SIDDIQUI", :mobile_phone => "98206 87407",:society_id => 153
Member.create! :name => "VIPUL KULSHRESHTHA", :mobile_phone => "98214 25998",:society_id => 153
Member.create! :name => "NIDHI MATHUR", :mobile_phone => "",:email_id=> "canthess@gmail.com",:society_id => 153
Member.create! :name => "AVI S RAJAWAT", :mobile_phone => "9820036943",:society_id => 153
Member.create! :name => "YASH T MEHTA", :mobile_phone => "9819595400",:society_id => 153
Member.create! :name => "TANVI T MEHTA", :mobile_phone => "9819554440",:society_id => 153
Member.create! :name => "TEENA SURENDER AHUJA", :mobile_phone => "9821629964",:society_id => 153
Member.create! :name => "SUMIT GUPTA", :mobile_phone => "9819102949",:society_id => 153
Member.create! :name => "RAKESH .U.MEHRA", :mobile_phone => "98214 17388",:email_id=> "mehrarakesh@hotmail.com",:society_id => 153
Member.create! :name => "A.V.GOPALKRISHNAN", :mobile_phone => "",:society_id => 154
Member.create! :name => "SURENDER KUMAR AHUJA", :mobile_phone => "98211 12903",:society_id => 154
Member.create! :name => "MANILAL RAMJI FARIA", :mobile_phone => "98200 27471",:society_id => 155
Member.create! :name => "RUMANA KHAN", :mobile_phone => "98213 03765",:society_id => 155
Member.create! :name => "RITA SHAHANI", :mobile_phone => "9930777374",:society_id => 155
Member.create! :name => "POONAM SHAHANI", :mobile_phone => "9769879499",:society_id => 155
Member.create! :name => "SANJAY CHATURVEDI", :mobile_phone => "9820036161",:society_id => 155
Member.create! :name => "HARPREET S SETHI", :mobile_phone => "9820770771",:society_id => 155
Member.create! :name => "TARANJIT S SETHI", :mobile_phone => "9820105605",:society_id => 155
Member.create! :name => "SIRAJAHMED BORA", :mobile_phone => "9920121126",:society_id => 155
Member.create! :name => "IKRAM AHMEDI", :mobile_phone => "9867950686",:society_id => 155
Member.create! :name => "HARISH CHANDER KUMAR", :mobile_phone => "93242 81151",:society_id => 155
Member.create! :name => "JOGENDRA SETHI", :mobile_phone => "99675 91403",:email_id=> "jogendra@yahoo.com",:society_id => 155
Member.create! :name => "RAUF HAMIDULLA KHAN", :mobile_phone => "98204 07630",:society_id => 155
Member.create! :name => "TARIQ KHAN", :mobile_phone => "98191 46429",:society_id => 156
Member.create! :name => "ANWAR KHAN", :mobile_phone => "",:society_id => 157
Member.create! :name => "ELIZABETH S.DAFONSECA", :mobile_phone => "",:society_id => 157
Member.create! :name => "E.V.RAMANNA", :mobile_phone => "98702 46048",:society_id => 157
Member.create! :name => "RAMESH..L.MUTREJA", :mobile_phone => "99300 24446",:society_id => 157
Member.create! :name => "AJAY WADHWA", :mobile_phone => "98215 55466",:email_id=> "aj_wadhwa@yahoo.com",:society_id => 157
Member.create! :name => "CHHEDA BHARAT KESHAVJI", :mobile_phone => "98210 41235",:email_id=> "bkchhsarv@gmail.com",:society_id => 157
Member.create! :name => "MISHRA RAJESH .B.", :mobile_phone => "",:society_id => 157
Member.create! :name => "RUNJIT SINGH NAGI", :mobile_phone => "98202 93092",:email_id=> "ranjitnagi@gmail.com",:society_id => 157
Member.create! :name => "KAMLESH R. LAHORI", :mobile_phone => "98923 08374",:society_id => 157
Member.create! :name => "LALITA G.JAIN", :mobile_phone => "98202 96099",:society_id => 157
Member.create! :name => "VIDHANI KISHORE MOTILAL", :mobile_phone => "98201 00489",:society_id => 157
Member.create! :name => "NIRANJAN PODDAR", :mobile_phone => "",:society_id => 157
Member.create! :name => "OM KATARE", :mobile_phone => "98200 52627",:email_id=> "omkatare@hotmail.com",:society_id => 157
Member.create! :name => "MUKESH S. KANDHARI", :mobile_phone => "98678 79747",:email_id=> "mukeshsk@yahoo.co.in",:society_id => 157
Member.create! :name => "CHETAN V. KESHARIA", :mobile_phone => "98210 14558",:email_id=> "satyamestate@hotmail.com",:society_id => 157
Member.create! :name => "NAVIN SADARANGNI", :mobile_phone => "",:society_id => 157
Member.create! :name => "BINU KAUSAL", :mobile_phone => "",:society_id => 157
Member.create! :name => "RAHUL CHETAN KESHARIA", :mobile_phone => "98200 99788",:email_id=> "keshariarahul@hotmail.com",:society_id => 157
Member.create! :name => "PRAKASH HANSRAJANI", :mobile_phone => "98670 17477",:society_id => 157
Member.create! :name => "SHAILESH S. KISHNANI", :mobile_phone => "98604 46789",:society_id => 157
Member.create! :name => "ANUJ KATARE", :mobile_phone => "99303 52626",:society_id => 157
Member.create! :name => "APURVA KATARE", :mobile_phone => "98200 52627",:society_id => 157
Member.create! :name => "KIMI SHARMA", :mobile_phone => "98332 51936",:society_id => 157
Member.create! :name => "Ms SUSHEEL JANGIRA", :mobile_phone => "98211 15553",:society_id => 157
Member.create! :name => "DEEPALI PAL", :mobile_phone => "9820246164",:society_id => 157
Member.create! :name => "SRINIVAS ERANKI", :mobile_phone => "26363891",:society_id => 157
Member.create! :name => "RAJ DINESHBHAI TRIVEDI", :mobile_phone => "98209 46284",:society_id => 157
Member.create! :name => "ASHOK KUMAR SHARMA", :mobile_phone => "98209 59355",:society_id => 157
Member.create! :name => "SURESH H.VAZIRANI", :mobile_phone => "98200 86004",:email_id=> "s.vazirani@transasia.co.in",:society_id => 158
Member.create! :name => "CAPT PRABHASH KANTIPAL", :mobile_phone => "98191 27787",:society_id => 159
Member.create! :name => "CAPT S.M. MEHRA", :mobile_phone => "",:society_id => 159
Member.create! :name => "NARSIAN S. AJIT KUMAR", :mobile_phone => "96190 83319",:email_id=> "vivi_india@rediffmail.com",:society_id => 159
Member.create! :name => "CAPT TANUJ CHOPRA", :mobile_phone => "98205 00919",:society_id => 159
Member.create! :name => "CAPT K. R. PAWA", :mobile_phone => "98208 27429",:society_id => 159
Member.create! :name => "ANUJ PAWA", :mobile_phone => "98204 40746",:society_id => 159
Member.create! :name => "ATUL CHOPRA", :mobile_phone => "98203 37697",:society_id => 159
Member.create! :name => "CAPT R P CHOPRA", :mobile_phone => "98203 37697",:society_id => 159
Member.create! :name => "V.SUBRAMANIAN", :mobile_phone => "98204 26830",:email_id=> "subs_2005@yahoo.com",:society_id => 159
Member.create! :name => "WANVARI MOOLCHAND TAKURDAS", :mobile_phone => "98701 43431",:society_id => 159
Member.create! :name => "YAZDI RUSTOM ERANEE", :mobile_phone => "98210 55455",:email_id=> "yreranee@gmail.com",:society_id => 159
Member.create! :name => "DEREK DANIEL ARANHA", :mobile_phone => "98214 37730",:society_id => 159
Member.create! :name => "VISHAL NARSSIAN", :mobile_phone => "98209 83319",:email_id=> "vishy1984@in.com",:society_id => 159
Member.create! :name => "SUDEEP NAGAR", :mobile_phone => "98200 25792",:email_id=> "sudeepnagar@hotmail.com",:society_id => 159
Member.create! :name => "YASH PAL SHARMA", :mobile_phone => "",:society_id => 159
Member.create! :name => "ARPAN SHARMA", :mobile_phone => "9920010889",:society_id => 159
Member.create! :name => "PRAKASH VAIJANATH JOSHI", :mobile_phone => "9820447246",:society_id => 159
Member.create! :name => "PARIKSHIT JOSHI", :mobile_phone => "",:society_id => 159
Member.create! :name => "NAVZAR ERANEE", :mobile_phone => "26310998",:society_id => 159
Member.create! :name => "FARZAN ERANEE", :mobile_phone => "9820103077",:society_id => 159
Member.create! :name => "IPSHITA RAY", :mobile_phone => "9673331990",:society_id => 159
Member.create! :name => "HIMANSHU SHETH", :mobile_phone => "9820894171",:society_id => 159
Member.create! :name => "MR VINOD KUMAR KHANNA", :mobile_phone => "98200 31914",:society_id => 159
Member.create! :name => "MR GOUTAM KHANNA", :mobile_phone => "98209 88220",:society_id => 159
Member.create! :name => "NEELMANI SMGH", :mobile_phone => "98211 78129",:society_id => 159
Member.create! :name => "PUNIT CHOPRA", :mobile_phone => "98200 41034",:society_id => 159
Member.create! :name => "ANIL WANVARI", :mobile_phone => "98203 56845",:society_id => 159
Member.create! :name => "CAPT ROHIT MAYADEV", :mobile_phone => "98200 16527",:society_id => 159
Member.create! :name => "SUBBHASH MEHTA", :mobile_phone => "98198 14301",:society_id => 159
Member.create! :name => "AMITABHA RAY", :mobile_phone => "98213 43916",:society_id => 159
Member.create! :name => "VIVEK NARSIAN", :mobile_phone => "9920910073",:society_id => 159
Member.create! :name => "DR. HARISHIKESH B PARIKH", :mobile_phone => "98206 58131",:society_id => 160
Member.create! :name => "RAGNI .S. VORA", :mobile_phone => "98926 20707",:society_id => 160
Member.create! :name => "RAJENDRA. M. KAUSHIK", :mobile_phone => "98212 07173",:society_id => 160
Member.create! :name => "RAMESH CHIMANLAL MEHTA", :mobile_phone => "98211 50112",:society_id => 160
Member.create! :name => "WARADE DINKAR R.", :mobile_phone => "98210 21205",:society_id => 160
Member.create! :name => "WARADE RUTU", :mobile_phone => "",:society_id => 160
Member.create! :name => "APARNA WARADE", :mobile_phone => "",:society_id => 160
Member.create! :name => "WARADE KASHINATH R.", :mobile_phone => "",:society_id => 160
Member.create! :name => "WARADE RITESH KASHINATH", :mobile_phone => "",:society_id => 160
Member.create! :name => "VASANT .C.BAMBOLKER", :mobile_phone => "98205 70228",:society_id => 160
Member.create! :name => "PARESH.V. BAMBOLKAR", :mobile_phone => "",:society_id => 160
Member.create! :name => "HOMI PHIROZE WADIA", :mobile_phone => "98211 67147",:society_id => 160
Member.create! :name => "PRANAV .K.JHAVERI", :mobile_phone => "98194 13612",:society_id => 160
Member.create! :name => "ABHAY BEHERE", :mobile_phone => "98212 464459",:society_id => 160
Member.create! :name => "RAJEEV CHHIBBER", :mobile_phone => "98200 87656",:society_id => 160
Member.create! :name => "BHAI MADAN M. CHHIBBER", :mobile_phone => "",:society_id => 160
Member.create! :name => "JESWANI DOULAT CHATRUMAL", :mobile_phone => "98207 67711",:society_id => 160
Member.create! :name => "RAVI .H. CHANDIRAMNI", :mobile_phone => "98210 48795",:society_id => 160
Member.create! :name => "MIRCHANDANI NAVIN HARISH", :mobile_phone => "98200 46705",:society_id => 160
Member.create! :name => "MIRCHANDANI HARISH B.", :mobile_phone => "98201 46705",:society_id => 160
Member.create! :name => "MUKESH .H.SHAH", :mobile_phone => "98206 40572",:society_id => 160
Member.create! :name => "MANOHARLAL R. GIYAMALANI", :mobile_phone => "93230 72661",:email_id=> "manoharlalg@gmail.com",:society_id => 160
Member.create! :name => "ANUJ TIPINS", :mobile_phone => "98204 63661",:society_id => 160
Member.create! :name => "RAMESH DEVJI PATEL", :mobile_phone => "98201 51936",:society_id => 160
Member.create! :name => "JAGDISH .C.GODIWALA", :mobile_phone => "98211 86693",:society_id => 160
Member.create! :name => "SANJAY JAYESHPURI GOSAI", :mobile_phone => "98198 65602",:society_id => 160
Member.create! :name => "MR ADITYA R KAUSHIK", :mobile_phone => "",:society_id => 160
Member.create! :name => "SANJAY UDAY SAGAR", :mobile_phone => "98205 06226",:society_id => 160
Member.create! :name => "PRIYANKA K. WARADE", :mobile_phone => "",:society_id => 160
Member.create! :name => "APEKSHA R KAUSHIK", :mobile_phone => "98212 07173",:society_id => 160
Member.create! :name => "SANDER J GOLANI", :mobile_phone => "98670 24052",:society_id => 160
Member.create! :name => "MONA INRANI", :mobile_phone => "98200 87854",:society_id => 160
Member.create! :name => "AARIF SHEIKH", :mobile_phone => "98201 62177",:society_id => 160
Member.create! :name => "PREMAL K BETAI", :mobile_phone => "93237 33446",:society_id => 160
Member.create! :name => "RAVI KUMAR SINGH", :mobile_phone => "98207 88872",:society_id => 160
Member.create! :name => "MEENA ASHOK KHARE", :mobile_phone => "93241 72351",:email_id=> "manikhare42@gmail.com",:society_id => 160
Member.create! :name => "SUNIL ASHOK KHARE", :mobile_phone => "98675 56100",:email_id=> "khare201@yahoo.co.uk",:society_id => 160
Member.create! :name => "BINDU IDRUS SHAIKH", :mobile_phone => "98332 12250",:society_id => 160
Member.create! :name => "MAHENDRA M ASRANI", :mobile_phone => "98212 27128",:society_id => 160
Member.create! :name => "INDRU HARISH MIRCHANDANI", :mobile_phone => "99206 25027",:society_id => 160
Member.create! :name => "VIJAY R PATEL", :mobile_phone => "9820151936",:society_id => 160
Member.create! :name => "NIKITA BAMBOLKAR", :mobile_phone => "9867596801",:society_id => 160
Member.create! :name => "NIKIT M SHAH", :mobile_phone => "9819949699",:society_id => 160
Member.create! :name => "MONICA GYAMLANI", :mobile_phone => "9029404629",:society_id => 160
Member.create! :name => "CHINMAY GYAMLANI", :mobile_phone => "9323072661",:society_id => 160
Member.create! :name => "KAMAL CHOWHAN", :mobile_phone => "",:society_id => 161
Member.create! :name => "B.D.KHADUBAD", :mobile_phone => "96890 02637",:society_id => 161
Member.create! :name => "HARIBHAI BHIKA BHAI PATEL", :mobile_phone => "98210 45951",:society_id => 161
Member.create! :name => "PATEL RAMESH BHIKABHAI", :mobile_phone => "98212 64055",:society_id => 161
Member.create! :name => "PATEL KANTI BHIKABHAI", :mobile_phone => "",:society_id => 161
Member.create! :name => "PATEL KISHOR BHIKABHAI", :mobile_phone => "98212 14258",:society_id => 161
Member.create! :name => "BHIKABHAI MEYHI PATEL", :mobile_phone => "",:society_id => 161
Member.create! :name => "MAVJI WAGHJI PATEL", :mobile_phone => "98920 93084",:society_id => 161
Member.create! :name => "HIRJI SAMJI PATEL", :mobile_phone => "",:society_id => 161
Member.create! :name => "SHAH MUKUL .K.", :mobile_phone => "98204 29182",:society_id => 161
Member.create! :name => "CHOPRA RAJINDER", :mobile_phone => "",:society_id => 161
Member.create! :name => "SUNIL.K.KAPAHI", :mobile_phone => "",:society_id => 161
Member.create! :name => "DAYA SHANKAR SARJIVE PRASAD CHURASIA", :mobile_phone => "98191 45484",:society_id => 161
Member.create! :name => "SUNIL KUMAR GARG", :mobile_phone => "98202 94523",:society_id => 161
Member.create! :name => "MANOJ AGARWAL", :mobile_phone => "98200 53986",:society_id => 161
Member.create! :name => "PATEL PREMJI GANGJI", :mobile_phone => "093772 82989",:society_id => 161
Member.create! :name => "VINOD JHAWAR", :mobile_phone => "98200 37803",:society_id => 161
Member.create! :name => "KUNDAN KALACHAND SHAHANI", :mobile_phone => "",:society_id => 161
Member.create! :name => "RAJESH PATEL", :mobile_phone => "",:society_id => 161
Member.create! :name => "RAMNIKLAL TEJSHI SHAH", :mobile_phone => "98205 11994",:society_id => 161
Member.create! :name => "ASHOK AGARWAL", :mobile_phone => "98212 31190",:email_id=> "amazingaakruti@gmail.com",:society_id => 161
Member.create! :name => "MURUGESAN M.DEVENDRAN", :mobile_phone => "98672 57775",:society_id => 161
Member.create! :name => "SURAMANIAN M. MADAR", :mobile_phone => "",:society_id => 161
Member.create! :name => "CHETAN G. MEHTA", :mobile_phone => "",:society_id => 161
Member.create! :name => "BHAMBHANI K.SANTOSH", :mobile_phone => "98215 21929",:society_id => 161
Member.create! :name => "RAVEENA NANWANI", :mobile_phone => "98707 03553",:society_id => 161
Member.create! :name => "SUNITA TODI", :mobile_phone => "93212 83697",:society_id => 161
Member.create! :name => "BALRAJ B.VANWARI", :mobile_phone => "98202 84384",:society_id => 161
Member.create! :name => "RAJESH H AGARWAL", :mobile_phone => "93200 89360",:email_id=> "prachiprints@gmail.com",:society_id => 161
Member.create! :name => "VEENA MOTWANI", :mobile_phone => "",:society_id => 161
Member.create! :name => "JAYESH VALJI GOTHI", :mobile_phone => "98204 44154",:email_id=> "jayesh_gothi@yahoo.co.in",:society_id => 161
Member.create! :name => "SUMEET GARG", :mobile_phone => "9987257257",:society_id => 161
Member.create! :name => "MONICA MOTWANI", :mobile_phone => "9820122280",:society_id => 161
Member.create! :name => "PURVSHOTTAM MAHESHWARI", :mobile_phone => "98214 48870",:society_id => 161
Member.create! :name => "BORENDRA JHAWAR", :mobile_phone => "98200 37803",:society_id => 161
Member.create! :name => "PREMJI TEJASHI SHAH", :mobile_phone => "98191 33998",:society_id => 161
Member.create! :name => "VARHUN THAAKUR", :mobile_phone => "98190 93673",:society_id => 161
Member.create! :name => "VIJAY MOHANLAL GULATI", :mobile_phone => "98206 19977",:society_id => 162
Member.create! :name => "SYED SHAKEEL HAIDERABODI", :mobile_phone => "",:society_id => 162
Member.create! :name => "NARENDER M MEHTA", :mobile_phone => "98339 81477",:society_id => 162
Member.create! :name => "KAILASH MALKANI", :mobile_phone => "98922 55660",:email_id=> "kailashmalkani@hotmail.com",:society_id => 162
Member.create! :name => "DINESH M SRIVASTAUA", :mobile_phone => "98199 90504",:society_id => 162
Member.create! :name => "HARISH KHANNA", :mobile_phone => "93240 44665",:society_id => 162
Member.create! :name => "MOHNISH KHANNA", :mobile_phone => "",:society_id => 162
Member.create! :name => "HARESH M GHELANI", :mobile_phone => "9821114899",:society_id => 162
Member.create! :name => "MRS YASMIN DATEDAR", :mobile_phone => "9820052242",:society_id => 162
Member.create! :name => "VINOD BACHCHAN", :mobile_phone => "9820991386",:society_id => 162
Member.create! :name => "NEMISH K PAREKH", :mobile_phone => "98190 81985",:email_id=> "nemishp@gmail.com",:society_id => 162
Member.create! :name => "KASHISH K MALKANI", :mobile_phone => "98922 55660",:society_id => 162
Member.create! :name => "JITIN MALKANI", :mobile_phone => "97639 64737",:society_id => 162
Member.create! :name => "PUNEET V GULATI", :mobile_phone => "98920 50999",:society_id => 162
Member.create! :name => "SUNIL S.CHANDNI", :mobile_phone => "98702 84248",:society_id => 162
Member.create! :name => "SRICHAND V KATARIA", :mobile_phone => "92244 27773",:society_id => 162
Member.create! :name => "MAHENDRA S KATARIA", :mobile_phone => "98929 44306",:society_id => 162
Member.create! :name => "MUKESH MILAWARAM MEHTA", :mobile_phone => "98334 81118",:society_id => 162
Member.create! :name => "MANISH MEHTA", :mobile_phone => "98334 81118",:society_id => 162
Member.create! :name => "PRAVIR MALHOTRA", :mobile_phone => "98219 86900",:email_id=> "pravirmalhotra@hotmail.com",:society_id => 162
Member.create! :name => "NEHA MALHOTRA", :mobile_phone => "98194 16369",:email_id=> "nehamalhotra@hotmail.com",:society_id => 162
Member.create! :name => "CAPT CLARENCE F GONSALUES", :mobile_phone => "98203 42817",:society_id => 162
Member.create! :name => "RAJIV MALHOTRA", :mobile_phone => "",:society_id => 162
Member.create! :name => "HIRO LALWANI", :mobile_phone => "9323105244",:society_id => 162
Member.create! :name => "PALLAB K.BHATTACHARYA", :mobile_phone => "98210 90996",:email_id=> "pallab.bhattacharya@gmail.com",:society_id => 162
Member.create! :name => "KHANNA SURINDER .P.", :mobile_phone => "98211 41063",:society_id => 163
Member.create! :name => "SANTOSH.H.LALWANI", :mobile_phone => "98201 94056",:society_id => 163
Member.create! :name => "SUDHIR.S.BHATIA", :mobile_phone => "98200 31460",:society_id => 163
Member.create! :name => "RANBIR SINGH BAKSHI", :mobile_phone => "",:society_id => 163
Member.create! :name => "SANDEEP BAKSHI", :mobile_phone => "98200 12954",:society_id => 163
Member.create! :name => "YASHPAL BAJAJ", :mobile_phone => "",:society_id => 163
Member.create! :name => "NITIKA THAPAR", :mobile_phone => "",:society_id => 163
Member.create! :name => "VIJAYA MALHOTRA", :mobile_phone => "98203 99926",:society_id => 163
Member.create! :name => "ROMI .S.KHANNA", :mobile_phone => "98211 15364",:society_id => 163
Member.create! :name => "RISHI .S.KHANNA", :mobile_phone => "/98211 15364",:society_id => 163
Member.create! :name => "JOBIN MUSTAQ KHAN", :mobile_phone => "98206 61375",:society_id => 163
Member.create! :name => "SANGEETA SETH BHATIA", :mobile_phone => "93225 07673",:society_id => 163
Member.create! :name => "MOHAMMED ABDUL HAQUO", :mobile_phone => "98195 52445",:society_id => 163
Member.create! :name => "GANAPATI SUBRAMANI", :mobile_phone => "98201 83746",:society_id => 163
Member.create! :name => "LLOYD B D'COSTA", :mobile_phone => "98205 67775",:society_id => 163
Member.create! :name => "CHIRAG V. SHARAFF", :mobile_phone => "",:society_id => 163
Member.create! :name => "HARSHAD NANCHAND KHARA", :mobile_phone => "98216 92131",:society_id => 163
Member.create! :name => "VIVEK R MIDHA", :mobile_phone => "98210 26475",:society_id => 163
Member.create! :name => "GAUTAM .D.THAKUR", :mobile_phone => "",:society_id => 164
Member.create! :name => "BALRAJ K. MALHOTRA", :mobile_phone => "",:society_id => 164
Member.create! :name => "S.S. MAJUMDAR", :mobile_phone => "",:society_id => 164
Member.create! :name => "RATAN KUMAR GHOSH", :mobile_phone => "98203 43813",:email_id=> "ghoshratan@gmail.com",:society_id => 164
Member.create! :name => "KANWAL SACHDEV", :mobile_phone => "99870 25921",:society_id => 164
Member.create! :name => "DAMODAR SRIPAD BORKAR", :mobile_phone => "",:society_id => 164
Member.create! :name => "PINAKI SHANKAR NAY", :mobile_phone => "",:society_id => 164
Member.create! :name => "CAPT HASAN QEZILBASH", :mobile_phone => "98203 17191",:society_id => 164
Member.create! :name => "DORS MEHRA", :mobile_phone => "98203 39066",:society_id => 164
Member.create! :name => "KETKI SACHDEV", :mobile_phone => "9819714355",:society_id => 164
Member.create! :name => "FARAHNAZ DARAIUS WADIA", :mobile_phone => "98199 12158",:society_id => 164
Member.create! :name => "FAIZ QEZILBASH", :mobile_phone => "",:society_id => 164
Member.create! :name => "FEROZ QEZILBASH", :mobile_phone => "",:society_id => 164
Member.create! :name => "NARESH S KHEMKA", :mobile_phone => "98673 68777",:email_id=> "nareshkhemka@gmail.com",:society_id => 165
Member.create! :name => "DR.NARESH KHANNA", :mobile_phone => "98212 19953",:email_id=> "khanna.naresh2008@gmail.com",:society_id => 166
Member.create! :name => "KRISHNA RAJA GILIYAL", :mobile_phone => "",:society_id => 166
Member.create! :name => "MADHU J. AGRWAL", :mobile_phone => "98202 22364",:society_id => 166
Member.create! :name => "NARINDER SINGH SACHDEV", :mobile_phone => "98202 98635",:society_id => 166
Member.create! :name => "AJAY K. ROHIRA", :mobile_phone => "",:society_id => 166
Member.create! :name => "DR.SUNDEEP .S.DHARADHAR", :mobile_phone => "98200 31817",:society_id => 166
Member.create! :name => "NAVNIT .G.KANANI", :mobile_phone => "98205 56229",:society_id => 166
Member.create! :name => "NAGULA.G.GANGADHAR", :mobile_phone => "98200 11576",:email_id=> "n.prasad26gmail.com",:society_id => 166
Member.create! :name => "NAGULA.G.HUNMANTHU", :mobile_phone => "98201 37086",:society_id => 166
Member.create! :name => "PREMNATH .N.SINGH", :mobile_phone => "98197 95594",:society_id => 166
Member.create! :name => "ASHOK .D. MEHTA", :mobile_phone => "98200 54907",:society_id => 166
Member.create! :name => "AMIT BAKSHI", :mobile_phone => "98210 27137",:society_id => 166
Member.create! :name => "DARSHAN SINGH SACHDEV", :mobile_phone => "98202 98635",:society_id => 166
Member.create! :name => "JASBIR SINGH ANAND", :mobile_phone => "98202 79488",:society_id => 166
Member.create! :name => "NIRAV MEHTA", :mobile_phone => "9322287227",:society_id => 166
Member.create! :name => "JYOTI P DIALANI", :mobile_phone => "9819020059",:society_id => 166
Member.create! :name => "PRATIK KANANI", :mobile_phone => "9920103441",:society_id => 166
Member.create! :name => "RAVISH KAWANI", :mobile_phone => "9920199559",:society_id => 166
Member.create! :name => "SALMA GUL AGHA", :mobile_phone => "97730 00160",:society_id => 167
 