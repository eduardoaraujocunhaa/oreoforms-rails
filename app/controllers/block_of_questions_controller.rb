class BlockOfQuestionsController < ApplicationController
  before_action :set_block_of_question, only: [:show, :edit, :update, :destroy]

  # GET /block_of_questions
  # GET /block_of_questions.json
  def index
    @block_of_questions = BlockOfQuestion.all
  end

  # GET /block_of_questions/1
  # GET /block_of_questions/1.json
  def show
  end

  # GET /block_of_questions/new
  def new
    @block_of_question = BlockOfQuestion.new
  end

  # GET /block_of_questions/1/edit
  def edit
  end

  # POST /block_of_questions
  # POST /block_of_questions.json
  def create
    @block_of_question = BlockOfQuestion.new(block_of_question_params)

    respond_to do |format|
      if @block_of_question.save
        format.html { redirect_to @block_of_question, notice: 'Block of question was successfully created.' }
        format.json { render :show, status: :created, location: @block_of_question }
      else
        format.html { render :new }
        format.json { render json: @block_of_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /block_of_questions/1
  # PATCH/PUT /block_of_questions/1.json
  def update
    respond_to do |format|
      if @block_of_question.update(block_of_question_params)
        format.html { redirect_to @block_of_question, notice: 'Block of question was successfully updated.' }
        format.json { render :show, status: :ok, location: @block_of_question }
      else
        format.html { render :edit }
        format.json { render json: @block_of_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_of_questions/1
  # DELETE /block_of_questions/1.json
  def destroy
    @block_of_question.destroy
    respond_to do |format|
      format.html { redirect_to block_of_questions_url, notice: 'Block of question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block_of_question
      @block_of_question = BlockOfQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_of_question_params
      params.require(:block_of_question).permit(:option)
    end
end
