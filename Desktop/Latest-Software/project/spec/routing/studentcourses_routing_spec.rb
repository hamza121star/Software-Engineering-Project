require "spec_helper"

describe StudentcoursesController do
  describe "routing" do

    it "routes to #index" do
      get("/studentcourses").should route_to("studentcourses#index")
    end

    it "routes to #new" do
      get("/studentcourses/new").should route_to("studentcourses#new")
    end

    it "routes to #show" do
      get("/studentcourses/1").should route_to("studentcourses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/studentcourses/1/edit").should route_to("studentcourses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/studentcourses").should route_to("studentcourses#create")
    end

    it "routes to #update" do
      put("/studentcourses/1").should route_to("studentcourses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/studentcourses/1").should route_to("studentcourses#destroy", :id => "1")
    end

  end
end
