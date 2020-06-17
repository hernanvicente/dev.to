require "rails_helper"

RSpec.configure do |c|
  include CloudinaryHelper
end

RSpec.describe Users::ProfileImageGenerator, type: :service do
  it "returns a cloudinary url" do
    expect(described_class.call).to start_with("https://res.cloudinary.com/")
  end
end
