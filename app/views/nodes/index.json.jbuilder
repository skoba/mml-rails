json.array!(@nodes) do |node|
  json.extract! node, :path, :atcode, :rmclass, :txt_value, :int_value, :flt_value
  json.url node_url(node, format: :json)
end