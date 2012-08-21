require 'spec_helper'

describe "Notes" do

  describe "GET /notes" do
    it "should list the notes" do
    	visit notes_path
    	page.should have_content 'Pokemons'
    end
  end

end
