class CommentsController < ApplicationController
 
   def new
      @comments = Comment.new
   end

   def create 
     @comments = current_user.comments.new(comment_params)
     if @comments.save
      redirect_to topics_path, success: "コメントをしました"
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
 
  
  
  
   
   
   
    
 



