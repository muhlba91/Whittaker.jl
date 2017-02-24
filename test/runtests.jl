module WhittakerTests

using Whittaker

include("whittaker1.jl")
include("whittaker2.jl")

isinteractive() || FactCheck.exitstatus()

end
