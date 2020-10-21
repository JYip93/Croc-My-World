describe "#edit" do 
	it "let's a user edit a post" do 
		newpost
		click_link "Edit"
		fill_in "post_message", with: "Testing Article"
		click_button "Submit"
		expect(page).not_to have_content("Hello, world")
		expect(page).to have_content("Edit post")
	end 
	end 