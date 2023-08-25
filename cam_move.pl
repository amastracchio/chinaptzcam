#!/usr/bin/perl

my $sleep_horiz = 10;
my $sleep_stop = 2;
my $sleep_pasito = 0.2;
my $sleep_stop = 0.2;



my $id = $ARGV[0];


system("/root/3p/zm/bin/zmcontrol.pl --command=moveConUp  --id=$id");
sleep($sleep_horiz);

system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
sleep ($sleep_stop);

system("/root/3p/zm/bin/zmcontrol.pl --command=moveConLeft --id=$id");
sleep($sleep_horiz);

#goto aca;


# scan abajo
my $strupodown;
my $cont = 5;
while($cont > -4){

	$cont--;
        if ($cont >0 ) {
		$strupodown = "Down";
	} else {
		$strupodown = "Up";
	}

	print "Contador = $cont \n";

	# ida y vuelta
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveCon".$strupodown." --id=$id");
	sleep($sleep_pasito);
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
	sleep ($sleep_stop);
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveConRight --id=$id");
	sleep($sleep_horiz);
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
	sleep ($sleep_stop);
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveCon".$strupodown." --id=$id");
	sleep($sleep_pasito);
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
	sleep ($sleep_stop);

	system("/root/3p/zm/bin/zmcontrol.pl --command=moveConLeft --id=$id");
	sleep($sleep_horiz);
	system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
	sleep ($sleep_stop);

}

aca:
system("/root/3p/zm/bin/zmcontrol.pl --command=moveConRight --id=$id");
sleep(4);
system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
sleep (sleep_stop);
#

system("/root/3p/zm/bin/zmcontrol.pl --command=moveConDown --id=$id");
sleep(2);
system("/root/3p/zm/bin/zmcontrol.pl --command=moveStop  --id=$id");
sleep (sleep_stop);

