# frozen_string_literal: true

def add_new_post 
	click_link "New post"
	fill_in "Message", with: "Hello, world!"
	click_button "Submit"
end 

def sign_up
  visit '/'
  click_on 'Sign up'
  fill_in 'Name', with: 'Test'
  fill_in 'Email', with: 'user@test.com'
  fill_in 'Password', with: 'password'
  fill_in 'Password confirmation', with: 'password'
  click_on 'Confirm'
end

