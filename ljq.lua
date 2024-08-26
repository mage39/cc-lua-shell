function dumptable (table, recurse = 0)
	tabs = ""
	for i = 0, i < recurse, i++ do
		tabs = string.format("\t%s", tabs)
	end
	for k, v in pairs(table) do
		if type(v) == "function" then
			print(tabs, k)
		elseif type(k) == "table" then
			dumptable(k, recurse + 1)
		else
			print(tabs, k, v)
		end
	end
end
