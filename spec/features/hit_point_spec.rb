feature 'Hit Point' do 
  scenario "seeing player2's Hit Points" do
    visit('/')
    fill_in('player1_name', with: "Seb")
    fill_in('player2_name', with: "Shweta")
    click_button "Submit"
    expect(page).to have_content("Shweta's Hit Points: 100")
  end
end