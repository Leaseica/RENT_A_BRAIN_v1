if @brain.persisted?
  json.form render(partial: "brains/form", formats: :html, locals: {brain: Brain.new})
  json.inserted_item render(partial: "brains/brain", formats: :html, locals: {brain: @brain})
else
  json.form render(partial: "brains/form", formats: :html, locals: {brain: @brain})
end
