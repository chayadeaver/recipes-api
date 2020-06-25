class Api::V1::CommentsController < ApplicationController

    def index
        @comments = Comment.all 
        render json: CommentSerializer.new(@comments).serializable_hash, status: :ok
    end


end
