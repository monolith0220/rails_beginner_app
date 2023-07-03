class QuestionsController < ApplicationController
  # indexアクション
  def index
    @test = "Rails: 質問投稿"
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  # createアクションの目的は、データベースにデータを保存すること
  def create
    # Question.new(question_params)でフォームから送られてきた値を使ってインスタンスを作り@questionに代入
    @question = Question.new(question_params)
    # データベースに保存
    if @question.save
      flash[:notice] = "成功"
      redirect_to "/questions/#{@question.id}"
    else
      flash.now[:alert] = "失敗"
      # views/questions/new.html.erbファイルを、画面に表示
      redirect_to action: :new
    end
  end

  # ストロングパラメータ
  private
    def question_params
      params.require(:question).permit(:title, :body)
    end
end
