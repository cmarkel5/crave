require 'spec_helper'
require 'rails_helper'

describe CustomersController, type: :controller do
  before do
    Customer.destroy_all
  end
  let(:customer) { FactoryGirl.create(:customer) }

  describe "GET new" do
    it "renders new page" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns new Customer to @customer" do
      get :new
      expect(assigns(:customer)).to be_a_new(Customer) #confirm that @customer = Customer.new
    end
  end

  describe "POST create" do
    let(:customer) { FactoryGirl.create(:customer) }

    context "with valid attributes" do
      # adds new customer to the customers database
      # When I post to the create action, change customer.count by 1, aka add 1 to the customers db
      it "create customer in database" do
        expect{
          post :create, customer:  FactoryGirl.attributes_for(:customer)
        }.to change(Customer, :count).by(1)
      end
    end

    context "with invalid attributes" do
      before { Customer.destroy_all }
      it "does not save task to database" do
        expect{
          post :create, customer:  FactoryGirl.attributes_for(:customer, email: " ")
          }.to_not change(Customer, :count)
      end

      it "re-renders home/login page" do
        post :create, customer:  FactoryGirl.attributes_for(:customer, email: " ")
        expect(response).to render_template(:new)
      end
    end
  end
end
