export DOC_DIR=docs
export INDEX_DOC=index.adoc

mkdir target
mkdir target/modules
mkdir target/modules/ROOT
cp -Lr $DOC_DIR target/modules/ROOT/pages

cp antora.yml target

cp nav.adoc target/modules/ROOT/

cp -Lr $INDEX_DOC target/modules/ROOT/pages


antora local-site.yml
