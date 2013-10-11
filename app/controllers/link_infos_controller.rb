class LinkInfosController < ApplicationController
	before_filter :authenticate_user!
	def new
		@link_info = current_user.link_infos.new
	end

	def create
		@link_info = current_user.link_infos.new params[:link_info]
		if @link_info.save
			redirect_to root_path
		end
	end

	def index
		@link_infos = LinkInfo.all
	end

	def show
		@link_info = LinkInfo.find(params[:id])
	end

	def edit
	@link_info = LinkInfo.find(params[:id])
	end

	def update
    if @link_info.update_attributes(params[:link_info])
      flash[:success] = "linkinfo updated"
    else
      render 'edit'
    end
  end

  def destroy
    LinkInfo.find(params[:id]).destroy
    flash[:success] = "linkinfo destroyed."
    redirect_to root_path
  end

end
