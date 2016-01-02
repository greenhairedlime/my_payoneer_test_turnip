module SignUpSteps

  step "fill in correct credentials in Getting Started section" do
    SignUpPage.fill_get_start(firstname: 'Test',
                             lastname: 'Kepler',
                             email: settings.def_test_user,
                             rtpemail: settings.def_test_user,
                             month: '3',
                             year: '1989',
                             day: '22')
  end

  step "fill in incorrect credentials in Getting Started section" do
    SignUpPage.fill_get_start(firstname: 'Test',
                              lastname: 'Kepler',
                              email: settings.def_test_user,
                              rtpemail: 'user@maiol.com',
                              month: '3',
                              year: '1989',
                              day: '22')
  end

  step "I see the alert message 'Please enter the same value again'" do
    expect(SignUpPage.given.text).to include('Please enter the same value again')
  end

  step "click next button" do
    SignUpPage.click_next('PersonalDetails')
  end

end
RSpec.configure { |c| c.include SignUpSteps, sign_up_steps: true }