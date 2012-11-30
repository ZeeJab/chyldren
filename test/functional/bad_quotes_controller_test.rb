require 'test_helper'

class BadQuotesControllerTest < ActionController::TestCase
  setup do
    @bad_quote = bad_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bad_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bad_quote" do
    assert_difference('BadQuote.count') do
      post :create, bad_quote: { bad_quote: @bad_quote.bad_quote }
    end

    assert_redirected_to bad_quote_path(assigns(:bad_quote))
  end

  test "should show bad_quote" do
    get :show, id: @bad_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bad_quote
    assert_response :success
  end

  test "should update bad_quote" do
    put :update, id: @bad_quote, bad_quote: { bad_quote: @bad_quote.bad_quote }
    assert_redirected_to bad_quote_path(assigns(:bad_quote))
  end

  test "should destroy bad_quote" do
    assert_difference('BadQuote.count', -1) do
      delete :destroy, id: @bad_quote
    end

    assert_redirected_to bad_quotes_path
  end
end
