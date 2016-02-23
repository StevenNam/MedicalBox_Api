if @drug == nil then

else
  json.partial! "drugs/drug", drug: @drug
end
