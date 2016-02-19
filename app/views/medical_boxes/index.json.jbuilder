if @medicalBoxes == nil then

else
  json.medical_boxes @medicalBoxes do |medicalBox|
    json.id medicalBox.id
    json.name medicalBox.name
  end
end