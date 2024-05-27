import MLX

let mArray = [
    [0.943755, 0.162902, -0.287733, -0.241071],
    [0.0669876, -0.946367, -0.316074, 0.150359],
    [-0.32379, 0.279022, -0.90405, -0.54078],
    [0, 0, 0, 1]
]
let m = MLXArray(converting: mArray.flatMap { $0 }, [4, 4])

let r = m[0..<3, 0..<3]
let t = m[0..<3, 3..<4]

print(matmul(r, t, stream: .device(.cpu)))
print(matmul(r, t, stream: .device(.gpu)))

print(matmul(r, t, stream: .device(.cpu)))
print(matmul(r, t, stream: .device(.gpu)))
