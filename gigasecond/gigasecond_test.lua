local Gigasecond = require('gigasecond')

describe("Gigasecond", function()

    it("test 1", function()
        local actual = Gigasecond.anniversary(os.time({ year = 2011, month = 3, day = 25, hour = 0, min = 0, sec = 0 }))
        local expectedDate = os.date("%x", os.time({ year = 2042, month = 12, day = 1, hour = 0, min = 0, sec = 0 }))
        assert.are.equals(expectedDate, actual)
    end)

    it("test 2", function()
        local actual = Gigasecond.anniversary(os.time({ year = 1977, month = 5, day = 13, hour = 0, min = 0, sec = 0 }))
        local expectedDate = os.date("%x", os.time({ year = 2009, month = 1, day = 19 }))
        assert.are.equals(expectedDate, actual)
    end)

    it("test 3", function()
        local actual = Gigasecond.anniversary(os.time({ year = 1959, month = 7, day = 19 }))
        local expectedDate = os.date("%x", os.time({ year = 1991, month = 3, day = 27 }))
        assert.are.equals(expectedDate, actual)
    end)

    it("test 4", function()
        local actual = Gigasecond.anniversary(os.time({ year = 1993, month = 8, day = 17 }))
        local expectedDate = os.date("%x", os.time({ year = 2025, month = 4, day = 25 }))
        assert.are.equals(expectedDate, actual)
    end)
end)
