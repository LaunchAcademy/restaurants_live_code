require 'rails_helper'

feature 'user views restaurants' do

  scenario 'view list of available restaurants' do

    Restaurant.create!(name: 'Pho Hoa',
      address: '20 Beach Street', city: 'Boston',
      state: 'MA', zip_code: '02111')
    Restaurant.create!(name: 'Pho Pasteur',
      address: '20 Beach Street', city: 'Boston',
      state: 'MA', zip_code: '02111')
    Restaurant.create!(name: 'Dumpling King',
      address: '20 Beach Street', city: 'Boston',
      state: 'MA', zip_code: '02111')

    visit restaurants_path

    expect(page).to have_content('Pho Hoa')
    expect(page).to have_content('Pho Pasteur')
    expect(page).to have_content('Dumpling King')

  end

end
