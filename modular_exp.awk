#!/usr/bin/gawk -f
# modular_exp.awk
# /usr/bin/gawk -M -f modular_exp.awk -v a=$a -v b=$b -v n=$n
# /usr/bin/gawk -M -f modular_exp.awk -v a=3 -v b=11 -v n=21

# https://qiita.com/moajo/items/0ea9043f9688b05fa39a
# RSAを実装する - Qiita

BEGIN{
	res = 1;
	while(b != 0){
		if(and(b, 1) != 0){
			res = (res * a) % n;
		}
		a = (a * a) % n;
		b = rshift(b, 1);
	}
	print res;
}

