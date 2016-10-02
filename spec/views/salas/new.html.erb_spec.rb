require 'rails_helper'

RSpec.describe "salas/new", type: :view do
  before(:each) do
    assign(:sala, Sala.new(
      :name => "MyString",
      :description => "MyString",
      :idOwner => 1,
      :sala_type => 1,
      :reward => "MyString",
      :stake => 1
    ))
  end

  it "renders new sala form" do
    render

    assert_select "form[action=?][method=?]", salas_path, "post" do

      assert_select "input#sala_name[name=?]", "sala[name]"

      assert_select "input#sala_description[name=?]", "sala[description]"

      assert_select "input#sala_idOwner[name=?]", "sala[idOwner]"

      assert_select "input#sala_sala_type[name=?]", "sala[sala_type]"

      assert_select "input#sala_reward[name=?]", "sala[reward]"

      assert_select "input#sala_stake[name=?]", "sala[stake]"
    end
  end
end
