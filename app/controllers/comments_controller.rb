class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
    
  def create
    @comment = Comment.new(comments_params)
    
    if @comment.save
      redirect_to favorite_path, success: "コメントをしました"
    else
      flash.now[:danger] = "コメントできませんでした"
      render :new
    end
  end
   private
    def comments_params
      params.require(:comment).permit(:body)
    end
  
  
  
   
end    