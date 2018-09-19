feature 'update screen with players names' do
  scenario 'Expects players to be able fill there names in form and see those names after submit' do
    sign_in_and_play
    expect(page).to have_content('Vu vs Shweta')
  end
end