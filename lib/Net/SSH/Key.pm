use strict;
use warnings;
package Net::SSH::Key;
use Convert::ASN1;
use Crypt::RSA;
use MIME::Base64;

sub Generate {
    my $class = shift;
    my(%opts) = @_;
    $opts{bits} //= 2048;
    $opts{password} //= '';
    $opts{comment} //= '';
    my $rsa = Crypt::RSA->new(ES => 'PKCS1v15');
    my($public, $private) = $rsa->keygen(
        Size     => $opts{bits},
        Password => $opts{password},
        Identity => $opts{comment},
        KF       => 'SSH',
        PKF      => 'SSH',
    );
}

return 42;
