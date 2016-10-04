require 'rails_helper'

RSpec.describe "aposta/new", type: :view do
  before(:each) do
    assign(:apostum, Apostum.new(
      :t.integer => "MyString",
      :idSala => "MyString",
      :t.integer => "",
      :t.string => ""
    ))
  end

  it "renders new apostum form" do
    render

    assert_select "form[action=?][method=?]", aposta_path, "post" do

      assert_select "input#apostum_t.integer[name=?]", "apostum[t.integer]"

      assert_select "input#apostum_idSala[name=?]", "apostum[idSala]"

      assert_select "input#apostum_t.integer[name=?]", "apostum[t.integer]"

      assert_select "input#apostum_t.string[name=?]", "apostum[t.string]"
    end
  end
end
