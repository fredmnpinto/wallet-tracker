require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
      name: "MyString",
      amount: 1.5,
      paid_at: Time.now,
      user: FactoryBot.create(:user)
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      assert_select "input[name=?]", "transaction[name]"

      assert_select "input[name=?]", "transaction[amount]"
    end
  end
end
