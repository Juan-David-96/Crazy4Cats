class ReactionsController < ApplicationController
    before_action :authenticate_user!
  
    def user_reaction
      @user = current_user
      @post = Post.find(params[:post_id])
      
      # Encuentra la reacción actual del usuario en el post
      reaction = @post.reactions.find_by(user_id: @user.id)
    
      # Si el usuario ya tiene una reacción, la eliminamos
      if reaction
        reaction.destroy
      end
      
      # Creamos la nueva reacción
      @new_reaction = Reaction.new(user_id: @user.id, post_id: @post.id, kind: params[:kind])
      
      respond_to do |format|
        if @new_reaction.save
          format.html { redirect_to post_path(@post), notice: "#{current_user.email} ha reaccionado con #{@new_reaction.kind} al post." }
        else
          format.html { redirect_to post_path(@post), status: :unprocessable_entity }
        end
      end
    end

    def post_with_reactions
        @reactions = current_user.reactions
        post_ids = @reactions.map(&:post_id)
        @post = Post.where(id: post_ids)
    end

    def destroy
      @post = Post.find(params[:post_id])
      @reaction = @post.reactions.find_by(user_id: current_user.id)
  
      if @reaction
        @reaction.destroy
        flash[:notice] = 'Reacción eliminada con éxito.'
      else
        flash[:alert] = 'No se encontró la reacción para eliminar.'
      end
  
      redirect_to post_path(@post)
    end
end
  

