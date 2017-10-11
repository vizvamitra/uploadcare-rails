require "spec_helper"

describe Uploadcare::Rails::ActionView::UploaderTags do
  it "should include uploader tag for name" do
    tag = helper.uploadcare_uploader_tag :file
    expect(tag).to be_kind_of(String)
    expect(tag).to have_selector('input[type="hidden"][role="uploadcare-uploader"][data-path-value="true"]', visible: :all)
  end

  it "should include uploader field for object" do
    tag = helper.uploadcare_uploader_field :post, :file
    expect(tag).to be_kind_of(String)
    expect(tag).to have_selector('input[type="hidden"][role="uploadcare-uploader"][data-path-value="true"]', visible: :all)
  end
end
