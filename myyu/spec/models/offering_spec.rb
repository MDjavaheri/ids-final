require 'rails_helper'
require 'offering'

RSpec.describe Offering, type: :model do
    describe "enroll" do
        context "given an offering with more than one spot available" do 
            it "decrements spots available by one when user tries to enroll" do
                intro = Offering.new(:spots_available => 15)
                intro.enroll
                expect(intro.spots_available).to eql(14)
            end
        end
    end
    
    describe "lock out" do
        context "given an offering with zero spots available" do 
            it "return nil when user tries to enroll" do
                intro = Offering.new(:spots_available => 0)
                expect(intro.enroll).to eq(false)
            end
        end
    end
end
