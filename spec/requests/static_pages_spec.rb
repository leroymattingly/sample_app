require 'spec_helper'

describe "Static Pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_selector 'h1', text: 'Sample App' }
	    it { should have_selector 'title', text:full_title('') }
		it { should have_selector 'title', text:full_title('Home') }
		it { should_not have_selector 'title', text: "blah" }
	end

	describe "Help page" do
		before { visit help_path }

		it { should have_selector 'h1', text: 'Help' }
		it { should have_selector 'title', text: full_title('Help') }
	end

	describe "About Us" do
		before { visit about_path } 

		it { should have_selector 'h1', text: 'About Us' }
		it { should have_selector 'title', text: full_title('About Us') }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_selector 'h1', text: 'Contact' }
		it { should have_selector 'title', text: full_title('Contact') }	
	end

	it "should have the right links on the layout" do
		visit	root_path
		click_link "About"
		page.should have_selector 'title', text: full_title('About Us')

		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')

		click_link "Contact"
		page.should have_selector 'title', text: full_title('Contact')

	end

end