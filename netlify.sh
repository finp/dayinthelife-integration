cd /opt/build/repo
export DOC_DIR=docs
export INDEX_DOC=index.adoc
export NAV_DOC=docs/nav.adoc

mkdir target
mkdir target/modules
mkdir target/modules/ROOT
cp -Lr $DOC_DIR target/modules/ROOT/pages

cp antora.yml target

cp $NAV_DOC target/modules/ROOT/

cp -Lr $INDEX_DOC target/modules/ROOT/pages


node_modules/.bin/antora  ./local-site.yml
