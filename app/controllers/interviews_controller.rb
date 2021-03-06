class InterviewsController < ApplicationController
  before_action :set_questionary, only: [:apply]

  # GET /questions/1
  # GET /questions/1.json
  def apply
    @questions = Question.where(id: @questionary.question_ids)
    @block_of_questions = BlockOfQuestion.where(question_id: @questionary.question_ids)
    @answer = Answer.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionary
      @questionary = Questionary.find_by(url: params[:url])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def question_params
    #   params.require(:question).permit(:enunciate, :n_options, :questionary_id, :kind_of_question_id)
    # end
end
