require "rails_helper"
require 'support/violate_check_constraint_matcher'

describe User do
  context "email" do
    let(:user) { User.create!(email: "foo@example.com", password: "qwertyuiop", password_confirmation: "qwertyuiop") }

    it "absolutely prevents invalid email addresses" do
        expect {user.update_attribute(email: "foobar.com")}.to raise_error #(ActiveRecord::StatementInvalid,
                                                                                 #/email_must_be_correct/i)
    end

    it "absolutely prevents invalid email addresses" do
      expect { user.update_attribute(email: "foobar.com")}.to raise_error #violate_check_constraint(:email_must_be_company_email)
    end

  end
end
