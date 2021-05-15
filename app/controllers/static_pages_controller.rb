class StaticPagesController < ApplicationController

  def team
  end

  def contact
  end

  def index
    @gossips = Gossip.all
  end



end
