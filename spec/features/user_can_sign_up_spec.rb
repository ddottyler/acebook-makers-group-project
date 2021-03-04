# frozen_string_literal: true

RSpec.describe 'Registration', type: :feature do

  xit 'Users can sign up on the sign up page' do
    visit('/sign_up')
    fill_in 'user[first_name]', with: 'Joe'
    fill_in 'user[last_name]', with: 'Bloggs'
    fill_in 'user[email]', with: 'test@test.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    find('#sign-up-button').click
    # expect(current_path).to eq('/')
    expect(page).to have_content('Sign in successful')
  end

  xit "Users can't sign up if email is already in database" do
    sign_up
    sign_out
    sign_up
    expect(page).to have_content('Email joebloggs@test.com already exists. Please enter a new email address')
  end

  xit 'Users can log in and see confirmation' do
    sign_up
    sign_out
    sign_in
    expect(page).to have_content('Logged in')
  end

  xit 'Users can log out and see confirmation' do
    sign_up
    sign_out
    expect(page).to have_content('Logged out')
  end

  xit 'User can not sign in with invalid password or email' do
    sign_up
    sign_out
    visit 'sign_in'
    fill_in 'email', with: 'joebloggs@test.com'
    fill_in 'password', with: 'passwordz'
    click_button 'Sign In'
    expect(page).to have_content('Invalid details')
  end
end
