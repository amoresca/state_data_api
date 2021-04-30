class StatesController < ApplicationController

  def map 
    render "map.html.erb"
  end

  def index
    @states = State.all
    render "index.json.jb"
  end

end
