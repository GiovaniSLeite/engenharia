require 'rails_helper'

RSpec.describe "guesses/new", type: :view do
  before(:each) do
    assign(:guess, Guess.new(
      :bet_id => 1,
      :usuario_id => 1,
      :won_status => false,
      :guess_text => "MyString",
      :guess_status => 1
    ))
  end

  it "renders new guess form" do
    render

    assert_select "form[action=?][method=?]", guesses_path, "post" do

      assert_select "input#guess_bet_id[name=?]", "guess[bet_id]"

      assert_select "input#guess_usuario_id[name=?]", "guess[usuario_id]"

      assert_select "input#guess_won_status[name=?]", "guess[won_status]"

      assert_select "input#guess_guess_text[name=?]", "guess[guess_text]"

      assert_select "input#guess_guess_status[name=?]", "guess[guess_status]"
    end
  end
end
