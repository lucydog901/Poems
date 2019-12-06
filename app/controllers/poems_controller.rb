class PoemsController < ApplicationController
  def index
    @poem = Poem.order("RANDOM()").first
  end

  def new
    @poem = Poem.new
  end

  def create
    Poem.create(poem_params)
    redirect_to root_path
  end

  private

  def poem_params
    params.require(:poem).permit(:title, :body, :author)
  end
end

