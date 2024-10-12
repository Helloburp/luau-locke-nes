
local inst_logfiles = script
local LOGFILES = {
    require(inst_logfiles["nestest.log.part1of5"]),
    require(inst_logfiles["nestest.log.part2of5"]),
    require(inst_logfiles["nestest.log.part3of5"]),
    require(inst_logfiles["nestest.log.part4of5"]),
    require(inst_logfiles["nestest.log.part5of5"]),
}

return LOGFILES