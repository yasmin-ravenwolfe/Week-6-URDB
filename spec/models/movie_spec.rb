require 'spec_helper'

describe Movie do
    # use .new so we don't save to database- which slows down tests
    let(:movie){Movie.new}
    let(:rotten_finder_return){OpenStruct.new(ratings: OpenStruct.new(audience_score:84))}

  describe "#snippet" do

    context "when description is less than or equal to 50 characters" do
        it "returns the full description" do
        # movie.stub(:description).and_return("When a Roman general is betrayed and his family is")
        
        allow(movie).to receive(:description).and_return("When a Roman general is betrayed and his family is")
        expect(movie.snippet).to eq("When a Roman general is betrayed and his family is")
        end
    end

    context "when description is greater than 50 characters" do
        it "returns the first 47 characters and appends '...'" do
         allow(movie).to receive(:description).and_return("When a Roman general is betrayed and his family murdered by an emperor's corrupt son, he comes to Rome as a gladiator to seek revenge.")

        
          expect(movie.snippet).to eq("When a Roman general is betrayed and his family...")
        end
      end

    context "when description is nil" do
      it "should return an empty string" do

        allow(movie).to receive(:description).and_return(nil)

        expect(movie.snippet).to eq("")
      end
    end
  end

  describe "#audience_rating" do
    
    context "when Movie is found on Rotten Tomatoes" do
      it "returns the audience score for the Movie" do
        allow(movie).to receive(:rotten_finder).and_return(rotten_finder_return)

        expect(movie.audience_rating).to eq(84)
      end
    end

    context "when Movie is not found on Rotten Tomatoes" do
      it "returns an empty array" do
        allow(movie).to receive(:rotten_finder).and_return([])

        expect(movie.audience_rating).to eq(nil)
      end
    end
  end
end

