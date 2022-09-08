class GroupController < ApplicationController
  load_and_authorize_resource

  def index
    @groups = current_user.groups
  end

  def new; end

  def create
    @user = current_user
    @group = @user.groups.create(group_params)
    if @group.save
      flash[:notice] = 'New category created successfully'
      redirect_to group_index_path
    else
      flash.now[:alert] = 'Category creation failed'
      render action: 'new'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
