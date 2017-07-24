class TwitsController < ApplicationController
  before_action :set_twit, only: [:edit, :update, :destroy]

  def index
    
     if params[:back]
       @twits = Twit.all
      @twit = Twit.new(twits_params)
    else
      @twits = Twit.all
      @twit = Twit.new
    end
  end

  def new
   
   
  end

  def create
    @twits = Twit.all
    @twit=Twit.new(twits_params)
    if @twit.save
      
      redirect_to twits_path, notice: "ツイートしました！"
    else
      # 入力フォームを再描画します。
      render 'index'
    end
  end
  def edit
    
  end
  

  def update
    if @twit.update(twits_params)
      redirect_to twits_path, notice: "ツイートを更新しました！"
    else
      render 'edit'
    end
  end

  def destroy
    # edit, update, destroyで共通コード
    @twit.destroy
    redirect_to twits_path, notice: "ツイートを削除しました！"
  end
  
  def confirm
    @twit=Twit.new(twits_params)
    render :index if @twit.invalid?
  end
  
  
  private
    def twits_params
      @twits = Twit.all
      params.require(:twit).permit(:content)
    end
    
    def set_twit
      @twit = Twit.find(params[:id])
    end
end
