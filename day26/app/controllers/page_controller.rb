class PageController < ApplicationController
  before_action :authenticate_user!, only: [:index, :movies, :cuisine, :hobbies]
  def index
  end

  def movies
  end

  def cuisine
  end

  def hobbies
  end

end
