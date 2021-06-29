local poststart_modules = {
	'settings',
	'plugins',
	'autocmd',
}
for i=1,table.getn(poststart_modules) do
	require('poststart.'..poststart_modules[i])
end
