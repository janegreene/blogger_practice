require "rails_helper"

describe "user sees one article" do
  it "link from index to show and displays info for one article" do
    Article.create(title:"Art of an Article", body:"yad yad yada")
    visit articles_path
    click_link "Art of an Article"
    expect(page).to have_content("Art of an Article")
    expect(page).to have_content("yad yad yada")
  end

end
