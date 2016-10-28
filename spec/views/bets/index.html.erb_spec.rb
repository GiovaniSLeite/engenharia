require 'rails_helper'

RSpec.describe "bets/index", type: :view do
  before(:each) do
    assign(:bets, [
      Bet.create!(
        :name => "Name",
        :description => "Description",
        :ownerId => 2,
        :url_photo => "Url Photo",
        :category => "Category",
        :room_status => 3,
        :room_type => 4,
        :stake => 5,
        :final_answer => "Final Answer",
        :answer_type => "Answer Type"
      ),
      Bet.create!(
        :name => "Name",
        :description => "Description",
        :ownerId => 2,
        :url_photo => "Url Photo",
        :category => "Category",
        :room_status => 3,
        :room_type => 4,
        :stake => 5,
        :final_answer => "Final Answer",
        :answer_type => "Answer Type"
      )
    ])
  end

  it "renders a list of bets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Url Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Final Answer".to_s, :count => 2
    assert_select "tr>td", :text => "Answer Type".to_s, :count => 2
  end
end
