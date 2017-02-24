using Base.Test, Whittaker

@testset "whittaker2" begin
  @testset "out-of-place" begin
    tol = 0.0001

    y = [1.0, 1.2, 0, 1.6, 1.8]
    w = [1.0, 1.0, 0, 1.0, 1.0]
    lambda = 0.0001
    z = whittaker2(y, w, lambda)
    @test_approx_eq_eps z [0.999997, 1.20001, 1.4305, 1.64575, 1.80004] tol

    y = [1., 2, 0, 4, 5]
    w = [1, 1, 0, 1, 1]
    lambda = 0.0001
    z = whittaker2(y, w, lambda)
    @test_approx_eq_eps z [0.999992, 2.00002, 3.07626, 4.11438, 5.00005] tol
  end

  @testset "in-place" begin
    tol = 0.0001

    y = [1.0, 1.2, 0, 1.6, 1.8]
    w = [1.0, 1.0, 0, 1.0, 1.0]
    lambda = 0.0001
    whittaker2!(y, w, lambda)
    @test_approx_eq_eps y [0.999997, 1.20001, 1.4305, 1.64575, 1.80004] tol

    y = [1., 2, 0, 4, 5]
    w = [1, 1, 0, 1, 1]
    lambda = 0.0001
    whittaker2!(y, w, lambda)
    @test_approx_eq_eps y [0.999992, 2.00002, 3.07626, 4.11438, 5.00005] tol
  end
end
