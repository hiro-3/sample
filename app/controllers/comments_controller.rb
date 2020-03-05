class CommentsController < ApplicationController
 
　 def new
     @comment = Comment.new
   end

   def create
     @comment = current_user.comments.new(comment_params)
        if @comment.save
         redirect_to comments_path, success: "コメントをしました"
        else
         flash.now[:danger] = "コメントできませんでした"
          render :new
        end
   end  
         private
           def comment_params
           params.require(:comment).permit(:body, :user_id ,:topic_id)
           end 
end 
 
 



