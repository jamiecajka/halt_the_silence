class StepsController < ApplicationController
  def index
    @steps = Step.all
  end
end
