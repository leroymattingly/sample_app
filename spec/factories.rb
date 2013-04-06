FactoryGirl.define do 
	factory :user do			# automatically uses model class User
		name "LeRoy Mattingly"
		email "leroy@xxx.com"
		password "foobar"
		password_confirmation "foobar"
	end
end
