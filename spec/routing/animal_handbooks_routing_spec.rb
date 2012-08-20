require "spec_helper"

describe AnimalHandbooksController do
  describe "routing" do

    it "routes to #index" do
      get("/animal_handbooks").should route_to("animal_handbooks#index")
    end

    it "routes to #new" do
      get("/animal_handbooks/new").should route_to("animal_handbooks#new")
    end

    it "routes to #show" do
      get("/animal_handbooks/1").should route_to("animal_handbooks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/animal_handbooks/1/edit").should route_to("animal_handbooks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/animal_handbooks").should route_to("animal_handbooks#create")
    end

    it "routes to #update" do
      put("/animal_handbooks/1").should route_to("animal_handbooks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/animal_handbooks/1").should route_to("animal_handbooks#destroy", :id => "1")
    end

  end
end
