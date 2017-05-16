require 'test_helper'

class BlockOfQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @block_of_question = block_of_questions(:one)
  end

  test "should get index" do
    get block_of_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_block_of_question_url
    assert_response :success
  end

  test "should create block_of_question" do
    assert_difference('BlockOfQuestion.count') do
      post block_of_questions_url, params: { block_of_question: { option: @block_of_question.option, question_id: @block_of_question.question_id, text: @block_of_question.text } }
    end

    assert_redirected_to block_of_question_url(BlockOfQuestion.last)
  end

  test "should show block_of_question" do
    get block_of_question_url(@block_of_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_block_of_question_url(@block_of_question)
    assert_response :success
  end

  test "should update block_of_question" do
    patch block_of_question_url(@block_of_question), params: { block_of_question: { option: @block_of_question.option, question_id: @block_of_question.question_id, text: @block_of_question.text } }
    assert_redirected_to block_of_question_url(@block_of_question)
  end

  test "should destroy block_of_question" do
    assert_difference('BlockOfQuestion.count', -1) do
      delete block_of_question_url(@block_of_question)
    end

    assert_redirected_to block_of_questions_url
  end
end
