require 'spec_helper'

describe ShowtimesController do
  let(:valid_attributes) { { "time" => "10/27/13 5:00pm" } }
  before(:each) do
    @movie = Movie.create
  end
  describe "POST create" do
    context "with valid params" do
      it "creates a new Showtime" do
        expect {
          post :create, {:movie_id => @movie.id, :showtime => valid_attributes}
        }.to change(Showtime, :count).by(1)
      end

      it "assigns a newly created showtime as @showtime" do
        post :create, {:movie_id => @movie.id, :showtime => valid_attributes}
        expect(assigns(:showtime)).to be_a(Showtime)
        expect(assigns(:showtime)).to be_persisted
      end

      it "redirects to the created showtime's movie" do
        post :create, {:movie_id => @movie.id, :showtime => valid_attributes}
        expect(response).to redirect_to(Showtime.last.movie)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved showtime as @showtime" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Showtime).to receive(:save).and_return(false)

        post :create, {:movie_id => @movie.id, :showtime => { "location" => "invalid value" }}
        expect(assigns(:showtime)).to be_a_new(Showtime)
      end

      it "re-renders the 'movies#show' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Showtime).to receive(:save).and_return(false)
        post :create, {:movie_id => @movie.id, :showtime => { "location" => "invalid value" }}
        expect(response).to redirect_to(@movie)
      end
    end
  end 
end
