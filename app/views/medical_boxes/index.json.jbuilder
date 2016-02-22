if @medicalBoxes == nil then

else
  json.medical_boxes @medicalBoxes do |medicalBox|
    json.partial! "medical_boxes/medical_box", medical_box: medicalBox
  end
end