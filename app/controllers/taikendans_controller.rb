class TaikendansController < ApplicationController
    def index
        @taikendans = Taikendan.all
    end

    def new
    @taikendans = Taikendan.new
  end

def create
    taikendan = Taikendan.new(taikendan_params)
    if taikendan.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end
def show
    @taikendan = Taikendan.find(params[:id])
  end

def edit
    @taikendan = Taikendan.find(params[:id])
  end

def update
    taikendan = Taikendan.find(params[:id])
    if taikendan.update(taikendan_params)
      redirect_to :action => "show", :id => taikendan.id
    else
      redirect_to :action => "new"
    end
  end

def destroy
    taikendan = Taikendan.find(params[:id])
    taikendan.destroy
    redirect_to action: :index
  end

private
  def taikendan_params
    params.require(:taikendan).permit(:body, :nendai, :title, :date)
  end
end
