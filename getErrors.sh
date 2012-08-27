die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "argument 'web dump directory' required, eg: ./getErrors.sh ./websites/cms-46ce-unstable-enonic_vtnode2_8080/vtnode2/ "

cd $1

echo "******************************************"
echo "Error occuring rendering windows found: "
echo "******************************************"
grep -ril "Error occured rendering window" * | xargs perl -n -e'/<url>(.*)<\/url>/ && print $1 . "\n"'

echo "******************************************"
echo "Internal system error: "
echo "******************************************"
grep -ril "Internal system error" * | xargs perl -n -e'/<url>(.*)<\/url>/ && print $1 . "\n"'

echo "******************************************"
echo "Portal function errors: "
echo "******************************************"
grep -ril "undefined" * | xargs perl -n -e'/<url>(.*)<\/url>/ && print $1 . "\n"'

echo "******************************************"
echo "For HTTP Errors, see httperrors.txt under ./reports/<path> "
echo "******************************************"




