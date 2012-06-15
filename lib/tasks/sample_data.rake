  namespace :db do
    desc "Fill database with sample data"
    task populate: :environment do
      make_members
      make_users
    end
  end

  def make_members

    220.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email
      person_phone = 9720552345+n
      society_id = 1
      Member.create!(name: name,
                    email_id: email,
                    mobile_phone: person_phone,
                   society_id: society_id)
    end
    267.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email
      person_phone = 8510652345+n
      society_id = 2
      Member.create!(name: name,
                    email_id: email,
                    mobile_phone: person_phone,
                   society_id: society_id)
    end
    310.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email
      person_phone = 9190012345+n
      society_id = 3
      Member.create!(name: name,
                    email_id: email,
                    mobile_phone: person_phone,
                   society_id: society_id)
    end

end

  def make_users
      310.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email 
      zip = Faker::Address.zip_code
      phone = Faker::PhoneNumber.phone_number
      bio = Faker::Company.bs
      password  = "please"
      society_id = 1
      User.create!(name:     name,
                   email:    email,
                   password: password,
                   password_confirmation: password,
                   society_id: society_id,
                   zip: zip,
                   phone_number: phone,
                   bio: bio,
                   confirmed_at: DateTime.now)
    end
    20.times do |n|
      name  = Faker::Name.name
      email = "sauser-#{n+1}@chsdesk.com"
      password  = "please"
      society_id = 1
      User.create!(name:     name,
                   email:    email,
                   password: password,
                   password_confirmation: password,
                   society_id: society_id)
    end
   
    210.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email 
      zip = Faker::Address.zip_code
      phone = Faker::PhoneNumber.phone_number
      bio = Faker::Company.bs
      password  = "please"
      society_id = 2
      User.create!(name:     name,
                   email:    email,
                   password: password,
                   password_confirmation: password,
                   society_id: society_id,
                   zip: zip,
                   phone_number: phone,
                   bio: bio,
                   confirmed_at: DateTime.now)
    end
    57.times do |n|
      name  = Faker::Name.name
      email = "oiuser-#{n+1}@chsdesk.com"
      password  = "please"
      society_id = 2
      User.create!(name:     name,
                   email:    email,
                   password: password,
                   password_confirmation: password,
                   society_id: society_id)
    end
    20.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email 
      zip = Faker::Address.zip_code
      phone = Faker::PhoneNumber.phone_number
      bio = Faker::Company.bs
      password  = "please"
      society_id = 3
      User.create!(name:     name,
                   email:    email,
                   password: password,
                   password_confirmation: password,
                   zip: zip,
                   phone_number: phone,
                   bio: bio,
                   society_id: society_id)
    end
    300.times do |n|
      name  = "BTCname-#{n+1}"
      email = "btcuser-#{n+1}@chsdesk.com"
      password  = "please"
      society_id = 3
      User.create!(name:     name,
                   email:    email,
                   password: password,
                   password_confirmation: password,
                   society_id: society_id,
                   confirmed_at: DateTime.now)
    end
end
