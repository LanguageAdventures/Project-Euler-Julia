function mapper(arr)
    for i = 1:18
        for j = i+1:19
            arr[j] = arr[j]%arr[i] == 0 ? arr[j]/arr[i] : arr[j]
        end
    end
    arr
end

println(reduce(*, mapper(collect(2:20))))