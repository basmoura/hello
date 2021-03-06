# Read about factories at https://github.com/thoughtbot/factory_girl
# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md

# https://github.com/stympy/faker#usage

FactoryGirl.define do


  factory :user do
    name { Faker::Name.name }
    city { Faker::Address.city  } # for dummy's customized sign up
  end

  factory :credential do
    user

    factory :classic_credential do
      strategy Credential._classic
      email    { Faker::Internet.email }
      password '1234'
    end
  end

  factory :session do
    user
    credential
    ua "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36"
  end



end
