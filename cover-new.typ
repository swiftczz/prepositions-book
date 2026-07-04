// ============================================================
//  封面主视觉 (青春明亮版)  —— 明亮背景 + 鲜艳活力配色
// ============================================================
#import "@preview/cetz:0.4.2": canvas, draw

// 封面主视觉:明亮版空间关系剖面图
#let cover-illustration() = canvas(length: 1cm, {
  import draw: *

  // 配色 —— 青春活力:薄荷绿主调 + 珊瑚橙对象 + 深青标注
  let ink = rgb("#1f3a5f")        // 深青蓝(主文字/标注)
  let accent = rgb("#2a9d8f")     // 薄荷青绿
  let obj = rgb("#ee6c4d")        // 珊瑚橙(对象红球,明亮版)
  let obj-glow = rgb("#ee6c4d").transparentize(65%)
  let surface = rgb("#ffffff")    // 纯白立方体
  let surface-line = rgb("#9bb4c9") // 浅蓝灰棱线
  let label-grey = rgb("#6b8aa5")
  let tag = rgb("#e76f51")        // 标签强调橙

  // ---- 底部地面线 ----
  line((-3.6, -1.1), (3.6, -1.1), stroke: 0.7pt + surface-line.transparentize(35%))

  // ---- 主体:白色立方体(表示 "in" 的空间) ----
  let p1 = (-1.3, -0.9); let p2 = (1.3, -0.9)
  let p3 = (1.3, 1.1);  let p4 = (-1.3, 1.1)
  let off = (0.55, 0.4)
  let p5 = (p1.at(0) + off.at(0), p1.at(1) + off.at(1))
  let p6 = (p2.at(0) + off.at(0), p2.at(1) + off.at(1))
  let p7 = (p3.at(0) + off.at(0), p3.at(1) + off.at(1))
  let p8 = (p4.at(0) + off.at(0), p4.at(1) + off.at(1))

  // 后方棱(虚线)
  line(p5, p6, stroke: (dash: "dotted", paint: surface-line.transparentize(40%)))
  line(p6, p7, stroke: (dash: "dotted", paint: surface-line.transparentize(40%)))
  line(p8, p7, stroke: (dash: "dotted", paint: surface-line.transparentize(40%)))
  // 连接棱
  line(p1, p5, stroke: 0.6pt + surface-line)
  line(p2, p6, stroke: 0.6pt + surface-line)
  line(p3, p7, stroke: 0.6pt + surface-line)
  line(p4, p8, stroke: 0.6pt + surface-line)
  // 前方面(白色填充,表现立方体的"内部空间")
  rect(p1, p3, stroke: 0.9pt + surface-line, fill: surface.transparentize(20%))

  // ---- in: 橙球在立方体内部 ----
  circle((0, 0.1), radius: 0.28, fill: obj, name: "ball-in")
  circle((0, 0.1), radius: 0.42, fill: none, stroke: 0.35pt + obj-glow)

  // on: 橙球贴在立方体顶面
  circle((0.7, 1.32), radius: 0.2, fill: obj, name: "ball-on")

  // at: 橙点在立方体外的抽象位置
  circle((-2.1, -0.2), radius: 0.13, fill: obj, name: "ball-at")
  circle((-2.1, -0.2), radius: 0.34, fill: none, stroke: (dash: "dashed", paint: obj.transparentize(35%), thickness: 0.45pt))

  // ---- 青色标注线 + 标签 ----
  // in 标注
  line((0.28, 0.1), (2.2, -0.5), stroke: 0.45pt + accent.transparentize(20%))
  line((2.2, -0.5), (2.9, -0.5), stroke: 0.45pt + accent.transparentize(20%))
  content((2.9, -0.5), [#text(size: 9.5pt, fill: ink, font: ("New York", "Times New Roman"), weight: "bold", tracking: 1pt)[in]], anchor: "west")
  content((2.9, -0.78), [#text(size: 6pt, fill: label-grey, tracking: 0.5pt)[内部 / INSIDE]], anchor: "west")

  // on 标注
  line((0.9, 1.32), (2.2, 1.7), stroke: 0.45pt + accent.transparentize(20%))
  line((2.2, 1.7), (2.9, 1.7), stroke: 0.45pt + accent.transparentize(20%))
  content((2.9, 1.7), [#text(size: 9.5pt, fill: ink, font: ("New York", "Times New Roman"), weight: "bold", tracking: 1pt)[on]], anchor: "west")
  content((2.9, 1.42), [#text(size: 6pt, fill: label-grey, tracking: 0.5pt)[表面 / SURFACE]], anchor: "west")

  // at 标注
  line((-2.42, -0.2), (-3.0, 0.5), stroke: 0.45pt + accent.transparentize(20%))
  line((-3.0, 0.5), (-3.5, 0.5), stroke: 0.45pt + accent.transparentize(20%))
  content((-3.5, 0.5), [#text(size: 9.5pt, fill: ink, font: ("New York", "Times New Roman"), weight: "bold", tracking: 1pt)[at]], anchor: "east")
  content((-3.5, 0.22), [#text(size: 6pt, fill: label-grey, tracking: 0.5pt)[点 / POINT]], anchor: "east")
})
