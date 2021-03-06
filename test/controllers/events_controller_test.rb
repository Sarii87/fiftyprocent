class EventsControllerTest < ActionController::TestCase
  test "should GET index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end
  
  test "index renders a list of events" do
    Event.create(name: "Froscon")
    get :index
    assert_select 'ul' do
      assert_select 'li', 'Froscon'
    end
  end
  
  test "displays a form for creating event" do
    get :new
    assert_response :success
    assert_not_nil assigns(:event)
  end

  test "new renders a form" do
    get :new
    #puts response.body
    assert_select 'form' do
      assert_select 'input'
    end
  end
end
