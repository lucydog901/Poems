class PoemsController < ApplicationController
  def index
    @poem = Poem.order("RANDOM()").first
  end
end
