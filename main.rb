#センター試験数学ⅠＡ　平成１３年度
#Basic言語
=begin
010 rem 元プログラム
100 INPUT "X=";X
110 INPUT "N=";N
120 Y=1
140 IF N-2*INT(N/2)=0 THEN GOTO 160
150 Y=Y*X
160 N=INT(N/2)
170 IF N=0 THEN GOTO 190
175 X=X*X
180 GOTO 140
190 PRINT "Y=";Y
200 END
=end

#プログラム作者注この問題はpow関数のコーディングを求めている。
#X ^ N = Y の形式で累乗を求める。

print "X="
STDOUT.flush
xw = gets.to_s.chomp
print "N="
STDOUT.flush
nw = gets.to_s.chomp

x = xw.to_i
n = nw.to_i
y = 1

loop do
    if(n - 2 * (n/2).to_i != 0) then
      y = y.to_i * x.to_i
    end
    n = (n/2).to_i
    x = x.to_i * x.to_i
    break if n == 0 
end

print('Y= %d ' % y)
