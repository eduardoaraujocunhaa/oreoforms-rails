class KindOfQuestionsController < ApplicationController
  before_action :set_kind_of_question, only: [:show, :edit, :update, :destroy]

  # GET /kind_of_questions
  # GET /kind_of_questions.json
  def index
    @kind_of_questions = KindOfQuestion.all
  end

  # GET /kind_of_questions/1
  # GET /kind_of_questions/1.json
  def show
  end

  # GET /kind_of_questions/new
  def new
    @kind_of_question = KindOfQuestion.new
  end

  # GET /kind_of_questions/1/edit
  def edit
  end

  # POST /kind_of_questions
  # POST /kind_of_questions.json
  def create
    @kind_of_question = KindOfQuestion.new(kind_of_question_params)

    respond_to do |format|
      if @kind_of_question.save
        format.html { redirect_to @kind_of_question, notice: 'Kind of question was successfully created.' }
        format.json { render :show, status: :created, location: @kind_of_question }
      else
        format.html { render :new }
        format.json { render json: @kind_of_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kind_of_questions/1
  # PATCH/PUT /kind_of_questions/1.json
  def update
    respond_to do |format|
      if @kind_of_question.update(kind_of_question_params)
        format.html { redirect_to @kind_of_question, notice: 'Kind of question was successfully updated.' }
        format.json { render :show, status: :ok, location: @kind_of_question }
      else
        format.html { render :edit }
        format.json { render json: @kind_of_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kind_of_questions/1
  # DELETE /kind_of_questions/1.json
  def destroy
    @kind_of_question.destroy
    respond_to do |format|
      format.html { redirect_to kind_of_questions_url, notice: 'Kind of question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind_of_question
      @kind_of_question = KindOfQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kind_of_question_params
      params.require(:kind_of_question).permit(:kind_name)
    end
end
