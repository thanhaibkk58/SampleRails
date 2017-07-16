class RelationshipsController < ApplicationController
  before_action :logged_in_user

  def index
    type = params[:type]
    @title = t ".#{type}"
    @users = @user.send(params[:type]).paginate page: params[:page],
      per_page: Settings.will_paginate.users_per_page
    render "users/show_follow"
  end

  def create
    @user = User.find_by params[:followed_id]
    current_user.follow @user
    @follow = current_user.active_relationships.build
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow @user
    @unfollow = current_user.active_relationships.find_by followed_id: @user
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end
end
