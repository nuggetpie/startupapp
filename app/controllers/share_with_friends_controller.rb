class ShareWithFriendsController < ApplicationController
  before_action :set_share_with_friend, only: [:show, :edit, :update, :destroy]

  # GET /share_with_friends
  # GET /share_with_friends.json
  def index
    @share_with_friends = ShareWithFriend.all
  end

  # GET /share_with_friends/1
  # GET /share_with_friends/1.json
  def show
  end

  # GET /share_with_friends/new
  def new
    @share_with_friend = ShareWithFriend.new
  end

  # GET /share_with_friends/1/edit
  def edit
  end

  # POST /share_with_friends
  # POST /share_with_friends.json
  def create
    @share_with_friend = ShareWithFriend.new(share_with_friend_params)

    respond_to do |format|
      if @share_with_friend.save
        format.html { redirect_to @share_with_friend, notice: 'Share with friend was successfully created.' }
        format.json { render :show, status: :created, location: @share_with_friend }
      else
        format.html { render :new }
        format.json { render json: @share_with_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /share_with_friends/1
  # PATCH/PUT /share_with_friends/1.json
  def update
    respond_to do |format|
      if @share_with_friend.update(share_with_friend_params)
        format.html { redirect_to @share_with_friend, notice: 'Share with friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @share_with_friend }
      else
        format.html { render :edit }
        format.json { render json: @share_with_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /share_with_friends/1
  # DELETE /share_with_friends/1.json
  def destroy
    @share_with_friend.destroy
    respond_to do |format|
      format.html { redirect_to share_with_friends_url, notice: 'Share with friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share_with_friend
      @share_with_friend = ShareWithFriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_with_friend_params
      params.require(:share_with_friend).permit(:friends_id, :collection_name_id, :shop_name_id, :shop_product_id)
    end
end
