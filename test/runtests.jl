using Test
using Whittaker

if length(ARGS) > 0
    tests = ARGS
end

# @test [] == detect_ambiguities(Base, Core, Whittaker)

tests = ["whittaker1",
         "whittaker2"
        ]

@testset "Whittaker" begin

for t in tests
    fp = joinpath(dirname(@__FILE__), "test_$t.jl")
    println("$fp ...")
    include(fp)
end

end # @testset