require 'rails_helper'

RSpec.describe "guesses/index", type: :view do
  before(:each) do
    assign(:guesses, [
      Guess.create!(
        :bet_id => 2,
        :usuario_id => 3,
        :won_status => false,
        :guess_text => "Guess Text",
        :guess_status => 4
      ),
      Guess.create!(
        :bet_id => 2,
        :usuario_id => 3,
        :won_status => false,
        :guess_text => "Guess Text",
        :guess_status => 4
      )
    ])
  end

  it "renders a list of guesses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Guess Text".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
