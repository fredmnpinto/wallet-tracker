require 'rails_helper'

RSpec.describe "transactions/show", type: :view do
  before(:each) do
    assign(:transaction, Transaction.create!(
      name: "Name",
      amount: 2.5,
      paid_at: Time.now,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
