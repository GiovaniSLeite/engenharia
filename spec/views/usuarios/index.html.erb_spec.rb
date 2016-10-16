require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :name => "Name",
        :email => "email@example.com", #modifiquei
        :access_token => "Access Token",
        :uid => "Uid",
        :photo_url => "Photo Url",
        :provider => "Provider",
        :status => false,
        :reason => "Reason",
        :user_type => "User Type"
      ),
      Usuario.create!(
        :name => "Name",
        :email => "email@example.com", #modifiquei
        :access_token => "Access Token",
        :uid => "Uid",
        :photo_url => "Photo Url",
        :provider => "Provider",
        :status => false,
        :reason => "Reason",
        :user_type => "User Type"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2 #modifiquei "" era "Email"
    assert_select "tr>td", :text => "Access Token".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Url".to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "User Type".to_s, :count => 2
  end
end
