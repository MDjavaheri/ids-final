require 'rails_helper'

RSpec.describe OfferingController, type: :controller do
    describe "show all offerings" do
        context "given all search inputs are blank" do
            it "shows a list of all course offerings" do
                expect(Offering.where()).to equal Offering.all)
            end
        end
    end
    describe "search for Intro to CS" do
        context "given search title for intro" do
            it "shows the class and lab" do
                expect(Offering.search(:title => "Intro to Computer Science")).to eql Course.search(:title => "Intro to Computer Science"))
            end
        end
    end
end
