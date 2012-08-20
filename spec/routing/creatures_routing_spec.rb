require "spec_helper"

describe CreaturesController do
  describe "routing" do

    it "routes to #index" do
      get("/creatures").should route_to("creatures#index")
    end

    it "routes to #new" do
      get("/creatures/new").should route_to("creatures#new")
    end

    it "routes to #show" do
      get("/creatures/1").should route_to("creatures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/creatures/1/edit").should route_to("creatures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/creatures").should route_to("creatures#create")
    end

    it "routes to #update" do
      put("/creatures/1").should route_to("creatures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/creatures/1").should route_to("creatures#destroy", :id => "1")
    end

  end
end
