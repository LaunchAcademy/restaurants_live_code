require 'rails_helper'

feature 'user views restaurants' do

  scenario 'view list of available restaurants' do

    restaurants = FactoryGirl.create_list(:restaurant, 3)

    visit restaurants_path

    restaurants.each do |restaurant|
      expect(page).to have_content(restaurant.name)
    end

  end

end
