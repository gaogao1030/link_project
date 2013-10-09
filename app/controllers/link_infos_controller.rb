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
end
