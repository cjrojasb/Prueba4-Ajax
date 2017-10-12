class DashboardsController < ApplicationController
  def index
    @companies = Company.all.count
    @comments = Comment.all.count
    @users = User.all.count
  end
end
