require "application_system_test_case"

class MyUsersTest < ApplicationSystemTestCase
  setup do
    @my_user = my_users(:one)
  end

  test "visiting the index" do
    visit my_users_url
    assert_selector "h1", text: "My Users"
  end

  test "creating a My user" do
    visit my_users_url
    click_on "New My User"

    fill_in "Id", with: @my_user._id
    fill_in "Familyname", with: @my_user.familyName
    fill_in "Login", with: @my_user.login
    fill_in "Name", with: @my_user.name
    fill_in "Password", with: @my_user.password
    fill_in "Role", with: @my_user.role
    click_on "Create My user"

    assert_text "My user was successfully created"
    click_on "Back"
  end

  test "updating a My user" do
    visit my_users_url
    click_on "Edit", match: :first

    fill_in "Id", with: @my_user._id
    fill_in "Familyname", with: @my_user.familyName
    fill_in "Login", with: @my_user.login
    fill_in "Name", with: @my_user.name
    fill_in "Password", with: @my_user.password
    fill_in "Role", with: @my_user.role
    click_on "Update My user"

    assert_text "My user was successfully updated"
    click_on "Back"
  end

  test "destroying a My user" do
    visit my_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My user was successfully destroyed"
  end
end
