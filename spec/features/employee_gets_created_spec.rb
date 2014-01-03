require 'spec_helper'

feature 'Employee adds him/herself to the list of employees' do
  
  scenario 'the employee provides the correct information, and it redirected to the home page' do
    visit root_path
    click_link 'Add Employee'
    fill_in 'First name', :with => 'Examplefirst'
    fill_in 'Last name', :with => 'Examplelast'
    fill_in 'Email', :with => 'example@example.com'
    click_button 'Create Employee'

    expect(page).to have_content('Employee Created Successfully')
    expect(page).to have_link('Add Entry')
  end

end