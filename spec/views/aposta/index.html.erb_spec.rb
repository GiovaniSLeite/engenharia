require 'rails_helper'

RSpec.describe "aposta/index", type: :view do
  before(:each) do
    assign(:aposta, [
      Apostum.create!(
        :t.integer => "T.Integer",
        :idSala => "Id Sala",
        :t.integer => "",
        :t.string => ""
      ),
      Apostum.create!(
        :t.integer => "T.Integer",
        :idSala => "Id Sala",
        :t.integer => "",
        :t.string => ""
      )
    ])
  end

  it "renders a list of aposta" do
    render
    assert_select "tr>td", :text => "T.Integer".to_s, :count => 2
    assert_select "tr>td", :text => "Id Sala".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
