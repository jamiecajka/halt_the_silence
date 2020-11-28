class PoliciesController < ApplicationController
  def index
    @socials = Social.all
  end
end
