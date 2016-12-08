require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("pw00161@surrey.ac.uk", "Piers Wareham", "+447944467130", @message = "Problem?")
    
    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['info@mynotes.com'], mail.from
  end
end
