function seedchange(a,d)function wait(e)b=os.time()repeat until os.time()>b+e end;c=1;repeat print("resetseed("..c..")")resetseed()c=c+1;wait(d)until c>=a end;seedchange(math.random(math.floor(chance/10)),0)