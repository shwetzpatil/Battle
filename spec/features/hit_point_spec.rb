feature 'Hit Point' do 
  scenario "seeing player2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Shweta's Hit Points: 100")
  end

  scenario ' attack Player 2, and get a confirmation' do
    sign_in_and_play
    click_button('Kick Shweta')
    expect(page).to have_content("Shweta's Hit Points: 80")
  end
end