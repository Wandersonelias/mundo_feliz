require 'test_helper'

class TipoProdutosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tipo_produtos_index_url
    assert_response :success
  end

end
