#!/usr/bin/env sh

mkdir -p "mythesis"
cd "mythesis"

cp -f "../docs/njuthesis-sample.tex"            .
cp -f "../docs/njuthesis-sample.bib"            .
cp -f "../source/njuthesis.dtx"                 .

curl -s -o "njuvisual.dtx" "https://mirror.nju.edu.cn/CTAN/macros/latex/contrib/njuvisual/njuvisual.dtx"
curl -s -o "njuvisual-curves.dtx" "https://mirror.nju.edu.cn/CTAN/macros/latex/contrib/njuvisual/njuvisual-curves.dtx"

xetex "njuthesis.dtx" > /dev/null
xetex "njuvisual.dtx" > /dev/null

rm *.dtx
rm *.ins
rm *.log
# rm *.md

cd ..