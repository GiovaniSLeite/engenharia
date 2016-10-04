require 'rails_helper'

RSpec.describe "aposta/show", type: :view do
  before(:each) do
    @apostum = assign(:apostum, Apostum.create!(
      :idSala => 2,
      :idUser => 3,
      :palpite => "Palpite"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Palpite/)
  end
end
