RSpec.describe 'Navbar', type: :feature do

  it 'Users can sign up on the sign up page' do
    visit root_path
    click_link 'Sign Up'
    expect(current_path).to eq(sign_up_path)
  end

  it 'Users can log in on the sign up page' do
    visit root_path
    click_link 'Log In'
    expect(current_path).to eq(sign_in_path)
  end

  it 'Users can visit the about page' do
    visit root_path
    click_link 'About'
    expect(current_path).to eq(about_path)
  end
end
