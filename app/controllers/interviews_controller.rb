class InterviewsController < ApplicationController
  before_action :set_questionary, only: [:apply]

  # GET /questions/1
  # GET /questions/1.json
  def apply
    @answer = Answer.new
    @questions = Question.where(id: @questionary.question_ids)
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
