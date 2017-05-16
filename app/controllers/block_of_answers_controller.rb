class BlockOfAnswersController < ApplicationController
  before_action :set_block_of_answer, only: [:show, :edit, :update, :destroy]

  # GET /block_of_answers
  # GET /block_of_answers.json
  def index
    @block_of_answers = BlockOfAnswer.all
  end

  # GET /block_of_answers/1
  # GET /block_of_answers/1.json
  def show
  end

  # GET /block_of_answers/new
  def new
    @block_of_answer = BlockOfAnswer.new
  end

  # GET /block_of_answers/1/edit
  def edit
  end

  # POST /block_of_answers
  # POST /block_of_answers.json
  def create
    @block_of_answer = BlockOfAnswer.new(block_of_answer_params)

    respond_to do |format|
      if @block_of_answer.save
        format.html { redirect_to @block_of_answer, notice: 'Block of answer was successfully created.' }
        format.json { render :show, status: :created, location: @block_of_answer }
      else
        format.html { render :new }
        format.json { render json: @block_of_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /block_of_answers/1
  # PATCH/PUT /block_of_answers/1.json
  def update
    respond_to do |format|
      if @block_of_answer.update(block_of_answer_params)
        format.html { redirect_to @block_of_answer, notice: 'Block of answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @block_of_answer }
      else
        format.html { render :edit }
        format.json { render json: @block_of_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_of_answers/1
  # DELETE /block_of_answers/1.json
  def destroy
    @block_of_answer.destroy
    respond_to do |format|
      format.html { redirect_to block_of_answers_url, notice: 'Block of answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block_of_answer
      @block_of_answer = BlockOfAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_of_answer_params
      params.require(:block_of_answer).permit(:text, :numberofoption, :answer_id)
    end
end
