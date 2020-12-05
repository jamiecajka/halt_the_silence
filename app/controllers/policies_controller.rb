# frozen_string_literal: true

class PoliciesController < ApplicationController
  def index
    @policies = Policy.all
  end
end
