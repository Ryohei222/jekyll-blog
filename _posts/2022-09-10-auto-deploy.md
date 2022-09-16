---
layout: post
title: "自動デプロイできるようにした"
author: "@6Lgug"
tags: dev
excerpt_separator: <!--more-->
---

今までは記事を増やすたびに手動でビルドとデプロイをしていたけど、面倒くさいので GitHub Actions を使って自動化してみた。

やることは Jekyll でビルドして rsync で転送するだけだけど、Jekyll のテーマが依存している `therubyracer` という gem がうまくインストールできなくて苦戦していた。

いろいろ調べた結果、[execjs が入っていれば無理に libv8 関連の gem を入れなくても良いっぽい。](https://blog.dnpp.org/all_you_need_is_drop_livb8_gem) を読んで gemspec の `therubyracer` を `execjs` に変えるとうまく動いた。 