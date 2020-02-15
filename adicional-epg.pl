open FILE, "<lista-script-mex-editado3.m3u";
@fichero = <FILE>;
close FILE;

@array1 = ('tvg-id="PE - ATV"', 
           'tvg-id="PE - La Tele"',
		   'tvg-id="Win Sports HD"',		       	   
		   'tvg-id="Cablenoticias"');
@array2 = ('tvg-id="I509.35919.tvguide.com" tvg-id="PE - ATV"', 
           'tvg-id="I27.42332.tvguide.com" tvg-id="PE - La Tele"',
		   'tvg-id="Win Sports HD" tvg-id="I522.47002.tvguide.com"',	  	   
		   'tvg-id="I465.34562.tvguide.com" tvg-id="Cablenoticias"');
 
open FILE, ">lista-script-mex-editado4.m3u";
for (@fichero) {
    s/$array1[0]/$array2[0]/g;
	s/$array1[1]/$array2[1]/g;
	s/$array1[2]/$array2[2]/g;
	s/$array1[3]/$array2[3]/g;
    print FILE $_;
}
close FILE;
