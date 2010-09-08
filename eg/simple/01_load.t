use JSTAPd::Suite;

sub tests { 6 }

sub client_script {
    return <<'DONE';
ok(1, 'ok 1');
ok(!0, 'ok 0');
is('test', 'test', 'is');
isnt('test', 'dev', 'isnt');
like('test', new RegExp('es'), 'like');
is(tap$('test').innerHTML, 'DATA', 'getElementById');
DONE
}

sub html_body {
    return <<'DONE';
<div id='test'>DATA</div>
DONE
}
