class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create

    answers = params[:answers]

    answers.each do |answer|
      params[:answers] = answer
      @answer = Answer.new(answer_params)
      @answer.save
      if @answer.kind_of_question_id == 2
        @block_of_answer = BlockOfAnswer.find_by(answer_id: @answer.id)
        @block_of_answer.delete
        aux = answer[:block_of_answers_attributes]['0'][:n_option]
        puts aux
        aux.delete('')
        if !aux.empty?
          aux.each do |aux_ans|
            BlockOfAnswer.create(:answer_id => @answer.id, :n_option => aux_ans)
          end
        end
      end
    end

    respond_to do |format|
      # if @answer.save
        format.html { redirect_to root_path, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      # else
        # format.html { render :new }
        # format.json { render json: @answer.errors, status: :unprocessable_entity }
      # end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answers).permit(:kind_of_question_id, :id_interviewed, :n_options, :question_id, {block_of_answers_attributes: {}})
    end
end
