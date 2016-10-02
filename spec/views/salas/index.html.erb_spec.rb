require 'rails_helper'

RSpec.describe "salas/index", type: :view do
  before(:each) do
    assign(:salas, [
      Sala.create!(
        :name => "Name",
        :description => "Description",
        :idOwner => 2,
        :sala_type => 3,
        :reward => "Reward",
        :stake => 4
      ),
      Sala.create!(
        :name => "Name",
        :description => "Description",
        :idOwner => 2,
        :sala_type => 3,
        :reward => "Reward",
        :stake => 4
      )
    ])
  end

  it "renders a list of salas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Reward".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
