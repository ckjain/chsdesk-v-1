# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user2.name
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
user3 = User.create! :name => 'SAteam',  :email => 'sa_team@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 1, :confirmed_at => Time.now.utc
puts 'New user created: ' << user3.name
user3.add_role :society_team
user4 = User.create! :name => 'SAuser', :email => 'sa_user@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 1, :confirmed_at => Time.now.utc
puts 'New user created: ' << user4.name
user5 = User.create! :name => 'OICadmin', :state => 'active', :email => 'oic_admin@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 2, :confirmed_at => Time.now.utc
puts 'New user created: ' << user2.name
user5.add_role :society_admin
user6 = User.create! :name => 'OICteam', :state => 'active', :email => 'oic_team@chsdesk.com', :password => 'please', :password_confirmation => 'please', :society_id => 2, :confirmed_at => Time.now.utc.now
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
 unit1 = Unit.create! :unit_number => '1502', :wing_name => 'A', :building_name => '1', :floor_name => '15', :unit_type_id => 7, :society_id => 2
 unit1 = Unit.create! :unit_number => '1501', :wing_name => 'A', :building_name => '1', :floor_name => '15', :unit_type_id => 7, :society_id => 2
 unit1 = Unit.create! :unit_number => '1402', :wing_name => 'A', :building_name => '1', :floor_name => '14', :unit_type_id => 7, :society_id => 2
 unit1 = Unit.create! :unit_number => '1401', :wing_name => 'A', :building_name => '1', :floor_name => '14', :unit_type_id => 7, :society_id => 2
 unit1 = Unit.create! :unit_number => '1302', :wing_name => 'A', :building_name => '1', :floor_name => '13', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1301', :wing_name => 'A', :building_name => '1', :floor_name => '13', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1202', :wing_name => 'A', :building_name => '1', :floor_name => '12', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1201', :wing_name => 'A', :building_name => '1', :floor_name => '12', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1102', :wing_name => 'A', :building_name => '1', :floor_name => '11', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1101', :wing_name => 'A', :building_name => '1', :floor_name => '11', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1002', :wing_name => 'A', :building_name => '1', :floor_name => '10', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '1001', :wing_name => 'A', :building_name => '1', :floor_name => '10', :unit_type_id => 8, :society_id => 3
 unit1 = Unit.create! :unit_number => '501', :wing_name => 'A', :building_name => '1', :floor_name => '5', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '502', :wing_name => 'A', :building_name => '1', :floor_name => '5', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '503', :wing_name => 'A', :building_name => '1', :floor_name => '5', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '504', :wing_name => 'A', :building_name => '1', :floor_name => '5', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '505', :wing_name => 'A', :building_name => '1', :floor_name => '5', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '506', :wing_name => 'A', :building_name => '1', :floor_name => '5', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '601', :wing_name => 'A', :building_name => '1', :floor_name => '6', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '602', :wing_name => 'A', :building_name => '1', :floor_name => '6', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '603', :wing_name => 'A', :building_name => '1', :floor_name => '6', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '604', :wing_name => 'A', :building_name => '1', :floor_name => '6', :unit_type_id => 10, :society_id => 2
 unit1 = Unit.create! :unit_number => '605', :wing_name => 'A', :building_name => '1', :floor_name => '6', :unit_type_id => 10, :society_id => 2
