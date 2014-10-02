FactoryGirl.define do
  factory :user do
    name					"Factory Girl"
    email					"factory.girl@rubygems.com"
    password 				"factorygirls123"
    password_confirmation	"factorygirls123"
  end
end