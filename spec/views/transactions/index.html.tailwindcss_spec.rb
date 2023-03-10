require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        name: "Name",
        amount: 2.5,
        paid_at: Time.now,
        user: FactoryBot.create(:user)
      ),
      Transaction.create!(
        name: "Name",
        amount: 2.5,
        paid_at: Time.now,
        user: FactoryBot.create(:user)
      )
    ])
  end

  it "renders a list of transactions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
