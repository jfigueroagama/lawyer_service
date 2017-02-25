describe "the signin process", :type => :feature do
  before :each do
    User.create!(email: 'user@example.com', password: 'password123', password_confirmation: "password123" )
  end

  it "signs me in" do
    visit '/users/sign_in'
    within("#users") do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'
    #expect(page).to have_selector(:link_or_button, 'Log out')
    expect(current_path).to eq('/users/sign_in')
  end
end
