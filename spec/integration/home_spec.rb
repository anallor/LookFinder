describe "Home requests" do
  it 'successfully renders the index template on GET /' do
    get "/stores"
    expect(response).to be_successful
    expect(response).to render_template(:index)
  end
end