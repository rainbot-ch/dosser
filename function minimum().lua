function minimum()
        minprof=1e-8
    if ((nextbet*(99/chance))<minprof)then
		nextbet=(((3-(3/(99/chance))+1)*100-100)*minprof)
		print(string.format("%.8f x %.8f = %.8f",((3-(3/(99/chance))+1)*100-100),minprof,(((3-(3/(99/chance))+1)*100-100)*minprof)))
    end
end;minimum();
