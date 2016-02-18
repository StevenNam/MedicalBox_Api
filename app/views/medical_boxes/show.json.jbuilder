if @medicalBoxes == nil then

else
  json.extract! @medicalBoxes, :name
end
