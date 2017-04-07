#controller
class BlogController < ApplicationController
    def index
        @posts = Post.all #Post에서 저장한 모든 것을 가져오겠다
    end
    
    def post
        post = Post.new  # Post라는 데이타베이스가 생김 데이타베이스 만들때는 대문자로 시작
        post.title = params[:title]  # params가 내용을 찾아줌
        post.content = params[:content]
        post.save
        
        redirect_to '/'  #index view 에서 action으로 대응된다 /으로 돌려보내겠다
    end
end
