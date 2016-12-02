require 'test_helper'

class GameWordsControllerTest < ActionController::TestCase
  setup do
    @game_word = game_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_word" do
    assert_difference('GameWord.count') do
      post :create, game_word: { game_id: @game_word.game_id, text: @game_word.text, word_id: @game_word.word_id }
    end

    assert_redirected_to game_word_path(assigns(:game_word))
  end

  test "should show game_word" do
    get :show, id: @game_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_word
    assert_response :success
  end

  test "should update game_word" do
    patch :update, id: @game_word, game_word: { game_id: @game_word.game_id, text: @game_word.text, word_id: @game_word.word_id }
    assert_redirected_to game_word_path(assigns(:game_word))
  end

  test "should destroy game_word" do
    assert_difference('GameWord.count', -1) do
      delete :destroy, id: @game_word
    end

    assert_redirected_to game_words_path
  end
end
