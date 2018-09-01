require_relative '../../../spec_helper'

describe Api::Views::Books::Index do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/api/templates/books/index.html.erb') }
  let(:view)      { Api::Views::Books::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
