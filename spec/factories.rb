FactoryGirl.define do 
	factory :user do			# automatically uses model class User
		sequence(:name)  { |n| "Person #{n}" }
		sequence(:email) { |n| "person_#{n}@example.com" } 
		# name "LeRoy Mattingly"
		# email "leroy@xxx.com"
		password "foobar"
		password_confirmation "foobar"

		factory :admin do
			admin true
		end
	end
end
