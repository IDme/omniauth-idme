require "spec_helper"

describe "OmniAuth::Strategies::IDme" do
  subject do
    OmniAuth::Strategies::IDme.new(nil, @options || {})
  end

  context "client options" do
    it "has correct IDme site" do
      subject.options.client_options.site.should eq("https://api.id.me")
    end

    it "has correct authorize url" do
      subject.options.client_options.authorize_url.should eq("https://api.id.me/oauth/authorize")
    end
  end

  context "#uid" do
    before :each do
      subject.stub(:data) { { "id" => "123456" } }
    end

    it "returns the id from data" do
      subject.uid.should eq("123456")
    end
  end
end
