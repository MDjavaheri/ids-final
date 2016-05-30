require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
    describe "searching MYYU" do
        before :each do 
            @fake_results = [double(Course.where("title = 'Calculus I'"))]
        end
        it "calls the model method that does the myyu search" do
            expect(Course).to receive(:find_in_myyu).with({:title => "Calculus I"}).and_return(@fake_results)
            post :search_myyu, {:section => "241"}
        end
        it "selects the Search Results template for rendering" do
            allow(Course).to receive(:find_in_myyu).and_return(@fake_results)
            post :search_myyu, {:title => "Calculus I"}
            expect(response).to render_template('search_myyu')
        end
    end
    describe 'after valid search' do
      before :each do
        allow(Course).to receive(:find_in_myyu).and_return(@fake_results)
        post :search_myyu, {:title => "Calculus I"}
      end
      it 'selects the Search Results template for rendering' do
        expect(response).to render_template('search_myyu')
      end
      it 'makes the TMDb search results available to that template' do
        expect(assigns(:courses)).to eq(@fake_results)
      end
    end
end
