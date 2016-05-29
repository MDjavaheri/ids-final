require 'rails_helper'

RSpec.describe Offering, type: :model do
    describe "enroll" do
        context "given an offering with more than one spot available" do 
            it "decrements spots available by one when user tries to enroll" do
                x = Offering.spots_available
                Offering.enroll
                expect(Offering.spots_available.to eql (x - 1))
            end
        end
    end
    
    describe "lock out" do
        context "given an offering with zero spots available" do 
            it "flash course is full when user tries to enroll" do
                Offering.spots_available = 0
                expect(Offering.enroll.to = false)
            end
        end
    end
end
