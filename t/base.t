use Test::Spec;
use Test::More;

describe "Net::SSH::Key" => sub {
    it "compiles" => sub {
        use_ok("Net::SSH::Key");
    };
};

runtests;
