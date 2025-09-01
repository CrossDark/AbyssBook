# AbyssBook

一个黑色Typst模板

# 安装

## macOS

`git clone https://github.com/CrossDark/AbyssBook.git "$HOME/Library/Application Support/typst/packages/local/abyss-book/0.1.3"`

# 使用

```
#import "@local/abyss-book:0.1.3": *

#show: abyss-book.with(
  title: [标题],
  author: "作者",
  abstract: [简介],
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true)
)
```

# 更新计划

- [x] 边框花纹: 在页面边缘环绕诡异花纹
- [x] 使用`zh-kit`管理字体
