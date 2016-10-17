require 'rails_helper'

RSpec.describe "usuarios/new", type: :view do
  before(:each) do
    assign(:usuario, Usuario.new(
      :name => "MyString",
      :email => "MyString",
      :access_token => "MyString",
      :uid => "MyString",
      :photo_url => "MyString",
      :provider => "MyString",
      :status => false,
      :reason => "MyString",
      :user_type => "1"
    ))
  end

  it "renders new usuario form" do
    render

    assert_select "form[action=?][method=?]", usuarios_path, "post" do

      assert_select "input#usuario_name[name=?]", "usuario[name]"

      assert_select "input#usuario_email[name=?]", "usuario[email]"

      assert_select "input#usuario_access_token[name=?]", "usuario[access_token]"

      assert_select "input#usuario_provider[name=?]", "usuario[provider]"

      assert_select "input#usuario_status[name=?]", "usuario[status]"

      assert_select "input#usuario_user_type_1[name=?]", "usuario[user_type]"
      
      assert_select "input#usuario_user_type_2[name=?]", "usuario[user_type]"
    end
  end
end
