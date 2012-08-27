die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "argument 'web dump directory' required, eg: ./getUrls.sh ./websites/cms-46ce-unstable-enonic_vtnode2_8080/vtnode2/ "

cd $1

grep -ril "url" * | xargs perl -n -e'/<url>(.*)<\/url>/ && print $1 . "\n"'