# frozen_string_literal: true

class StatementsController < ApplicationController
  after_action :allow_iframe, only: :embed
  def embed; end

  def index
    @statements = Statement.all
  end

  def show
    @statement = Statement.all
  end

  private

  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end
end
