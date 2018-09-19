feature 'Hit Point' do 
  scenario "seeing player2's Hit Points" do
  visit('/play')
  expect(page).to have_content("Player2's Hit Points: 100")
  end
end