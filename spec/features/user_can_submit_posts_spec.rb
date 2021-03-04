# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Timeline', type: :feature do
  xit 'Can submit posts and view them' do
    sign_up
    visit '/posts'
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    expect(page).to have_content('Hello, world!')
  end

  xit 'fails if text field is empty' do
    sign_up
    visit '/posts'
    click_link 'New post'
    click_button 'Submit'
    expect(page).to have_content('Post message is blank, try again.')
  end

end
