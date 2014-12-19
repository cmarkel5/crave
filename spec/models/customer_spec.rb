require 'spec_helper'

describe Customer do
  before { @customer = Customer.new(name: "Josh Kushner", email: "joshkushner1@gmail.com",
                            password: "foobar", password_confirmation: "foobar") }

  subject { @customer }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:authenticate) }
  it { should respond_to(:remember_token) }


  it { should be_valid }

  describe "validations" do
    describe "name" do
      context "not present" do
        before { @customer.name = " " }
        it { should_not be_valid }
      end

      context "too long" do
        before { @customer.name = "a" * 255 }
        it { should_not be_valid }
      end
    end

    describe "email" do
      context "too long" do
        before { @customer.email = "a" * 255 }
        it { should_not be_valid }
      end

      context "correct format" do
        it "is valid" do
          valid_addresses = %w[customer@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
          valid_addresses.each do |valid_address|
            @customer.email = valid_address
            expect(@customer).to be_valid
          end
        end
      end

      context "incorrect format" do
        it "is invalid" do
          invalid_addresses = %w[customer@foo,com customer_at_foo.org example.customer@foo. foo@bar_baz.com foo@bar+baz.com foo@bar..com]
          invalid_addresses.each do |invalid_address|
            @customer.email = invalid_address
            expect(@customer).to_not be_valid
          end
        end
      end

      context "mixed case" do
        it "is saved as lowercase" do
          mixed_case_email = "fooBAR@exaMPLE.coM"
          @customer.email = mixed_case_email
          @customer.save
          expect(@customer.reload.email).to eq(mixed_case_email.downcase)
        end
      end

      context "when already taken" do
        before do
          customer_with_same_email = @customer.dup
          customer_with_same_email.save
        end

        it {should_not be_valid }
        Customer.destroy_all
      end
    end
  end
end

