print("Hello")
print()
using OffsetArrays
function findallmax(A::AbstractArray)::AbstractArray{Int}
    M=typemin(eltype(A))
    indexes = []
    for a in A
        M=max(M,a)
    end
    n = length(A)
    for a in 1:n
        if A[a] == M
            push!(indexes, a)
        end
    end
    return indexes
end


arr = [12,34,21,35,13,15,35,9,0,-2,4,35]
b = findallmax(arr)
print(b)