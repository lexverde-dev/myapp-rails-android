require "test_helper"

class PaginaControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get pagina_inicio_url
    assert_response :success
  end
end
