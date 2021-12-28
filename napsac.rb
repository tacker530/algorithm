#
# Napsac問題
#
N,W = gets.chomp.split.map(&:to_i)
w = [0]
v = [0]
dp = Array.new(N+1){
  Array.new(W+1){0}
}
pp dp

1.upto(N) do |i| 
  w[i],v[i] = gets.chomp.split.map(&:to_i)
end


1.upto(N) do |i|
  0.upto(W) do |j|
    pp "i=#{i}, j=#{j}, w=#{w[i]}, v=#{v[i]}"

    if j < w[i] then
      dp[i][j] = dp[i-1][j]  # 重さが越えているならば選択しない（直前と同じ）
    end
    if j >= w[i] then
      v1 = dp[i-1][j]
      v2 = dp[i-1][j - w[i]] + v[i]
      dp[i][j] = [v1,v2].max
    end
  end
end

pp dp
pp dp[N].max