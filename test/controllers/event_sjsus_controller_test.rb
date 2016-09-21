require 'test_helper'

class EventSjsusControllerTest < ActionController::TestCase
  setup do
    @event_sjsu = event_sjsus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_sjsus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_sjsu" do
    assert_difference('EventSjsu.count') do
      post :create, event_sjsu: { body: @event_sjsu.body, title: @event_sjsu.title }
    end

    assert_redirected_to event_sjsu_path(assigns(:event_sjsu))
  end

  test "should show event_sjsu" do
    get :show, id: @event_sjsu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_sjsu
    assert_response :success
  end

  test "should update event_sjsu" do
    patch :update, id: @event_sjsu, event_sjsu: { body: @event_sjsu.body, title: @event_sjsu.title }
    assert_redirected_to event_sjsu_path(assigns(:event_sjsu))
  end

  test "should destroy event_sjsu" do
    assert_difference('EventSjsu.count', -1) do
      delete :destroy, id: @event_sjsu
    end

    assert_redirected_to event_sjsus_path
  end
end
