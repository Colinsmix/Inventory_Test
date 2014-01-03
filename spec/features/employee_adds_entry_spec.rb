require 'spec_helper'

feature 'Employee adds an entry to the list' do
  let!(:employee){ FactoryGirl.build(:employee) }

  scenario 'Employee adds a valid entry' do
    employee.save!
    visit root_path
    click_link 'Add Entry'
    fill_in 'Title', :with => 'Chicken'
    fill_in 'Description', :with => 'A delicious food'
    fill_in 'Quantity', :with => 2
    select(employee.email, :from => 'Employee')
    click_button 'Create Entry'

    expect(page).to have_content('Entry Created Successfully')
    expect(page).to have_link('Add Entry')
    expect(page).to have_link('Add Employee')
  end

  
end