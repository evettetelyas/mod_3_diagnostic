require 'rails_helper'

RSpec.describe "search page" do
	describe "searching for ootp members" do
		it "shows all ootp members for that house", :vcr do
			visit "/"

			select 'Gryffindor', from: :house

			click_on 'Search For Members'

			expect(current_path).to eq('/search')
			expect(page).to have_css('.name')
			expect(page).to have_css('.role')
			expect(page).to have_css('.house')
			expect(page).to have_css('.patronus')
		end
	end
end