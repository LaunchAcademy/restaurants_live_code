require 'rails_helper'

feature 'user views restaurants' do

  scenario 'view list of available restaurants' do

    FactoryGirl.create(:restaurant, name: 'Pho Hoa')
    FactoryGirl.create(:restaurant, name: 'Pho Pasteur')
    FactoryGirl.create(:restaurant, name: 'Dumpling King')

    visit restaurants_path

    expect(page).to have_content('Pho Hoa')
    expect(page).to have_content('Pho Pasteur')
    expect(page).to have_content('Dumpling King')

  end

end
