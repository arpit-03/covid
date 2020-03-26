class AdminController < ApplicationController
    def index
  	@newpage=Content.new
  	@tcontent= Content.all
  	@top3= Top3.all
  end
  def contentsave
  	Content.create(title: params[:content][:title],body: params[:content][:body] , date: params[:content][:date], author: params[:content][:author],metadesc: params[:content][:metadesc],metakey: params[:content][:metakey])
  redirect_to adminindex_path
  end
end
