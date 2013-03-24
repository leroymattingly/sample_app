require 'spec_helper'

describe "Static Pages" do


	describe "Home page" do
		it "should have the content 'Sample App'" do			
			visit '/static_pages/home'   # capybara addition
			page.should have_selector 'h1', :text => 'Sample App'

		end

		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector 'title', 
									:text => "RoR Sample App"		
		end

		it "should have a custom page title" do
			visit '/static_pages/home'
			page.should have_selector 'title', 
									:text => "| Home"		
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do			
			visit '/static_pages/help'   # capybara addition
			page.should have_selector 'h1', :text => 'Help'
		end
	end

	describe "About Us" do
		it "should have the content 'About Us'" do			
			visit '/static_pages/about'   # capybara addition
			page.should have_content 'About Us'
		end
	end
end
