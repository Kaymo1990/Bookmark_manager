
feature 'Bookmark view' do
  scenario 'should allow us to view bookmarks' do
    sign_in_start
    expect(page).to have_content 'Bookmark'
    end

    scenario 'we should be able to add a bookmark' do
      sign_in_start
      fill_in :entered_bookmark, with: 'TFT'
      click_button 'Submit'
      expect(page).to have_content 'TFT'
    end

  end
