func mono(array: [Int]) -> Bool {
    guard array.count > 2 else {
        return true
    }
    
    var previousValue = array[0]
    var i = 1
    
//for increasing case
    while i < array.count {
        if array[i] > previousValue {
            previousValue = array[i]
            i += 1
        } else if array [i] == previousValue {
            i += 1
        } else {
            break
        }
    }
  
    if i == array.count {
        return true
    }
    
    //for descreasing case
    previousValue = array[0]
    i = 1
    
    while i < array.count {
        if array[i] > previousValue {
            return false
        }
        previousValue = array[i]
        i += 1
    }
    return true
}
