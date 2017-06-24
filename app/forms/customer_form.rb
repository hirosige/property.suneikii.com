class CustomerForm < Reform::Form
  include Reform::Form::Dry

  property :first_name

  validation do
    require(:first_name).filled
  end

end