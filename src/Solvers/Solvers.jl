module Solvers

include("SSASolver.jl")
include("ODESolver.jl")

import 
    .SSASolver,
    .ODESolver

import ..Gilles:
    Model

export
    SSASolver,
    ODESolver

function run(model::Model; solver::Module=SSASolver)
    solver.run(model)
end

end