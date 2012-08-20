require 'spec_helper'

describe "AnimalHandbooks" do
  describe "GET /animal_handbooks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get animal_handbooks_path
      response.status.should be(200)
    end
  end
end
