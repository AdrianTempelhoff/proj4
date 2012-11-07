class GroupPermissionsController < ApplicationController
  # GET /group_permissions
  # GET /group_permissions.json
  def index
    @group_permissions = GroupPermission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_permissions }
    end
  end

  # GET /group_permissions/1
  # GET /group_permissions/1.json
  def show
    @group_permission = GroupPermission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_permission }
    end
  end

  # GET /group_permissions/new
  # GET /group_permissions/new.json
  def new
    @group_permission = GroupPermission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_permission }
    end
  end

  # GET /group_permissions/1/edit
  def edit
    @group_permission = GroupPermission.find(params[:id])
  end

  # POST /group_permissions
  # POST /group_permissions.json
  def create
    @group_permission = GroupPermission.new(params[:group_permission])

    respond_to do |format|
      if @group_permission.save
        format.html { redirect_to @group_permission, notice: 'Group permission was successfully created.' }
        format.json { render json: @group_permission, status: :created, location: @group_permission }
      else
        format.html { render action: "new" }
        format.json { render json: @group_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_permissions/1
  # PUT /group_permissions/1.json
  def update
    @group_permission = GroupPermission.find(params[:id])

    respond_to do |format|
      if @group_permission.update_attributes(params[:group_permission])
        format.html { redirect_to @group_permission, notice: 'Group permission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_permissions/1
  # DELETE /group_permissions/1.json
  def destroy
    @group_permission = GroupPermission.find(params[:id])
    @group_permission.destroy

    respond_to do |format|
      format.html { redirect_to group_permissions_url }
      format.json { head :no_content }
    end
  end
end
