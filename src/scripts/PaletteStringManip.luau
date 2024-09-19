
local colorsStr = "545454001E740810903000884400645C00305404003C1800202A00083A00004000003C0000323C000000000000000000989698084CC43032EC5C1EE48814B0A01464982220783C00545A00287200087C00007628006678000000000000000000ECEEEC4C9AEC787CECB062ECE454ECEC58B4EC6A64D48820A0AA0074C4004CD02038CC6C38B4CC3C3C3C000000000000ECEEECA8CCECBCBCECD4B2ECECAEECECAED4ECB4B0E4C490CCD278B4DE78A8E29098E2B4A0D6E4A0A2A0000000000000"
type Color = {r: number, g: number, b: number}


local counter = 0x00

function _createColorDefinition(colors: {Color}): string
	local prefix = "local COLORS = {\n"
	local postfix = "}"
	local strings = {prefix}

	for i, color in ipairs(colors) do
		local hexIndex = string.format("0x%.2X", i - 1)
		local r, g, b =
			string.format("%-4s", color.r .. ","),
			string.format("%-4s", color.g .. ","),
			string.format("%-3s", color.b)
		local linePostfix = if (i - 1)%8 == 7 then "\n" else ""
		
		table.insert(strings, `\t[{hexIndex}] = \{r={r}g={g}b={b}},{linePostfix}`)
	end

	table.insert(strings, postfix)

	return table.concat(strings)
end

function _addColor(rStr: string, gStr: string, bStr: string, colors: {Color})
	
	local r = tonumber(rStr, 16)
	local g = tonumber(gStr, 16)
	local b = tonumber(bStr, 16)

	counter += 1
	colors[counter] = {r = r, g = g, b = b}

end

function _getColors(str: string): {Color}
	local colors = {}
	for r, g, b in string.gmatch(str, "(%x%x).-(%x%x).-(%x%x)") do
		_addColor(r, g, b, colors)
	end
	print(#colors)
	return colors
end

function _printPaletteDefinition()
	print(_createColorDefinition(_getColors(colorsStr)))
end

_printPaletteDefinition()
