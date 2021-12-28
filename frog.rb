#
#  Frog
#
# 要素数
N = gets.chomp.to_i
#　１からN番目の要素とするため
H = [0] + gets.chomp.split.map(&:to_i)

dp = []
1.upto(N) do |i|
  if i == 1 then 
    dp[i] = 0 
  end
  if i == 2 then
    dp[i] = ( H[i] - H[i - 1] ).abs 
  end
  if i >= 3 then
    v1 = dp[ i - 1 ] + ( H[i] - H[i - 1] ).abs
    v2 = dp[ i - 2 ] + ( H[i] - H[i - 2] ).abs
    dp[i] = [v1,v2].min
  end
end

puts dp[N]