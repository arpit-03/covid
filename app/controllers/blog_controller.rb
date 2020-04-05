class BlogController < ApplicationController
  include ActionText::Attachable
  def index
  @contents=Content.limit(10)
  end
  def contentpage
@id=params[:id]
@data=Content.find(@id)

  end
end
