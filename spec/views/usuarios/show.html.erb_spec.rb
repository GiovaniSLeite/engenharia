require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :name => "Name",
      :email => "email@example.com",
      :access_token => "Access Token",
      :uid => "Uid",
      :photo_url => "Photo Url",
      :provider => "facebook",
      :status => false,
      :reason => "Reason",
      :user_type => "2"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match("email@example.com")
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Inativo/)
    expect(rendered).to match(/Reason/)
    expect(rendered).to match(/Apostador/)
  end
end