puts 'New units for society 2 & 3 created: ' 
      Unit.create(:unit_number => '1702',:wing_name => 'B',:building_name => '1',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1701',:wing_name => 'B',:building_name => '1',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1705',:wing_name => 'B',:building_name => '1',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1706',:wing_name => 'B',:building_name => '1',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1603',:wing_name => 'B',:building_name => '1',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1604',:wing_name => 'B',:building_name => '1',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1602',:wing_name => 'B',:building_name => '1',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1601',:wing_name => 'B',:building_name => '1',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1605',:wing_name => 'B',:building_name => '1',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1606',:wing_name => 'B',:building_name => '1',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1503',:wing_name => 'B',:building_name => '1',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1504',:wing_name => 'B',:building_name => '1',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1502',:wing_name => 'B',:building_name => '1',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1501',:wing_name => 'B',:building_name => '1',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1505',:wing_name => 'B',:building_name => '1',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1506',:wing_name => 'B',:building_name => '1',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1403',:wing_name => 'B',:building_name => '1',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1404',:wing_name => 'B',:building_name => '1',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1402',:wing_name => 'B',:building_name => '1',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1401',:wing_name => 'B',:building_name => '1',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1405',:wing_name => 'B',:building_name => '1',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1406',:wing_name => 'B',:building_name => '1',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1303',:wing_name => 'B',:building_name => '1',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1304',:wing_name => 'B',:building_name => '1',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1302',:wing_name => 'B',:building_name => '1',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1301',:wing_name => 'B',:building_name => '1',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1305',:wing_name => 'B',:building_name => '1',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1306',:wing_name => 'B',:building_name => '1',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1203',:wing_name => 'B',:building_name => '1',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1204',:wing_name => 'B',:building_name => '1',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1202',:wing_name => 'B',:building_name => '1',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1201',:wing_name => 'B',:building_name => '1',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1205',:wing_name => 'B',:building_name => '1',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1206',:wing_name => 'B',:building_name => '1',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1103',:wing_name => 'B',:building_name => '1',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1104',:wing_name => 'B',:building_name => '1',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1102',:wing_name => 'B',:building_name => '1',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1101',:wing_name => 'B',:building_name => '1',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1105',:wing_name => 'B',:building_name => '1',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1106',:wing_name => 'B',:building_name => '1',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1003',:wing_name => 'B',:building_name => '1',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1004',:wing_name => 'B',:building_name => '1',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1002',:wing_name => 'B',:building_name => '1',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1001',:wing_name => 'B',:building_name => '1',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1005',:wing_name => 'B',:building_name => '1',:floor_name => '10',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1006',:wing_name => 'B',:building_name => '1',:floor_name => '10',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1803',:wing_name => 'B',:building_name => '1',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1804',:wing_name => 'B',:building_name => '1',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1802',:wing_name => 'B',:building_name => '1',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1801',:wing_name => 'B',:building_name => '1',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1805',:wing_name => 'B',:building_name => '1',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1806',:wing_name => 'B',:building_name => '1',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1903',:wing_name => 'B',:building_name => '1',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1904',:wing_name => 'B',:building_name => '1',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1902',:wing_name => 'B',:building_name => '1',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1901',:wing_name => 'B',:building_name => '1',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1905',:wing_name => 'B',:building_name => '1',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1906',:wing_name => 'B',:building_name => '1',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2003',:wing_name => 'B',:building_name => '1',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2004',:wing_name => 'B',:building_name => '1',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2005',:wing_name => 'B',:building_name => '1',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2006',:wing_name => 'B',:building_name => '1',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2002',:wing_name => 'B',:building_name => '1',:floor_name => '20',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '2001',:wing_name => 'B',:building_name => '1',:floor_name => '20',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '101',:wing_name => 'B',:building_name => '1',:floor_name => '1',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '102',:wing_name => 'B',:building_name => '1',:floor_name => '1',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '103',:wing_name => 'B',:building_name => '1',:floor_name => '1',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '104',:wing_name => 'B',:building_name => '1',:floor_name => '1',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '105',:wing_name => 'B',:building_name => '1',:floor_name => '1',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '106',:wing_name => 'B',:building_name => '1',:floor_name => '1',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '201',:wing_name => 'B',:building_name => '1',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '202',:wing_name => 'B',:building_name => '1',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '203',:wing_name => 'B',:building_name => '1',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '204',:wing_name => 'B',:building_name => '1',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '205',:wing_name => 'B',:building_name => '1',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '206',:wing_name => 'B',:building_name => '1',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '301',:wing_name => 'B',:building_name => '1',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '302',:wing_name => 'B',:building_name => '1',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '303',:wing_name => 'B',:building_name => '1',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '304',:wing_name => 'B',:building_name => '1',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '305',:wing_name => 'B',:building_name => '1',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '306',:wing_name => 'B',:building_name => '1',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '401',:wing_name => 'B',:building_name => '1',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '402',:wing_name => 'B',:building_name => '1',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '403',:wing_name => 'B',:building_name => '1',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '404',:wing_name => 'B',:building_name => '1',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '405',:wing_name => 'B',:building_name => '1',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '406',:wing_name => 'B',:building_name => '1',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '501',:wing_name => 'B',:building_name => '1',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '502',:wing_name => 'B',:building_name => '1',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '503',:wing_name => 'B',:building_name => '1',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '504',:wing_name => 'B',:building_name => '1',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '505',:wing_name => 'B',:building_name => '1',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '506',:wing_name => 'B',:building_name => '1',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '601',:wing_name => 'B',:building_name => '1',:floor_name => '6',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '602',:wing_name => 'B',:building_name => '1',:floor_name => '6',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '603',:wing_name => 'B',:building_name => '1',:floor_name => '6',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '604',:wing_name => 'B',:building_name => '1',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '605',:wing_name => 'B',:building_name => '1',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '606',:wing_name => 'B',:building_name => '1',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '701',:wing_name => 'B',:building_name => '1',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '702',:wing_name => 'B',:building_name => '1',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '703',:wing_name => 'B',:building_name => '1',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '704',:wing_name => 'B',:building_name => '1',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '705',:wing_name => 'B',:building_name => '1',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '706',:wing_name => 'B',:building_name => '1',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '801',:wing_name => 'B',:building_name => '1',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '802',:wing_name => 'B',:building_name => '1',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '803',:wing_name => 'B',:building_name => '1',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '804',:wing_name => 'B',:building_name => '1',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '805',:wing_name => 'B',:building_name => '1',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '806',:wing_name => 'B',:building_name => '1',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '901',:wing_name => 'B',:building_name => '1',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '902',:wing_name => 'B',:building_name => '1',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '903',:wing_name => 'B',:building_name => '1',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '904',:wing_name => 'B',:building_name => '1',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '905',:wing_name => 'B',:building_name => '1',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '906',:wing_name => 'B',:building_name => '1',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '1703',:wing_name => 'A',:building_name => '2',:floor_name => '17',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '1704',:wing_name => 'A',:building_name => '2',:floor_name => '17',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1702',:wing_name => 'A',:building_name => '2',:floor_name => '17',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1701',:wing_name => 'A',:building_name => '2',:floor_name => '17',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1705',:wing_name => 'A',:building_name => '2',:floor_name => '17',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1706',:wing_name => 'A',:building_name => '2',:floor_name => '17',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1603',:wing_name => 'A',:building_name => '2',:floor_name => '16',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1604',:wing_name => 'A',:building_name => '2',:floor_name => '16',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1602',:wing_name => 'A',:building_name => '2',:floor_name => '16',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1601',:wing_name => 'A',:building_name => '2',:floor_name => '16',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1605',:wing_name => 'A',:building_name => '2',:floor_name => '16',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1606',:wing_name => 'A',:building_name => '2',:floor_name => '16',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1503',:wing_name => 'A',:building_name => '2',:floor_name => '15',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1504',:wing_name => 'A',:building_name => '2',:floor_name => '15',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1502',:wing_name => 'A',:building_name => '2',:floor_name => '15',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1501',:wing_name => 'A',:building_name => '2',:floor_name => '15',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1505',:wing_name => 'A',:building_name => '2',:floor_name => '15',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1506',:wing_name => 'A',:building_name => '2',:floor_name => '15',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1403',:wing_name => 'A',:building_name => '2',:floor_name => '14',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1404',:wing_name => 'A',:building_name => '2',:floor_name => '14',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1402',:wing_name => 'A',:building_name => '2',:floor_name => '14',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1401',:wing_name => 'A',:building_name => '2',:floor_name => '14',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1405',:wing_name => 'A',:building_name => '2',:floor_name => '14',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1406',:wing_name => 'A',:building_name => '2',:floor_name => '14',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1303',:wing_name => 'A',:building_name => '2',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1304',:wing_name => 'A',:building_name => '2',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1302',:wing_name => 'A',:building_name => '2',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1301',:wing_name => 'A',:building_name => '2',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1305',:wing_name => 'A',:building_name => '2',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1306',:wing_name => 'A',:building_name => '2',:floor_name => '13',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1203',:wing_name => 'A',:building_name => '2',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1204',:wing_name => 'A',:building_name => '2',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1202',:wing_name => 'A',:building_name => '2',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1201',:wing_name => 'A',:building_name => '2',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1205',:wing_name => 'A',:building_name => '2',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1206',:wing_name => 'A',:building_name => '2',:floor_name => '12',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1103',:wing_name => 'A',:building_name => '2',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1104',:wing_name => 'A',:building_name => '2',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1102',:wing_name => 'A',:building_name => '2',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1101',:wing_name => 'A',:building_name => '2',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1105',:wing_name => 'A',:building_name => '2',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1106',:wing_name => 'A',:building_name => '2',:floor_name => '11',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1003',:wing_name => 'A',:building_name => '2',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1004',:wing_name => 'A',:building_name => '2',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1002',:wing_name => 'A',:building_name => '2',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1001',:wing_name => 'A',:building_name => '2',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1005',:wing_name => 'A',:building_name => '2',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1006',:wing_name => 'A',:building_name => '2',:floor_name => '10',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1803',:wing_name => 'A',:building_name => '2',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1804',:wing_name => 'A',:building_name => '2',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1802',:wing_name => 'A',:building_name => '2',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1801',:wing_name => 'A',:building_name => '2',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1805',:wing_name => 'A',:building_name => '2',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1806',:wing_name => 'A',:building_name => '2',:floor_name => '18',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1903',:wing_name => 'A',:building_name => '2',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1904',:wing_name => 'A',:building_name => '2',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1902',:wing_name => 'A',:building_name => '2',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1901',:wing_name => 'A',:building_name => '2',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1905',:wing_name => 'A',:building_name => '2',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '1906',:wing_name => 'A',:building_name => '2',:floor_name => '19',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2003',:wing_name => 'A',:building_name => '2',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2004',:wing_name => 'A',:building_name => '2',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2005',:wing_name => 'A',:building_name => '2',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2006',:wing_name => 'A',:building_name => '2',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2002',:wing_name => 'A',:building_name => '2',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '2001',:wing_name => 'A',:building_name => '2',:floor_name => '20',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '101',:wing_name => 'A',:building_name => '2',:floor_name => '1',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '102',:wing_name => 'A',:building_name => '2',:floor_name => '1',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '103',:wing_name => 'A',:building_name => '2',:floor_name => '1',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '104',:wing_name => 'A',:building_name => '2',:floor_name => '1',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '105',:wing_name => 'A',:building_name => '2',:floor_name => '1',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '106',:wing_name => 'A',:building_name => '2',:floor_name => '1',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '201',:wing_name => 'A',:building_name => '2',:floor_name => '2',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '202',:wing_name => 'A',:building_name => '2',:floor_name => '2',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '203',:wing_name => 'A',:building_name => '2',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '204',:wing_name => 'A',:building_name => '2',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '205',:wing_name => 'A',:building_name => '2',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '206',:wing_name => 'A',:building_name => '2',:floor_name => '2',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '301',:wing_name => 'A',:building_name => '2',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '302',:wing_name => 'A',:building_name => '2',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '303',:wing_name => 'A',:building_name => '2',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '304',:wing_name => 'A',:building_name => '2',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '305',:wing_name => 'A',:building_name => '2',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '306',:wing_name => 'A',:building_name => '2',:floor_name => '3',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '401',:wing_name => 'A',:building_name => '2',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '402',:wing_name => 'A',:building_name => '2',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '403',:wing_name => 'A',:building_name => '2',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '404',:wing_name => 'A',:building_name => '2',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '405',:wing_name => 'A',:building_name => '2',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '406',:wing_name => 'A',:building_name => '2',:floor_name => '4',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '501',:wing_name => 'A',:building_name => '2',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '502',:wing_name => 'A',:building_name => '2',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '503',:wing_name => 'A',:building_name => '2',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '504',:wing_name => 'A',:building_name => '2',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '505',:wing_name => 'A',:building_name => '2',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '506',:wing_name => 'A',:building_name => '2',:floor_name => '5',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '601',:wing_name => 'A',:building_name => '2',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '602',:wing_name => 'A',:building_name => '2',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '603',:wing_name => 'A',:building_name => '2',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '604',:wing_name => 'A',:building_name => '2',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '605',:wing_name => 'A',:building_name => '2',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '606',:wing_name => 'A',:building_name => '2',:floor_name => '6',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '701',:wing_name => 'A',:building_name => '2',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '702',:wing_name => 'A',:building_name => '2',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '703',:wing_name => 'A',:building_name => '2',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '704',:wing_name => 'A',:building_name => '2',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '705',:wing_name => 'A',:building_name => '2',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '706',:wing_name => 'A',:building_name => '2',:floor_name => '7',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '801',:wing_name => 'A',:building_name => '2',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '802',:wing_name => 'A',:building_name => '2',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '803',:wing_name => 'A',:building_name => '2',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '804',:wing_name => 'A',:building_name => '2',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '805',:wing_name => 'A',:building_name => '2',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '806',:wing_name => 'A',:building_name => '2',:floor_name => '8',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '901',:wing_name => 'A',:building_name => '2',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '902',:wing_name => 'A',:building_name => '2',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '903',:wing_name => 'A',:building_name => '2',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '904',:wing_name => 'A',:building_name => '2',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '905',:wing_name => 'A',:building_name => '2',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '906',:wing_name => 'A',:building_name => '2',:floor_name => '9',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '1703',:wing_name => 'B',:building_name => '2',:floor_name => '17',:unit_type_id => 10,:society_id => 1)
      Unit.create(:unit_number => '1704',:wing_name => 'B',:building_name => '2',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1702',:wing_name => 'B',:building_name => '2',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1701',:wing_name => 'B',:building_name => '2',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1705',:wing_name => 'B',:building_name => '2',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1706',:wing_name => 'B',:building_name => '2',:floor_name => '17',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1603',:wing_name => 'B',:building_name => '2',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1604',:wing_name => 'B',:building_name => '2',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1602',:wing_name => 'B',:building_name => '2',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1601',:wing_name => 'B',:building_name => '2',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1605',:wing_name => 'B',:building_name => '2',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1606',:wing_name => 'B',:building_name => '2',:floor_name => '16',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1503',:wing_name => 'B',:building_name => '2',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1504',:wing_name => 'B',:building_name => '2',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1502',:wing_name => 'B',:building_name => '2',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1501',:wing_name => 'B',:building_name => '2',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1505',:wing_name => 'B',:building_name => '2',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1506',:wing_name => 'B',:building_name => '2',:floor_name => '15',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1403',:wing_name => 'B',:building_name => '2',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1404',:wing_name => 'B',:building_name => '2',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1402',:wing_name => 'B',:building_name => '2',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1401',:wing_name => 'B',:building_name => '2',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1405',:wing_name => 'B',:building_name => '2',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1406',:wing_name => 'B',:building_name => '2',:floor_name => '14',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1303',:wing_name => 'B',:building_name => '2',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1304',:wing_name => 'B',:building_name => '2',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1302',:wing_name => 'B',:building_name => '2',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1301',:wing_name => 'B',:building_name => '2',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1305',:wing_name => 'B',:building_name => '2',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1306',:wing_name => 'B',:building_name => '2',:floor_name => '13',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1203',:wing_name => 'B',:building_name => '2',:floor_name => '12',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1204',:wing_name => 'B',:building_name => '2',:floor_name => '12',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1202',:wing_name => 'B',:building_name => '2',:floor_name => '12',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1201',:wing_name => 'B',:building_name => '2',:floor_name => '12',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1205',:wing_name => 'B',:building_name => '2',:floor_name => '12',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1206',:wing_name => 'B',:building_name => '2',:floor_name => '12',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1103',:wing_name => 'B',:building_name => '2',:floor_name => '11',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1104',:wing_name => 'B',:building_name => '2',:floor_name => '11',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1102',:wing_name => 'B',:building_name => '2',:floor_name => '11',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1101',:wing_name => 'B',:building_name => '2',:floor_name => '11',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1105',:wing_name => 'B',:building_name => '2',:floor_name => '11',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1106',:wing_name => 'B',:building_name => '2',:floor_name => '11',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1003',:wing_name => 'B',:building_name => '2',:floor_name => '10',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1004',:wing_name => 'B',:building_name => '2',:floor_name => '10',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1002',:wing_name => 'B',:building_name => '2',:floor_name => '10',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1001',:wing_name => 'B',:building_name => '2',:floor_name => '10',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1005',:wing_name => 'B',:building_name => '2',:floor_name => '10',:unit_type_id => 11,:society_id => 1)
      Unit.create(:unit_number => '1006',:wing_name => 'B',:building_name => '2',:floor_name => '10',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '1803',:wing_name => 'B',:building_name => '2',:floor_name => '18',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1804',:wing_name => 'B',:building_name => '2',:floor_name => '18',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1802',:wing_name => 'B',:building_name => '2',:floor_name => '18',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1801',:wing_name => 'B',:building_name => '2',:floor_name => '18',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1805',:wing_name => 'B',:building_name => '2',:floor_name => '18',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1806',:wing_name => 'B',:building_name => '2',:floor_name => '18',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1903',:wing_name => 'B',:building_name => '2',:floor_name => '19',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1904',:wing_name => 'B',:building_name => '2',:floor_name => '19',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1902',:wing_name => 'B',:building_name => '2',:floor_name => '19',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1901',:wing_name => 'B',:building_name => '2',:floor_name => '19',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1905',:wing_name => 'B',:building_name => '2',:floor_name => '19',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '1906',:wing_name => 'B',:building_name => '2',:floor_name => '19',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '2003',:wing_name => 'B',:building_name => '2',:floor_name => '20',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '2004',:wing_name => 'B',:building_name => '2',:floor_name => '20',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '2005',:wing_name => 'B',:building_name => '2',:floor_name => '20',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '2006',:wing_name => 'B',:building_name => '2',:floor_name => '20',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '2002',:wing_name => 'B',:building_name => '2',:floor_name => '20',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '2001',:wing_name => 'B',:building_name => '2',:floor_name => '20',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '101',:wing_name => 'B',:building_name => '2',:floor_name => '1',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '102',:wing_name => 'B',:building_name => '2',:floor_name => '1',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '103',:wing_name => 'B',:building_name => '2',:floor_name => '1',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '104',:wing_name => 'B',:building_name => '2',:floor_name => '1',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '105',:wing_name => 'B',:building_name => '2',:floor_name => '1',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '106',:wing_name => 'B',:building_name => '2',:floor_name => '1',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '201',:wing_name => 'B',:building_name => '2',:floor_name => '2',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '202',:wing_name => 'B',:building_name => '2',:floor_name => '2',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '203',:wing_name => 'B',:building_name => '2',:floor_name => '2',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '204',:wing_name => 'B',:building_name => '2',:floor_name => '2',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '205',:wing_name => 'B',:building_name => '2',:floor_name => '2',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '206',:wing_name => 'B',:building_name => '2',:floor_name => '2',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '301',:wing_name => 'B',:building_name => '2',:floor_name => '3',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '302',:wing_name => 'B',:building_name => '2',:floor_name => '3',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '303',:wing_name => 'B',:building_name => '2',:floor_name => '3',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '304',:wing_name => 'B',:building_name => '2',:floor_name => '3',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '305',:wing_name => 'B',:building_name => '2',:floor_name => '3',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '306',:wing_name => 'B',:building_name => '2',:floor_name => '3',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '401',:wing_name => 'B',:building_name => '2',:floor_name => '4',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '402',:wing_name => 'B',:building_name => '2',:floor_name => '4',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '403',:wing_name => 'B',:building_name => '2',:floor_name => '4',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '404',:wing_name => 'B',:building_name => '2',:floor_name => '4',:unit_type_id => 7,:society_id => 1)
      Unit.create(:unit_number => '405',:wing_name => 'B',:building_name => '2',:floor_name => '4',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '406',:wing_name => 'B',:building_name => '2',:floor_name => '4',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '501',:wing_name => 'B',:building_name => '2',:floor_name => '5',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '502',:wing_name => 'B',:building_name => '2',:floor_name => '5',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '503',:wing_name => 'B',:building_name => '2',:floor_name => '5',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '504',:wing_name => 'B',:building_name => '2',:floor_name => '5',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '505',:wing_name => 'B',:building_name => '2',:floor_name => '5',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '506',:wing_name => 'B',:building_name => '2',:floor_name => '5',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '601',:wing_name => 'B',:building_name => '2',:floor_name => '6',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '602',:wing_name => 'B',:building_name => '2',:floor_name => '6',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '603',:wing_name => 'B',:building_name => '2',:floor_name => '6',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '604',:wing_name => 'B',:building_name => '2',:floor_name => '6',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '605',:wing_name => 'B',:building_name => '2',:floor_name => '6',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '606',:wing_name => 'B',:building_name => '2',:floor_name => '6',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '701',:wing_name => 'B',:building_name => '2',:floor_name => '7',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '702',:wing_name => 'B',:building_name => '2',:floor_name => '7',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '703',:wing_name => 'B',:building_name => '2',:floor_name => '7',:unit_type_id => 8,:society_id => 1)
      Unit.create(:unit_number => '704',:wing_name => 'B',:building_name => '2',:floor_name => '7',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '705',:wing_name => 'B',:building_name => '2',:floor_name => '7',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '706',:wing_name => 'B',:building_name => '2',:floor_name => '7',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '801',:wing_name => 'B',:building_name => '2',:floor_name => '8',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '802',:wing_name => 'B',:building_name => '2',:floor_name => '8',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '803',:wing_name => 'B',:building_name => '2',:floor_name => '8',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '804',:wing_name => 'B',:building_name => '2',:floor_name => '8',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '805',:wing_name => 'B',:building_name => '2',:floor_name => '8',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '806',:wing_name => 'B',:building_name => '2',:floor_name => '8',:unit_type_id => 9,:society_id => 1)
      Unit.create(:unit_number => '901',:wing_name => 'B',:building_name => '2',:floor_name => '9',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '902',:wing_name => 'B',:building_name => '2',:floor_name => '9',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '903',:wing_name => 'B',:building_name => '2',:floor_name => '9',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '904',:wing_name => 'B',:building_name => '2',:floor_name => '9',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '905',:wing_name => 'B',:building_name => '2',:floor_name => '9',:unit_type_id => 6,:society_id => 1)
      Unit.create(:unit_number => '906',:wing_name => 'B',:building_name => '2',:floor_name => '9',:unit_type_id => 6,:society_id => 1)
puts 'New units for society 1 created: ' 

 unittype = UnitType.create! :type_name => "3-Bedroom", :carpet_area => 1680.78, :built_area => 1870.44, :super_built_area => 2050.80, :tax_area => 2050.80, :society_id => 1
 unittype = UnitType.create! :type_name => "4-Bedroom", :carpet_area => 1880.78, :built_area => 2070.44, :super_built_area => 2340.80, :tax_area => 2340.80, :society_id => 1
 unittype = UnitType.create! :type_name => "2-Bedroom", :carpet_area => 680.78, :built_area => 870.44, :super_built_area => 1050.80, :tax_area => 1050.80, :society_id => 1
 unittype = UnitType.create! :type_name => "Duplex", :carpet_area => 2380.78, :built_area => 2570.44, :super_built_area => 2890.80, :tax_area => 2890.80, :society_id => 2
 unittype = UnitType.create! :type_name => "Penthouse", :carpet_area => 3380.78, :built_area => 3870.44, :super_built_area => 4050.80, :tax_area => 4050.80, :society_id => 2
 unittype = UnitType.create! :type_name => "Terrace flat", :carpet_area => 1980.48, :built_area => 2270.00, :super_built_area => 2450.80, :tax_area => 2450.80, :society_id => 1
 unittype = UnitType.create! :type_name => "1-Bedroom", :carpet_area => 380.78, :built_area => 498.34, :super_built_area => 580.77, :tax_area => 580.77, :society_id => 2
 unittype = UnitType.create! :type_name => "Gala", :carpet_area => 480.78, :built_area => 605.44, :super_built_area => 845.80, :tax_area => 845.80, :society_id => 3
 unittype = UnitType.create! :type_name => "Small Gala", :carpet_area => 350.78, :built_area => 490.44, :super_built_area => 560.80, :tax_area => 560.80, :society_id => 1
 unittype = UnitType.create! :type_name => "Office", :carpet_area => 678.66, :built_area => 870.44, :super_built_area => 960.80, :tax_area => 960.80, :society_id => 2
 unittype = UnitType.create! :type_name => "Bunglow", :carpet_area => 3680.60, :built_area => 3970.44, :super_built_area => 4350.00, :tax_area => 4350.80, :society_id => 1
 unittype12 = UnitType.create! :type_name => "Tenament", :carpet_area => 2654.45, :built_area => 3000.44, :super_built_area => 3560.80, :tax_area => 3560.80, :society_id => 1
 member = Member.create! :mobile_phone => "0000000000", :name => "Name No", :society_id => 1
 member = Member.create! :mobile_phone => "9843707178", :name => "chandrakant Jain", :society_id => 2
 member = Member.create! :mobile_phone => "9543707178", :name => "User Example",  :society_id => 3
 member = Member.create! :mobile_phone => "9343707178", :name => "Sharmila Raone", :society_id => 2
 member = Member.create! :mobile_phone => "9443707178", :name => "Ujwal Jain", :society_id => 2
 member = Member.create! :mobile_phone => "9911736445", :name => "SUDHAKAR PATEL", :society_id => 3
 member = Member.create! :mobile_phone => "9811736445", :name => "Nitin Witsel", :society_id => 3
 member = Member.create! :mobile_phone => "9711736445", :name => "ABUZAR Defour", :society_id => 3
 member = Member.create! :mobile_phone => "9611736445", :name => "Reginal Patel", :society_id => 3
 member = Member.create! :mobile_phone => "9111736445", :name => "Nirmala GUPTA",   :society_id => 2
 member = Member.create! :mobile_phone => "9711736445", :name => "Laxminarayan De Camargo", :society_id => 3
puts 'New members created: ' 
#puts 'New user created: ' << user.username

  BillSetup.create(:society_id => 1,:head_name => "Property Tax", :sub_head_name => "Property Tax",:rate_sqft_month => 0.00, :rate_unit_month => 0.00, :service_tax_pct => 0.00, :days_to_discount => 0,:discount_pct => 0.00 )
  BillSetup.create(:society_id => 1,:head_name => "Sinking Fund", :sub_head_name => "Sinking Fund",:rate_sqft_month => 0.25, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Repair Fund", :sub_head_name => "Repair Fund",:rate_sqft_month => 0.75, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Maintenance Charges", :sub_head_name => "Maintenance Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Other Charges-1",  :sub_head_name => "Security Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Other Charges-2", :sub_head_name => "Water Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Other Charges-3", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Other Charges-4", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Other Charges-5",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 1,:head_name => "Other Charges-6", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Property Tax", :sub_head_name => "Property Tax",:rate_sqft_month => 0.00, :rate_unit_month => 0.00, :service_tax_pct => 0.00, :days_to_discount => 0,:discount_pct => 0.00 )
  BillSetup.create(:society_id => 2,:head_name => "Sinking Fund", :sub_head_name => "Sinking Fund",:rate_sqft_month => 0.25, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Repair Fund", :sub_head_name => "Repair Fund",:rate_sqft_month => 0.75, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Maintenance Charges", :sub_head_name => "Maintenance Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Other Charges-1",  :sub_head_name => "Lift Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Other Charges-2", :sub_head_name => "Water Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Other Charges-3", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Other Charges-4", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Other Charges-5",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 2,:head_name => "Other Charges-6", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Property Tax", :sub_head_name => "Property Tax",:rate_sqft_month => 0.00, :rate_unit_month => 0.00, :service_tax_pct => 0.00, :days_to_discount => 0,:discount_pct => 0.00 )
  BillSetup.create(:society_id => 3,:head_name => "Sinking Fund", :sub_head_name => "Sinking Fund",:rate_sqft_month => 0.25, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Repair Fund", :sub_head_name => "Repair Fund",:rate_sqft_month => 0.75, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Maintenance Charges", :sub_head_name => "Maintenance Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Other Charges-1",  :sub_head_name => "Security Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Other Charges-2", :sub_head_name => "Loft Charges",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Other Charges-3", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Other Charges-4", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Other Charges-5",:rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
  BillSetup.create(:society_id => 3,:head_name => "Other Charges-6", :rate_sqft_month => 0, :rate_unit_month => 0, :service_tax_pct => 0, :days_to_discount => 0,:discount_pct => 0.00)
puts 'New billsetup created: ' 