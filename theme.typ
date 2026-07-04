// ============================================================
//  主题样式  theme.typ
//  英语介词原理书 · 排版主题与组件函数
// ============================================================

#import "@preview/cetz:0.4.2": canvas, draw

// ---------- 全局配色方案 ----------
#let c-primary   = rgb("#1a5fb4")   // 主蓝 (标题/强调)
#let c-accent    = rgb("#c0392b")   // 强调红 (重点词/红球)
#let c-place     = rgb("#27ae60")   // 方位绿
#let c-time      = rgb("#2980b9")   // 时间蓝
#let c-move      = rgb("#d35400")   // 方向橙
#let c-abstract  = rgb("#8e44ad")   // 抽象紫
#let c-soft      = rgb("#ecf0f1")   // 浅灰背景
#let c-soft2     = rgb("#e8eef5")   // 浅蓝灰
#let c-note-bg   = rgb("#fff8e1")   // 提示黄
#let c-note-bd   = rgb("#f39c12")
#let c-story-bg  = rgb("#f3e9f7")   // 词源紫
#let c-story-bd  = rgb("#8e44ad")
#let c-warn-bg   = rgb("#fdedec")   // 警示红
#let c-warn-bd   = rgb("#c0392b")
#let c-grey      = rgb("#636e72")
#let c-line      = rgb("#b2bec3")

// ---------- 基础文字设置(参考,实际由 main.typ 控制) ----------
#let base-text = (
  font: ("Songti SC", "Times New Roman"),
  lang: "zh",
  region: "cn",
  size: 9pt,
)

// 英文专用:用衬线体让英文更优雅
#let en(body) = text(font: ("New York", "Times New Roman"), body)
// 英文无衬线(用于标注)
#let en-sans(body) = text(font: ("Helvetica Neue", "Arial"), body)
// 小号文字
#let small(body) = text(size: 8.5pt, fill: c-grey, body)

// ============================================================
//  组件函数
// ============================================================

// ---- 介词条目标题:大号介词词头 ----
#let prep-head(word, phonetic: "", cn) = {
  block(width: 100%)[
    #set text(size: 12.5pt, weight: "bold", fill: c-accent, font: ("New York", "Times New Roman"))
    #en(word)
    #if phonetic != "" [
      #text(size: 9pt, weight: "regular", fill: c-grey, font: ("Helvetica Neue", "Arial"))[ /#phonetic/ ]
    ]
    #h(0.5em)
    #text(size: 10pt, weight: "bold", fill: c-primary)[#cn]
  ]
}

// ---- 框图:彩色侧边条的提示框 ----
#let callout(title: "", body-color: c-note-bg, border-color: c-note-bd, icon: "💡", body) = {
  block(
    width: 100%,
    spacing: 0.8em,
    breakable: false,
    fill: body-color,
    stroke: (left: 3pt + border-color),
    inset: (x: 12pt, y: 8pt),
    radius: 4pt,
  )[
    #set par(first-line-indent: 0pt)
    #if title != "" [
      #text(weight: "bold", fill: border-color)[#icon #title]
      #linebreak()
    ]
    #body
  ]
}

// 记忆提示
#let tip(title: "", body) = callout(title: title, body-color: c-note-bg, border-color: c-note-bd, icon: "💡", body)
// 词源/起源故事
#let story(title: "起源故事", body) = callout(title: title, body-color: c-story-bg, border-color: c-story-bd, icon: "📜", body)
// 易错警示
#let warn(title: "易错点", body) = callout(title: title, body-color: c-warn-bg, border-color: c-warn-bd, icon: "⚠️", body)
// 原理
#let principle(title: "原理", body) = callout(title: title, body-color: c-soft2, border-color: c-primary, icon: "🔑", body)

// ---- 关键词高亮 ----
#let kw(body) = text(weight: "bold", fill: c-accent, body)       // 重点介词
#let hl(body) = text(fill: c-accent, weight: "bold", body)        // 高亮英文
#let cn-hl(body) = text(fill: c-primary, weight: "bold", body)    // 高亮中文

// ---- 例句框 ----
#let example(items) = {
  let arr = if type(items) == array { items } else { (items,) }
  block(width: 100%, spacing: 0.6em, inset: (left: 8pt, right: 4pt, y: 2pt))[
    #set text(size: 9pt)
    #set par(first-line-indent: 0pt)
    #for it in arr {
      text(fill: c-grey)[▸]
      h(0.3em)
      it
      h(0.2em)
      linebreak()
    }
  ]
}

