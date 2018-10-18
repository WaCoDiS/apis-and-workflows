#!/usr/bin/env bash
set -o pipefail

for cmd in {mvn,python,curl}; do
  if ! command -v ${cmd} > /dev/null; then
  >&2 echo "This script requires '${cmd}' to be installed."
    exit 1
  fi
done

ghrepo=google/google-java-format
groupid=com.google.googlejavaformat
artifactid=google-java-format
ver=1.6
classifier=all-deps

jar=${artifactid}-${ver}-${classifier}.jar
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f ${DIR}/${jar} ]; then
  repo="central::default::https://repo.maven.apache.org/maven2"
  if [[ ${ver} =~ ^.*-SNAPSHOT$ ]]; then
      repo="central::default::https://oss.sonatype.org/content/repositories/snapshots"
  fi
  mvn org.apache.maven.plugins:maven-dependency-plugin:2.9:get \
    -DremoteRepositories=${repo} \
    -DartifactId=${artifactid} \
    -DgroupId=${groupid} \
    -Dversion=${ver} \
    -Dclassifier=all-deps \
    -Dtransitive=false \
    -Ddest=${DIR}/${jar}
fi

java -ea                          \
  ${JAVA_OPTS}                    \
  -Xms512M                        \
  -Xmx1024M                       \
  -server                         \
  -jar ${DIR}/${jar} "$@"
