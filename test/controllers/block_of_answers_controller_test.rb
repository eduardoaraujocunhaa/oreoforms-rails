require 'test_helper'

class BlockOfAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @block_of_answer = block_of_answers(:one)
  end

  test "should get index" do
    get block_of_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_block_of_answer_url
    assert_response :success
  end

  test "should create block_of_answer" do
    assert_difference('BlockOfAnswer.count') do
      post block_of_answers_url, params: { block_of_answer: { answer_id: @block_of_answer.answer_id, numberofoption: @block_of_answer.numberofoption, text: @block_of_answer.text } }
    end

    assert_redirected_to block_of_answer_url(BlockOfAnswer.last)
  end

  test "should show block_of_answer" do
    get block_of_answer_url(@block_of_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_block_of_answer_url(@block_of_answer)
    assert_response :success
  end

  test "should update block_of_answer" do
    patch block_of_answer_url(@block_of_answer), params: { block_of_answer: { answer_id: @block_of_answer.answer_id, numberofoption: @block_of_answer.numberofoption, text: @block_of_answer.text } }
    assert_redirected_to block_of_answer_url(@block_of_answer)
  end

  test "should destroy block_of_answer" do
    assert_difference('BlockOfAnswer.count', -1) do
      delete block_of_answer_url(@block_of_answer)
    end

    assert_redirected_to block_of_answers_url
  end
end
