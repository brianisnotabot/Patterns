;an FM instrument adapted from "Xanadu" by Joeseph T. Kung
isin ftgenonce 0, 0, 4096, 10, 1      
icos ftgenonce 0, 0, 4096, 11, 1
ipal ftgenonce 0, 0, 4096, -12, 20
ishift      =           .00666667               
ipch        =           cpsmidinn(p4)          
ioct        =           octmidinn(p4)         
iamp        =           p5 * 0.6
aadsr       linsegr     0, p3/3, 1.0, p3/3, 1.0, p3/3, 0 
amodi       linseg      0, p3/3, 5, p3/3, 3, p3/3, 0 
amodr       linseg      1.7, p3, 0.5             
a1          =           amodi*(amodr-1/amodr)/2
a1ndx       =           abs(a1*2/20)            
a2          =           amodi*(amodr+1/amodr)/2
a3          tablei      a1ndx, ipal, isin      
ao1         oscili      a1, ipch, icos        
a4          =           exp(-0.5*a3+ao1)
ao2         oscili      a2*ipch, ipch, icos  
aL          oscili      iamp * aadsr*a4, ao2+cpsoct(ioct+ishift), isin 
aR          oscili      iamp * aadsr*a4, ao2+cpsoct(ioct-ishift), isin
CSOUNDOUT
