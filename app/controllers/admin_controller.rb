class AdminController < ApplicationController
    def index
  	@newpage=Content.new
  	@tcontent= Content.all
  	@top3= Top3.all
  end
  def contentsave
  	Content.create(title: params[:content][:title],body: params[:content][:body] , date: params[:content][:date], img: params[:content][:img] ,author: params[:content][:author],metadesc: params[:content][:metadesc],metakey: params[:content][:metakey])
  redirect_to adminindex_path
  end
  def edit
@content= Content.find(params[:id])
  end
  def contentupdate
  Content.find(params[:id]).update(title: params[:content][:title],body: params[:content][:body] , date: params[:content][:date], img: params[:content][:img] ,author: params[:content][:author],metadesc: params[:content][:metadesc],metakey: params[:content][:metakey])
  redirect_to adminindex_path
  end
def edittop3
@id=Top3.find_by(post_id: params[:id])
end
def edittop3update
	Top3.find(params[:id]).update(post_id: params[:id][:post_id])
	redirect_to adminindex_path
	end
end
