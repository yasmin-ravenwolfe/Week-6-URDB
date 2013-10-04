require "spec_helper"

describe ShowingsController do
  describe "routing" do

    it "routes to #index" do
      get("/showings").should route_to("showings#index")
    end

    it "routes to #new" do
      get("/showings/new").should route_to("showings#new")
    end

    it "routes to #show" do
      get("/showings/1").should route_to("showings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/showings/1/edit").should route_to("showings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/showings").should route_to("showings#create")
    end

    it "routes to #update" do
      put("/showings/1").should route_to("showings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/showings/1").should route_to("showings#destroy", :id => "1")
    end

  end
end
