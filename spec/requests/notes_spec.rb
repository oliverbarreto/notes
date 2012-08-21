require 'spec_helper'

describe "Notes" do

  describe "GET /notes" do
    it "should list the notes" do
    	@note = Note.create :title => '1', :text => 'Pokemons'
    	visit notes_path
    	page.should have_content 'Pokemons'
    	#save_and_open_page
    end
  end

end
