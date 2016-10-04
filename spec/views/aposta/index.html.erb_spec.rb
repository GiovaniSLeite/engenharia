require 'rails_helper'

RSpec.describe "aposta/index", type: :view do
  before(:each) do
    assign(:aposta, [
      Apostum.create!(
        :idSala => 2,
        :idUser => 3,
        :palpite => "Palpite"
      ),
      Apostum.create!(
        :idSala => 2,
        :idUser => 3,
        :palpite => "Palpite"
      )
    ])
  end

  it "renders a list of aposta" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Palpite".to_s, :count => 2
  end
end
