package Regexp::Pattern::Test::re_engine;

# AUTHORITY
# DATE
# DIST
# VERSION

our %RE = (
    contains_code_construct => {
        summary => 'Regexp which contains (?{ code }) construct',
        pat => qr/(?{ my $dummy=1 })/,
        description => <<'_',

This regex should die when compiled under e.g. <pm:re::engine::PCRE2> instead of
the default Perl regex engine.

_
    },
);

1;
# ABSTRACT: Regexp patterns to test loading under re::engine::*
