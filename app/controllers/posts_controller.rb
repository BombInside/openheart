class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        
        if @post.save
            redirect_to @post, notice: "Запись добавлена"
        else
            render 'new', notice: "Проверьте правильность заполнения полей. <br> Запись не создана"
        end
    end
    
    def show
    end
    
    def edit

    end
    
    def update
        if @post.update post_params
            redirect_to @post, notice: "Обновление записи успешно!"
        else
            render 'edit'
        end
    end
    
    def destroy
        @post.destroy
        redirect_to posts_path
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :content)
    end
    
    def find_post
        @post = Post.find(params[:id])
    end
end
