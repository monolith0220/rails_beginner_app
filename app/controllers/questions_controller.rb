class QuestionsController < ApplicationController
  def index
    @test = "テストテキスト"
  end

  def new
    @question = Question.new
  end
end
