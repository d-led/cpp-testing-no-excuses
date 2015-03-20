package.cpath = 'bin/?.dll;bin/?.so;' .. package.cpath

assert(require 'test_bindings')

describe("a counter",function()
	local counter = my.counter()

	local starting_value = counter:next()

	it("should start with a zero",function()
		assert.are.equal(starting_value, 0)
	end)

	it("should continue with an increment of 1",function()
		assert.are.equal(counter:next(), 1)
		assert.are.equal(counter:next(), 2)
	end)
end)
