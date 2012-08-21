require 'spec_helper'

describe "Notes" do

  describe "GET /notes" do
    it "should list the notes" do
    	@note = Note.create :title => '1', :text => 'Pokemons'
    	visit notes_path
    	page.should have_content 'Pokemons'
    	#save_and_open_page
    end

    it "should create new notes" do
    	visit edit_notes_path
    	#page.should have_selector('link','New Note')
    	fill_in 'note_title', :with => '1'
    	fill_in 'note_text', :with => 'Pokemons'
    	click_button 'Add Note'
    	current_path.should == notes_path
    	page.should have_content 'Pokemons'
    	save_and_open_page
    end
  end

end
