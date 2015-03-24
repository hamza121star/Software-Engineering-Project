# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController

  def index
    @all_ratings = Movie.all_ratings
    # Part three here --> Adding sessions
    if (params[:ratings]==nil and params[:sort] and params[:ratingFilter]==nil and (session[:ratings]!=nil or session[:sort]!=nil or session[:ratingFilter]!=nil))
     if (session[:ratingFilter]!=nil and params[:ratingFilter]==nil)
      #then put param wala rating equal to  session wali rating
      params[:ratingFilter] = session[:ratingFilter]
     end 
     if (session[:ratings]!=nil and params[:ratings]==nil)
      params[:ratings] = session[:ratings]
     end
     if (session[:sort]!=nil and params[:sort]==nil)
      #then put params wala sort equal to session wala sort
      params[:sort] = session[:sort]
     end     
    flash.keep  
    redirect_to movies_path(:ratingFilter => params[:ratingFilter],:sort=>session[:sort], :ratings=>params[:ratings])
    else 
      session[:sort]=params[:sort]
      session[:ratings]=params[:ratings]
      if (params[:ratingFilter]!= "[]" and params[:ratingFilter]!=nil)
        @checked_ratings = params[:ratingFilter].scan(/[\w-]+/)
        session[:ratingFilter] = params[:ratingFilter]
      else
        if @checked_ratings = params[:ratings] then @checked_ratings = params[:ratings].keys
        else
          @checked_ratings = []
        end
        if session[:ratingFilter] = params[:ratings] then session[:ratingFilter] = params[:ratings].keys.to_s
        else 
          session[:ratingFilter] = nil
        end
      end
      
      # In case argument/param is title
      if (params[:sort] == "title")
        if (params[:ratingsFilter] or params[:ratings] or params[:sort])
          @movies = Movie.find(:all, :conditions => {:rating => (@checked_ratings==[] ? @all_ratings : @checked_ratings)}, :order => "title")
        else
          @movies = Movie.find(:all, :order => "title")
        end
      end
      ## Sort by release date 
      if (params[:sort] == "release_date")
        if (params[:ratingFilter] or params[:ratings])
          @movies = Movie.find(:all, :conditions => {:rating => (@checked_ratings==[] ? @all_ratings : @checked_ratings)}, :order => "release_date")
        else
          @movies = Movie.find(:all, :order => "release_date")
        end
      end
      ## sort by rating  
      if (params[:sort] == "rating")
        if (params[:ratingFilter] or params[:ratings])
          @movies = Movie.find(:all, :conditions => {:rating => (@checked_ratings==[] ? @all_ratings : @checked_ratings)}, :order => "rating")
        else
          @movies = Movie.find(:all, :order => "rating")
        end
      end
      ## no conditions  
      if (params[:sort] == nil)
        if (params[:ratingFilter] or params[:ratings])
          @movies = Movie.find(:all, :conditions => {:rating => (@checked_ratings==[] ? @all_ratings : @checked_ratings)})
        else
          @movies = Movie.all
        end
      end
    end
  end 

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # Look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
