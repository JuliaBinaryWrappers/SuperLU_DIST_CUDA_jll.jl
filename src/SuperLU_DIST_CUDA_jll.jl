# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SuperLU_DIST_CUDA_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SuperLU_DIST_CUDA")
JLLWrappers.@generate_main_file("SuperLU_DIST_CUDA", Base.UUID("32712609-44d4-5b88-8647-7f032361c66d"))
end  # module SuperLU_DIST_CUDA_jll
