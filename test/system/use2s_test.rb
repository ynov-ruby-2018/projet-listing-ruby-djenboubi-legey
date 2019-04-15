require "application_system_test_case"

class Use2sTest < ApplicationSystemTestCase
  setup do
    @use2 = use2s(:one)
  end

  test "visiting the index" do
    visit use2s_url
    assert_selector "h1", text: "Use2s"
  end

  test "creating a Use2" do
    visit use2s_url
    click_on "New Use2"

    fill_in "Id", with: @use2._id
    fill_in "Familyname", with: @use2.familyName
    fill_in "Login", with: @use2.login
    fill_in "Name", with: @use2.name
    fill_in "Password", with: @use2.password
    fill_in "Role", with: @use2.role
    click_on "Create Use2"

    assert_text "Use2 was successfully created"
    click_on "Back"
  end

  test "updating a Use2" do
    visit use2s_url
    click_on "Edit", match: :first

    fill_in "Id", with: @use2._id
    fill_in "Familyname", with: @use2.familyName
    fill_in "Login", with: @use2.login
    fill_in "Name", with: @use2.name
    fill_in "Password", with: @use2.password
    fill_in "Role", with: @use2.role
    click_on "Update Use2"

    assert_text "Use2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Use2" do
    visit use2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Use2 was successfully destroyed"
  end
end
