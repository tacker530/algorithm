#
# step
# 太郎君はN段の階段を上がろうとしています。彼は一歩で１段または２段上がることが出来ます。
# 0段目から出発してN段目までたどり着くのにその移動方法が何通りあるか。

N = gets.chomp.to_i

dp = []
0.upto(N) do |i|
  if i == 0 then
    dp[i] = 1
  end
  if i == 1 then
    dp[i] = 1
  end
  if i >= 2 then
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  puts "dp[#{i}] = #{dp[i]}"
end

puts dp[N]
