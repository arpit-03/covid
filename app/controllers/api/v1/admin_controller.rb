module Api
	module V1
		class AdminController < ApplicationController
	skip_before_action :verify_authenticity_token

def deletepost
post_id= params[:id].to_i

Content.find(post_id).delete
end
def editpost
post_id=params[:id].to_i
content=Content.find(post_id)
data=[
title: content.title,
author: content.author,
body: content.body,
img: content.img,
date: content.date,
metakey: content.metakey,
metadesc: content.metadesc

]
return render json: data
end

end
end
end