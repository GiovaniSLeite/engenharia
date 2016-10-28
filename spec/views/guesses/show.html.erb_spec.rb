require 'rails_helper'

RSpec.describe "guesses/show", type: :view do
  before(:each) do
    @guess = assign(:guess, Guess.create!(
      :bet_id => 2,
      :usuario_id => 3,
      :won_status => false,
      :guess_text => "Guess Text",
      :guess_status => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Guess Text/)
    expect(rendered).to match(/4/)
  end
end
