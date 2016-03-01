class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def movie_params_wo_title
    params.require(:movie).permit(:rating, :description, :release_date)
  end

  def movie_params_wo_description
    params.require(:movie).permit(:title, :rating, :release_date)
  end

  def movie_params_wo_title_and_description
    params.require(:movie).permit(:title, :rating, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @movies = Movie.order(params[:sort_by])
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end
  
  def update2
    
  end
  
  def update3
    @movie = Movie.find_by_title(params[:movie1][:title])
    if @movie
      if((params[:movie][:title] == '')&(params[:movie][:description] == ''))
        @movie.update_attributes!(movie_params_wo_title_and_description)
        redirect_to movie_path(@movie)
      elsif(params[:movie][:description] == '')
        @movie.update_attributes!(movie_params_wo_description)
        redirect_to movie_path(@movie)
      elsif(params[:movie][:title] == '')
        @movie.update_attributes!(movie_params_wo_title)
        redirect_to movie_path(@movie)
      else
        @movie.update_attributes!(movie_params)
        redirect_to movie_path(@movie)
      end
    else 
      redirect_to movies_erroronupdate_path
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end
  
  def delete
    
  end
  
  def delete2
    if (params[:movie][:title] != '')
      @movie = Movie.find_by_title(params[:movie][:title])
      @movie.destroy
      flash[:notice] = "Movie '#{@movie.title}' deleted."
      redirect_to movies_path
    else
      @movie = Movie.find_by_rating(params[:movie][:rating])
      while @movie
        @movie.destroy
        flash[:notice] = "Movie '#{@movie.title}' deleted."
        @movie = Movie.find_by_rating(params[:movie][:rating])
      end
      redirect_to movies_path
    end
  end

end
