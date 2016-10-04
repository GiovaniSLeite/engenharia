require 'rails_helper'

RSpec.describe "aposta/show", type: :view do
  before(:each) do
    @apostum = assign(:apostum, Apostum.create!(
      :t.integer => "T.Integer",
      :idSala => "Id Sala",
      :t.integer => "",
      :t.string => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/T.Integer/)
    expect(rendered).to match(/Id Sala/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
