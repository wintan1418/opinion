class LikesController < ApplicationController
    before_action :find_opinion
    before_action :find_like, only: [:destroy]


    def create
        if already_liked?
            flash[:notice] = "you can't like more than once"
        else
            @opinion.likes.create(user_id: current_user.id )
        end
        redirect_to opinion_path(@opinion)
    end

    def destroy
        if !(already_liked?)
            flash[:notice] = "cannot unlike"
        else
            @like.destroy
        end
        redirect_to opinion_path(@opinion)
    end
    private

    def find_opinion
        @opinion = Opinion.find_by(id: params[:id])
    end

    def already_liked?
        Like.where(user_id: current_user.id, opinion_id:
        params[:opinion_id]).exists?
    end

    def find_like
        @like = @opinion.likes.find(params[:id])
    end

end