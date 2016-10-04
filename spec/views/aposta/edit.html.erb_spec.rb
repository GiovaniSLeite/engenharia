require 'rails_helper'

RSpec.describe "aposta/edit", type: :view do
  before(:each) do
    @apostum = assign(:apostum, Apostum.create!(
      :t.integer => "MyString",
      :idSala => "MyString",
      :t.integer => "",
      :t.string => ""
    ))
  end

  it "renders the edit apostum form" do
    render

    assert_select "form[action=?][method=?]", apostum_path(@apostum), "post" do

      assert_select "input#apostum_t.integer[name=?]", "apostum[t.integer]"

      assert_select "input#apostum_idSala[name=?]", "apostum[idSala]"

      assert_select "input#apostum_t.integer[name=?]", "apostum[t.integer]"

      assert_select "input#apostum_t.string[name=?]", "apostum[t.string]"
    end
  end
end