// ---- 词义编号小标签(圆形数字徽章) ----
// 注意:Typst 的 circle(fill:...) 会把填充盖在内容上,导致数字被遮。
// 用 box(fill, radius:100%) 做圆形,content 渲染在 fill 之上。
// 外层用 block 保证左对齐,不受段落首行缩进影响
#let sense-tag(num, label) = block(width: 100%, spacing: 0.6em)[
  #box(
    fill: c-primary,
    width: 1.1em,
    height: 1.1em,
    radius: 100%,
    baseline: 0%,
  )[
    #align(center + horizon)[
      #text(fill: white, weight: "bold", size: 8pt)[#num]
    ]
  ]
  #h(0.4em)
  #text(weight: "bold", fill: c-primary)[#label]
]

// ============================================================
//  绘图基础元素 (cetz)  ——  统一的视觉语言
//  红球 = 被描述对象   灰盒 = 参照物   虚线 = 关系
// ============================================================

// 红球(被描述对象)默认半径 0.35
#let draw-ball(p, r: 0.35, fill: c-accent, name: "ball") = {
  canvas({
    import draw: *
    circle(p, radius: r, fill: fill, name: name)
  })
}

// ---- 图注 ----
#let figure-counter = counter("book-figure")

#let caption(body) = {
  figure-counter.step()
  align(center)[
    #context {
      let num = figure-counter.get().first()
      block(width: 100%)[
        #set text(size: 8.5pt, fill: c-grey)
        #align(center)[
          #text(weight: "bold")[图 #num]
          #h(0.45em)
          #body
        ]
      ]
    }
  ]
}

// ============================================================
//  章节扉页(独占整页,用独立 page 块保证垂直居中)
//  在 page body 顶层,horizon 对齐才生效
// ============================================================
#let chapter-page(num, cn-title, en-title, color: c-primary) = [
  #page(
    paper: "a5",
    margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
    header: none,
  )[
    // h1 标题:供目录(outline)使用,带自动编号,正文渲染被 main.typ 的 show rule 隐藏
    #heading(level: 1)[#cn-title]
    #align(center + horizon)[
      #pad(x: 1.5cm)[
        // 上方装饰短线
        #block(width: 2.5cm, height: 0pt, stroke: 0.8pt + color.transparentize(40%))
        #v(1.5em)

        // 大号章节数字(半透明,视觉焦点)
        #text(size: 72pt, weight: "bold", fill: color.transparentize(55%), font: ("New York", "Times New Roman"), tracking: -2pt)[
          #en(num)
        ]

        #v(-0.3em)
        // 中间装饰线
        #block(width: 3.5cm, height: 0pt, stroke: 1.2pt + color)
        #v(0.8em)

        // 中文主标题
        #text(size: 26pt, weight: "bold", fill: color, tracking: 0.15em)[#cn-title]

        #v(0.5em)
        // 英文副标题
        #text(size: 10pt, fill: c-grey, tracking: 0.3em, font: ("New York", "Times New Roman"))[#en(en-title)]
      ]
    ]
  ]
]

// 兼容:chapter-title 保留为空(防止 show rule 报错),实际扉页用 chapter-page
#let chapter-title(num, cn-title, en-title, color: c-primary) = []

// ---- 小节标题 ----
#let section-title(num, title, color: c-primary) = {
  v(0.5em)
  block(width: 100%, spacing: 1em)[
    #text(size: 12.5pt, weight: "bold", fill: color)[
      #box(fill: color, inset: (x: 6pt, y: 1pt), radius: 2pt)[
        #text(fill: white, size: 10pt)[#num]
      ]
      #h(0.4em)#title
    ]
  ]
  v(-0.3em)
}

// ---- 对比表 ----
#let compare-table(..rows) = {
  let data = rows.pos()
  table(
    columns: data.len() * (1fr,),
    align: (left + horizon,) * data.len(),
    stroke: 0.5pt + c-line,
    inset: 7pt,
    ..data.enumerate().map(((i, col)) => {
      if i == 0 {
        (table.cell(fill: c-soft2)[#text(weight: "bold")[#col]],)
      } else {
        (table.cell()[#col],)
      }
    }).flatten()
  )
}

// ---- 用法公式(结构骨架) ----
#let formula(body) = {
  align(center)[
    #block(spacing: 0.8em)[
      #box(
        fill: c-soft,
        inset: (x: 14pt, y: 6pt),
        radius: 5pt,
        stroke: 0.8pt + c-line,
      )[
        #text(weight: "bold", font: ("New York"))[#en-sans(body)]
      ]
    ]
  ]
}
