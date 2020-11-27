class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    @socials = Social.all
    @steps = Step.all
  end
end
