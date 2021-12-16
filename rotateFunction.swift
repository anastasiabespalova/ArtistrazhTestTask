import Foundation

// this file contains 5 rotation functions (3 methods, 2 of them are in 2 versions)
// Input: nums = [1,2,3,4,5,6,7], k = 3
// Output: [5,6,7,1,2,3,4]

// 1.1 - right single shift method
/*func rotate(_ nums: inout [Int], _ k: Int) {
   for i in 0..<k {
       let temp = nums[nums.count - 1]
            for j in (1..<nums.count).reversed()  {
                nums[j] = nums[j - 1]
            }
        nums[0] = temp
   }
}*/

// 1.2 - left single shift method
/*func rotate(_ nums: inout [Int], _ k: Int) {
   for i in 0..<nums.count - k {
       let temp = nums[0]
            for j in 0..<nums.count - 1  {
                nums[j] = nums[j + 1]
            }
        nums[nums.count - 1] = temp
   }
}*/



// 2.1 - first symbols temp array method
/*func rotate(_ nums: inout [Int], _ k: Int) {
    let temp = nums[..<(nums.count - k)]
    for i in 0..<k {
        nums[i] = nums[nums.count - k + i]
    }
    for i in 0..<(nums.count - k) {
        nums[i+k] = temp[i]
    }

}*/



// 2.2 - last symbols temp array method
/*func rotate(_ nums: inout [Int], _ k: Int) {
    let temp = nums[(nums.count - k)...]
    for i in (0..<(nums.count - k)).reversed() {
        nums[i+k] = nums[i]
    }
    for i in 0..<k {
        nums[i] = temp[i + (nums.count - k)]
    }
}*/


// 3. juggling method with left shift
// Works with  O(1) extra space
func gcd(_ a: Int, _ b: Int) -> Int{
    return b == 0 ? a : gcd(b, a % b)
}

func rotate(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    let gcdValue = gcd(n - k, n)
    for i in 0..<gcdValue {
        let temp = nums[i]
        var j = i
        while(true) {
            var tempIndex  = j + n - k
            if tempIndex >= n {
                tempIndex -= n
            }
            if tempIndex == i {
                break
            }

            nums[j] = nums[tempIndex]
            j = tempIndex
        }
        nums[j] = temp
    }
}
