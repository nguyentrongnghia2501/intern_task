class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]
  def home
    @user = User.all
  end
end
