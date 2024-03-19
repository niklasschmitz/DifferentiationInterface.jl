using ADTypes
using DifferentiationInterface
using Test

struct AutoNothingForward <: ADTypes.AbstractForwardMode end
struct AutoNothingReverse <: ADTypes.AbstractReverseMode end

@test !available(AutoNothingForward())
@test !available(AutoNothingReverse())

@test_throws MethodError derivative(AutoNothingForward(), identity, 1.0)
@test_throws MethodError derivative(AutoNothingReverse(), identity, 1.0)