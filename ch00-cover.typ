// ============================================================
//  封面 + 前言
// ============================================================
#import "theme.typ": *
#import "diagrams.typ": *
#import "cover-new.typ": cover-illustration

// ---------- 封面 ----------
#page(
  paper: "a5",
  margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
)[
  // 明亮背景:暖白到薄荷淡青的对角渐变,清新有呼吸感
  #block(width: 100%, height: 100%, fill: gradient.linear(
    angle: 145deg,
    rgb("#fdfdfb"),     // 暖白
    rgb("#f1f8f6"),     // 极淡薄荷
    rgb("#e8f4f1"),     // 淡青绿
  ))[
    #align(center + horizon)[
      #pad(x: 1.4cm)[
        #block(height: 2.2cm)[]

        // ===== 顶部:英文小标题 + 活力色线 =====
        #align(center)[
          #text(size: 8.5pt, fill: rgb("#2a9d8f"), tracking: 6pt, font: ("New York", "Times New Roman"), weight: "bold")[
            PREPOSITIONS
          ]
          #v(0.5em)
          #block(width: 2.4cm, height: 0pt, stroke: 1pt + rgb("#ee6c4d").transparentize(20%))
        ]

        #block(height: 1.2cm)[]

        // ===== 中部:主视觉 =====
        #align(center)[
          #cover-illustration()
        ]

        #block(height: 0.9cm)[]

        // ===== 标题区 =====
        #align(center)[
          #text(size: 34pt, weight: "bold", fill: rgb("#1f3a5f"), font: "Songti SC", tracking: 0.18em)[
            英语介词
          ]
          #v(0.5em)
          #text(size: 11pt, fill: rgb("#ee6c4d"), weight: "bold", tracking: 0.4em)[
            从 原 理 到 运 用
          ]
          #v(0.7em)
          #text(size: 8pt, fill: rgb("#6b8aa5"), font: ("New York", "Times New Roman"), tracking: 0.15em, style: "italic")[
            From Principle to Practice
          ]
        ]

        #v(1fr)

        // ===== 底部:tagline + 分割线 =====
        #align(center)[
          #block(width: 2.4cm, height: 0pt, stroke: 0.5pt + rgb("#9bb4c9"))
          #v(0.8em)
          #text(size: 8.5pt, fill: rgb("#4a6a85"), tracking: 0.1em)[
            用画图的方式，重新理解每一个介词
          ]
          #v(0.4em)
          #text(size: 8pt, fill: rgb("#9bb4c9"), font: ("New York", "Times New Roman"), tracking: 0.2em, weight: "bold")[
            A VISUAL GUIDE
          ]
        ]

        #block(height: 1.6cm)[]
      ]
    ]
  ]
]

// ---------- 版权页 ----------
#page(
  paper: "a5",
  margin: (x: 2cm, y: 3cm),
)[
#align(center + horizon)[
  #text(size: 16pt, weight: "bold", fill: c-primary)[英语介词 · 从原理到运用]
  #v(1em)
  #line(length: 30%, stroke: 0.5pt + c-line)
  #v(2em)
  #text(size: 10pt, fill: c-grey)[
    本书以"画图讲原理"为核心方法,从空间关系和时间轴出发,\

    系统梳理英语介词的意义家族、易混辨析与高频搭配。\

    适用于中学、大学及 IELTS / TOEFL 备考。
  ]
  #v(3em)
  #text(size: 9pt, fill: c-line)[ 2026 · 仅供个人学习使用]
]
]

// ---------- 目录 ----------
#page(
  paper: "a5",
  margin: (top: 2cm, x: 1.8cm),
)[
  #text(size: 20pt, weight: "bold", fill: c-primary)[目录]
  #line(length: 100%, stroke: 1pt + c-primary)
  #v(0.8em)
  // 一级标题(章节):加粗、蓝色(序号由 heading numbering 自动提供,与标题同一行)
  #show outline.entry.where(level: 1): it => {
    v(0.3em)
    text(weight: "bold", size: 10pt, fill: c-primary)[#it]
  }
  // 二级标题(小节):正常字重、黑色、缩进(不编号)
  #show outline.entry.where(level: 2): it => {
    block(inset: (left: 1.8em))[
      #text(size: 9pt)[#it]
    ]
  }
  #outline(
    title: none,
    indent: 0pt,
    depth: 2,
  )
]

// ---------- 前言 ----------
#page(
  paper: "a5",
  margin: (top: 2cm, x: 1.8cm),
)[
  #heading(level: 1, numbering: none)[前言]

  #v(0.5em)

  介词,可能是英语里最让中国学生头疼的一类词。

  我们背了无数条规则:"在上午用 #hl[in]," "在星期几用 #hl[on]," "具体时刻用 #hl[at]" —— 可一转身就分不清 #en[in the morning] 和 #en[on Monday morning],记不住 #en[on the bus] 和 #en[in a car] 到底为什么不同。

  #principle(title: "本书的核心主张")[
    介词不是简单的"翻译对应"。它同时涉及 #cn-hl[场景关系]、#cn-hl[说话者的观察方式]、#cn-hl[句法构式] 和 #cn-hl[英语惯例]。\

    图像帮助我们理解原型；对已经惯例化的表达，还要结合句块和真实语境学习。
  ]

  这本书的方法是:

  #example((
    [#text(weight: "bold", fill: c-primary)[① 看图] —— 每个介词都配一幅示意图,用红球(对象)和灰盒(参照物)告诉你"它在哪里"。],
    [#text(weight: "bold", fill: c-primary)[② 悟构形] —— 看同一场景怎样因观察方式不同而选择不同介词。],
    [#text(weight: "bold", fill: c-primary)[③ 用搭配] —— 每个介词配 IELTS 写作口语高频例句,把原理变成实战。],
    [#text(weight: "bold", fill: c-primary)[④ 辨惯例] —— 区分透明空间义、隐喻义、惯例化构式和固定搭配。],
  ))

  #tip(title: "怎么读这本书")[
    不要从头到尾一口气读完。建议:

    - 第一遍:只看图和原理,建立画面感;
    - 第二遍:细读每条的辨析和例句;
    - 第三遍:完成练习并解释选择理由，再用附录复习。

    本书主要面向有基础语法知识的 B1—B2 学习者及 IELTS / TOEFL 备考者。
  ]

  #align(right)[
    #v(1em)
    #text(size: 10pt, fill: c-grey)[编者]
    #linebreak()
    #text(size: 9pt, fill: c-grey)[2026 年]
  ]
]
