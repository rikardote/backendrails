require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should validate_length_of(:username).is_at_least(3).is_at_most(12) }

  describe "#validate_username_regex" do

  	let(:user){FactoryGirl.build(:user)}

		it 	"should not allow username with numbers at the beggining" do
			user.username = "9asdfsadf"
			expect(user.valid?).to be_falsy
		end
		it 	"should not contain special characters" do
  		user.username = "asdfsad*f"
			expect(user.valid?).to be_falsy
		end
  end
  

end
