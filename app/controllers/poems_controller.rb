class PoemsController < ApplicationController
  def index
    @poem = Poem.order("RANDOM()").first
  end

  def new
    @poem = Poem.new
  end
end
