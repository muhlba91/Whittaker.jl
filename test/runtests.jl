module WhittakerTests

using FactCheck, Whittaker

include("whittaker1.jl")
include("whittaker2.jl")

isinteractive() || FactCheck.exitstatus()

end
