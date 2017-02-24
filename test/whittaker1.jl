using Base.Test, Whittaker

@testset "whittaker1" begin
  @testset "out-of-place" begin
    tol = 0.0001

    y = [1.0, 1.2, 0, 1.6, 1.8]
    w = [1.0, 1.0, 0, 1.0, 1.0]
    lambda = 0.0001
    z = whittaker1(y, w, lambda)
    @test_approx_eq_eps z [1.00002, 1.2, 1.4, 1.6, 1.79998] tol

    y = [1., 2, 0, 4, 5]
    w = [1, 1, 0, 1, 1]
    lambda = 0.0001
    z = whittaker1(y, w, lambda)
    @test_approx_eq_eps z [1.0001, 2.0, 3.0, 4.0, 4.9999] tol
  end

  @testset "in-place" begin
    tol = 0.0001

    y = [1.0, 1.2, 0, 1.6, 1.8]
    w = [1.0, 1.0, 0, 1.0, 1.0]
    lambda = 0.0001
    whittaker1!(y, w, lambda)
    @test_approx_eq_eps y [1.00002, 1.2, 1.4, 1.6, 1.79998] tol

    y = [1., 2, 0, 4, 5]
    w = [1, 1, 0, 1, 1]
    lambda = 0.0001
    whittaker1!(y, w, lambda)
    @test_approx_eq_eps y [1.0001, 2.0, 3.0, 4.0, 4.9999] tol
  end
end
