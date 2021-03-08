require 'byebug'

def compare_version(v1, v2)
  v1a = v1.split('.').collect(&:to_i)
  v2a = v2.split('.').collect(&:to_i)

  i = 0
  while (i < v1a.size) do

    return 1 if (v2a[i].nil?)

    return 1 if (v1a[i] > v2a[i])

    return -1 if (v1a[i] < v2a[i])

    i = i + 1
  end

  return -1 if (v1a.size < v2a.size)

  return 0
end

#0.1 < 1.1 < 1.2 < 1.2.9.9.9.9 < 1.3 < 1.3.4 < 1.10
#
puts compare_version('1.2', '1.3.4') #-1
puts compare_version('1.2.9.9.9', '1.2') #1
puts compare_version('1.3', '1.10') #-1
puts compare_version('1.1', '1.3.4') #-1
puts compare_version('0.1', '1.3.4') #-1
puts compare_version('1.3.4', '1.3') #1
puts compare_version('1.3.4', '1.3.4') #0
puts compare_version('0.1', '0.1') #0
