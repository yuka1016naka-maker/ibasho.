class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
    def index
      if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE ? ",'%' + params[:search] + '%')
      end
    end

    def new
     @tweet = Tweet.new  
    end
  
    def create
        tweet = Tweet.new(tweet_params)

        tweet.user_id = current_user.id

        if tweet.save
          redirect_to action: "index"
        else
          redirect_to action: "new"
        end
    end

    def show
      @tweet = Tweet.find(params[:id])
      @comments = @tweet.comments
      @comment = Comment.new
    end

    def edit
      @tweet = Tweet.find(params[:id])
    
    end

    def update
      tweet = Tweet.find(params[:id])
      
      if tweet.update(tweet_params)
        redirect_to :action => "index", :id => tweet.id
      else
        redirect_to :action => "new"
      end
    end
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end
  def kanto
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end
  def tohoku
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end
  def chubu
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end
  def chugoku
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end
  def hokuriku
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end
  def shikoku
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end
  def kansai
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end

  def hokkaido
    if params[:search] == nil
        @tweets= Tweet.all

      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("naiyou LIKE :q OR jyusho LIKE :q OR schoolmei LIKE :q",
    q: "%#{params[:search]}%")
      end
  end

  def kyushu
    @tweets = Tweet.all
  end

  private
  def tweet_params
    params.require(:tweet).permit( :schoolmei, :jyusho, :naiyou, :image, :category)
  end

end
