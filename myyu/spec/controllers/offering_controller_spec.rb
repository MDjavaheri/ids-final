require 'rails_helper'

RSpec.describe OfferingController, type: :controller do
    describe "show all offerings" do
        context "given all search inputs are blank" do
            it "shows a list of all course offerings" do
                expect(Offering.search().to equal Offering.all)
            end
        end
    end
    describe "show course data with offering data" do
        it "shows all the course data relevant to the specific offerings" dp
        expect
end
