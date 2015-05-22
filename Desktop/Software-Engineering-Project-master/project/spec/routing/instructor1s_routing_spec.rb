require "spec_helper"

describe Instructor1sController do
  describe "routing" do

    it "routes to #index" do
      get("/instructor1s").should route_to("instructor1s#index")
    end

    it "routes to #new" do
      get("/instructor1s/new").should route_to("instructor1s#new")
    end

    it "routes to #show" do
      get("/instructor1s/1").should route_to("instructor1s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/instructor1s/1/edit").should route_to("instructor1s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/instructor1s").should route_to("instructor1s#create")
    end

    it "routes to #update" do
      put("/instructor1s/1").should route_to("instructor1s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/instructor1s/1").should route_to("instructor1s#destroy", :id => "1")
    end

  end
end
