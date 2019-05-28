func lengthOfLIS(nums: [Int]) -> Int {
    var length_global = 0
    var length_current = [Int](count: nums.count, repeatedValue: 1)

    for i in 0..<nums.count {
        for j in 0..<i {
            if nums[i] > nums[j] {
                length_current[i] = max(length_current[i], length_current[j] + 1)
            }
        }
        length_global = max(length_global, length_current[i])
    }

    return length_global
}
