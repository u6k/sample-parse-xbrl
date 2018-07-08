# XBRL解析サンプル _(sample-parse-xbrl)_

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> XBRL解析のサンプル・スクリプト

## Install

ビルドする。

```
$ docker build -t sample-xbrl-parse .
```

## Usage

解析するXBRLを入手して、`sample.xbrl`ファイルとして同フォルダに配置する。ここでは、証券コード`1301`の文書`ED2017062700544`に含まれる`jpcrp030000-asr-001_E00012-000_2017-03-31_01_2017-06-27.xbrl`を`sample.xbrl`として配置する

実行する。該当年度の総資産が表示される。

```
$ docker run --rm -v $(pwd):/var/myapp sample-xbrl-parse
```

実行した結果、次のように概要年度の総資産が表示される。

```
97391000000
```

同文書に含まれる`0101010_honbun_jpcrp030000-asr-001_E00012-000_2017-03-31_01_2017-06-27_ixbrl.htm`に連結経営指標等が記載されており、第94期(平成29年3月)の総資産額(百万円)を見ると、「97,391」となっており、取得した数値が正しいことが分かる。

## Link

参考リンク

- [EDINETのXBRL用のPythonライブラリを作った - Parser編 - Qiita](https://qiita.com/shoe116/items/dd362ad880f2b6baa96f)

## Maintainer

- u6k
  - [GitHub](https://github.com/u6k/)
  - [Twitter](https://twitter.com/u6k_yu1)
  - [u6k.Blog](https://blog.u6k.me/)

## Contribute

ライセンスの範囲内で、ご自由にご使用ください。

## License

[MIT License](https://github.com/u6k/sample-parse-xbrl/blob/master/LICENSE)
