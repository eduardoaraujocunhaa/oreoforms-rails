require 'test_helper'

class KindOfQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind_of_question = kind_of_questions(:one)
  end

  test "should get index" do
    get kind_of_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_kind_of_question_url
    assert_response :success
  end

  test "should create kind_of_question" do
    assert_difference('KindOfQuestion.count') do
      post kind_of_questions_url, params: { kind_of_question: { kind_name: @kind_of_question.kind_name } }
    end

    assert_redirected_to kind_of_question_url(KindOfQuestion.last)
  end

  test "should show kind_of_question" do
    get kind_of_question_url(@kind_of_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_kind_of_question_url(@kind_of_question)
    assert_response :success
  end

  test "should update kind_of_question" do
    patch kind_of_question_url(@kind_of_question), params: { kind_of_question: { kind_name: @kind_of_question.kind_name } }
    assert_redirected_to kind_of_question_url(@kind_of_question)
  end

  test "should destroy kind_of_question" do
    assert_difference('KindOfQuestion.count', -1) do
      delete kind_of_question_url(@kind_of_question)
    end

    assert_redirected_to kind_of_questions_url
  end
end
