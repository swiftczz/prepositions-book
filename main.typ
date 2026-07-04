// ============================================================
//  《英语介词 · 从原理到运用》  主入口
//  Prepositions: From Principle to Practice
// ============================================================

#import "theme.typ": *
#import "diagrams.typ": *

// ---------- PDF 元数据 ----------
#set document(
  title: "英语介词：从原理到运用",
  author: "编者",
  keywords: ("英语介词", "认知语义", "IELTS", "英语学习"),
)

// ---------- 全局页面与文字设置 ----------
#set page(
  paper: "a5",
  margin: (top: 2.0cm, bottom: 2.0cm, inside: 1.6cm, outside: 1.6cm),
)
#set text(
  font: ("Songti SC", "Times New Roman"),
  lang: "zh",
  region: "cn",
  size: 9pt,
)
#set par(leading: 0.75em, justify: true, first-line-indent: (amount: 2em, all: false))

// 英文统一用衬线体
#show regex("[A-Za-z]+"): it => text(font: ("New York", "Times New Roman"), it)

// ---------- 标题样式 ----------
// 只有 h1(章节)编号,h2/h3 不编号
#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 { numbering("1.", ..nums) }
})

// h1 标题由 chapter-page 扉页处理,这里隐藏正文中的 h1 渲染
// (heading 元素仍保留,供目录 outline 读取)
#show heading.where(level: 1): it => []

#show heading.where(level: 2): it => {
  v(1em)
  block(width: 100%, spacing: 0pt)[
    #text(size: 12.5pt, weight: "bold", fill: c-primary)[#it.body]
  ]
  v(1em)
}

#show heading.where(level: 3): it => {
  v(0.8em)
  text(size: 11pt, weight: "bold", fill: c-accent)[#it.body]
  v(0.5em)
}

// ---------- 页眉页脚 ----------
#set page(
  header: context {
    let page-num = here().page()
    if page-num > 1 [
      #set text(size: 8pt, fill: c-line)
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [英语介词 · 从原理到运用],
        [#page-num],
      )
      #v(-6pt)
      #line(length: 100%, stroke: 0.3pt + c-line)
    ]
  },
)

// ---------- 文档开始 ----------
#include "ch00-cover.typ"
#include "ch01-principles.typ"
#include "ch02-place.typ"
#include "ch03-movement.typ"
#include "ch04-time.typ"
#include "ch05-abstract.typ"
#include "ch06-phrases.typ"
#include "ch07-practice.typ"
#include "ch07-appendix.typ"
