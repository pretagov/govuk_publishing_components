require 'rails_helper'

describe "warning text", type: :view do
  def component_name
    "warning_text"
  end

  it "renders warning text" do
    render_component(text: "You can be fined up to £5,000 if you don’t register.")
    assert_select(".govuk-warning-text__assistive", text: "Warning")
    assert_select(".govuk-warning-text__text", text: /You can be fined up to £5,000 if you don’t register?/i)
  end

  it "renders custom assistive text" do
    render_component(text_assistive: "Danger", text: "You can be fined up to £5,000 if you don’t register.")
    assert_select(".govuk-warning-text__assistive", text: "Danger")
    assert_select(".govuk-warning-text__text", text: /You can be fined up to £5,000 if you don’t register?/i)
  end

  it "renders custom icon text" do
    render_component(text_icon: ":(", text: "You can be fined up to £5,000 if you don’t register.")
    assert_select(".govuk-warning-text__icon", text: ":(")
  end

  it "renders no icon" do
    render_component(text_icon: "", text: "You can be fined up to £5,000 if you don’t register.")
    assert_select(".govuk-warning-text__icon", false)
    assert_select(".gem-c-warning-text__text--no-indent", text: /You can be fined up to £5,000 if you don’t register/i)
  end

  it "renders large warning text" do
    render_component(large_font: true, text: "You can be fined up to £5,000 if you don’t register.")
    assert_select(".govuk-warning-text__text.gem-c-warning-text__text--large", text: /You can be fined up to £5,000 if you don’t register/i)
  end
end
