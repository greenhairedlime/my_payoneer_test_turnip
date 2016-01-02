module HomeSteps

  # GIVEN
  step "I am on home page" do
    HomePage.open
  end
  # WHEN

  step "I click sign up button on home page" do
    HomePage.given.open_sign_up_page
  end

  step "I should be redirected to sign up page" do
    SignUpPage.given
  end
end

RSpec.configure { |c| c.include HomeSteps, home_steps: true }