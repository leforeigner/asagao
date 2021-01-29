class TopController < ApplicationController
  before_action :prepare
  def index
    @message = "おはようございます。"
  end

  def about
  end

  private
  def prepare
  end
end
