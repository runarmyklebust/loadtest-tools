die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "configuration missing, e.g run.sh ./configurations/cms-46ce-unstable-enonic_vtnode2_8080_crawler.properties "

java -jar ./lib/mightycrawler-jar-with-dependencies.jar $1
