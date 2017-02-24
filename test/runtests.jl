module WhittakerTests

using Whittaker


testing_units = Int == Int64
if testing_units
    using SIUnits, SIUnits.ShortUnits
end


include("whittaker1.jl")
include("whittaker2.jl")

isinteractive() || FactCheck.exitstatus()

end
