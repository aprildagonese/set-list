RSpec.describe 'as a visitor' do
  it 'should display a welcome message' do
    visit '/'
    save_and_open_page

    within '#greeting' do
      expect(page).to have_content('DASHBOARD')
    end
  end
end
