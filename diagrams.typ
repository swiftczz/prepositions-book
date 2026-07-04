// ============================================================
//  绘图函数库  diagrams.typ
//  英语介词原理书 · 所有 cetz 示意图的原语封装
//
//  视觉约定:
//    红球  = 被描述的对象 (the object)
//    灰盒  = 参照物       (the reference)
//    虚线  = 空间/时间关系
//    箭头  = 方向 / 运动
// ============================================================

#import "@preview/cetz:0.4.2": canvas, draw
#import "theme.typ": *

// 通用画布包装:body 是一个已经渲染好的 canvas 内容,这里只负责居中和限宽
#let fig(width: 100%, body) = {
  align(center)[
    #block(width: width, body)
  ]
}

// ============================================================
//  一、基础元素 (供组合使用)
// ============================================================
#let scene(body) = canvas({
  import draw: *
  // 地面线(可选,在 body 中按需调用 ground)
  body
})

// 地面 / 水平参考线
#let ground(name: "ground", x: -3, y: 0, w: 6) = canvas({
  import draw: *
  line((x, y), (x + w, y), name: name, stroke: 0.8pt + c-line)
})

// 红球
#let ball(p, r: 0.35, name: "o", fill: c-accent) = canvas({
  import draw: *
  circle(p, radius: r, fill: fill, name: name)
})

// 灰盒(参照物, 普通矩形)
#let box-ref(bl, tr, name: "ref", fill: c-soft) = canvas({
  import draw: *
  rect(bl, tr, fill: fill, stroke: 0.8pt + c-grey, name: name)
})

// ============================================================
//  二、方位介词示意图  (每个介词一张完整小图)
// ============================================================

// ---- IN: 在……里面 (容器包围) ----
#let fig-in() = fig[
  #canvas({
    import draw: *
    // 开口容器 (U 形)
    line((-1.4, -1), (-1.4, 0.8))
    line((-1.4, 0.8), (1.4, 0.8))
    line((1.4, 0.8), (1.4, -1))
    line((-1.7, -1), (1.7, -1), stroke: 0.8pt + c-line)
    // 红球在内部
    circle((0, -0.2), radius: 0.45, fill: c-accent)
    content((1.9, -0.5), [#text(fill: c-grey, size: 8pt)[容器]])
  })
]

// ---- ON: 在……表面 (接触) ----
#let fig-on() = fig[
  #canvas({
    import draw: *
    // 表面
    rect((-2, -0.9), (2, -0.4), fill: c-soft, stroke: 0.8pt + c-grey)
    // 红球贴在表面上方
    circle((0, 0), radius: 0.4, fill: c-accent)
    // 标注接触点
    line((0, -0.4), (0, -0.4), name: "p")
    content((1.3, -0.65), [#text(fill: c-grey, size: 8pt)[表面]])
  })
]

// ---- AT: 在一个点 ----
#let fig-at() = fig[
  #canvas({
    import draw: *
    // 水平线
    line((-2.5, 0), (2.5, 0), stroke: 0.8pt + c-line)
    // 一个点 (小圆 + 虚线圈强调)
    circle((0, 0), radius: 0.12, fill: c-accent)
    circle((0, 0), radius: 0.7, fill: none, stroke: (dash: "dashed", paint: c-accent))
    content((1.05, 0.5), [#text(fill: c-accent, size: 8pt)[定位点]])
  })
]

// ---- ABOVE: 在上方 (不接触) ----
#let fig-above() = fig[
  #canvas({
    import draw: *
    rect((-1.8, -0.8), (1.8, -0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, 1.2), radius: 0.4, fill: c-accent)
    line((0, 0.8), (0, -0.3), stroke: (dash: "dashed", paint: c-accent))
    content((1.1, 0.2), [#text(fill: c-grey, size: 8pt)[留有空隙]])
  })
]

// ---- OVER: 正上方 (覆盖/越过) ----
#let fig-over() = fig[
  #canvas({
    import draw: *
    rect((-1.4, -0.8), (1.4, -0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    // 覆盖的毯子形状
    rect((-1.8, 0.2), (1.8, 0.7), fill: c-accent.transparentize(50%), stroke: c-accent)
    content((1.3, 0.45), [#text(fill: white, size: 8pt)[覆盖]])
  })
]

// ---- UNDER: 位于参照物的垂直投影范围内 ----
#let fig-under() = fig[
  #canvas({
    import draw: *
    rect((-1.8, 0.3), (1.8, 0.8), fill: c-soft, stroke: 0.8pt + c-grey)
    rect((-1.8, -1.2), (1.8, 0.3), fill: c-soft2.transparentize(70%), stroke: none)
    circle((0, -0.7), radius: 0.4, fill: c-accent)
    line((0, 0.3), (0, -0.3), stroke: (dash: "dashed", paint: c-accent))
  })
]

// ---- BELOW: 只编码更低的位置，可不在正下方 ----
#let fig-below() = fig[
  #canvas({
    import draw: *
    line((-1.8, 0.5), (1.8, 0.5), stroke: 0.8pt + c-grey)
    content((-1.55, 0.85), [#text(size: 7pt, fill: c-grey)[基准高度]])
    circle((1.15, -0.65), radius: 0.4, fill: c-accent)
    line((1.65, 0.5), (1.65, -0.65), stroke: (dash: "dashed", paint: c-accent))
  })
]

// ---- BENEATH: 与 under 核心关系接近，但语域更书面 ----
#let fig-beneath() = fig[
  #canvas({
    import draw: *
    rect((-1.8, 0.3), (1.8, 0.8), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, -0.7), radius: 0.4, fill: c-accent)
    line((0, 0.3), (0, -0.3), stroke: (dash: "dashed", paint: c-accent))
    content((1.25, -0.75), [#text(size: 7pt, fill: c-grey)[书面语]])
  })
]

// ---- NEXT TO / BESIDE: 旁边 ----
#let fig-next-to() = fig[
  #canvas({
    import draw: *
    rect((-1.8, -0.8), (-0.4, 0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((1, -0.2), radius: 0.5, fill: c-accent)
    line((-0.4, -0.2), (0.5, -0.2), stroke: (dash: "dashed", paint: c-accent))
  })
]

// ---- BETWEEN: 两者之间 ----
#let fig-between() = fig[
  #canvas({
    import draw: *
    rect((-2.2, -0.8), (-1, 0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    rect((1, -0.8), (2.2, 0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, -0.2), radius: 0.45, fill: c-accent)
    content((-1.6, -1.1), [#text(size: 8pt, fill: c-grey)[A]])
    content((1.6, -1.1), [#text(size: 8pt, fill: c-grey)[C]])
  })
]

// ---- AMONG: 多者之中 ----
#let fig-among() = fig[
  #canvas({
    import draw: *
    circle((-1.6, 0), radius: 0.5, fill: c-soft, stroke: 0.8pt + c-grey)
    circle((1.6, 0), radius: 0.5, fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-0.9, 1.1), radius: 0.5, fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0.9, 1.1), radius: 0.5, fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, 0.3), radius: 0.35, fill: c-accent)
  })
]

// ---- IN FRONT OF / BEHIND: 前/后 ----
#let fig-front-behind() = fig[
  #canvas({
    import draw: *
    content((-2.6, 0.4), [#text(size: 8pt, fill: c-grey)[← 后]])
    content((2.1, 0.4), [#text(size: 8pt, fill: c-grey)[前 →]])
    // 后方球(紫)
    circle((-1.6, 0), radius: 0.4, fill: c-abstract.transparentize(30%))
    content((-1.6, -0.7), [#text(size: 7pt, fill: c-abstract)[behind]])
    // 参照盒 + 朝向箭头
    rect((-0.8, -0.5), (0.8, 0.5), fill: c-soft, stroke: 0.8pt + c-grey)
    line((0.8, 0), (1.3, 0), name: "a", arrow: (size: 5pt), stroke: 0.9pt + c-grey)
    // 前方球(红)
    circle((1.9, 0), radius: 0.4, fill: c-accent)
    content((1.9, -0.7), [#text(size: 7pt, fill: c-accent)[in front of]])
  })
]

// ---- OPPOSITE: 对面 ----
#let fig-opposite() = fig[
  #canvas({
    import draw: *
    line((-2.6, -0.8), (2.6, -0.8), stroke: 0.8pt + c-line)  // 马路
    rect((-2.2, -0.8), (-1, 0.4), fill: c-soft, stroke: 0.8pt + c-grey)
    rect((1, -0.8), (2.2, 0.4), fill: c-accent.transparentize(60%), stroke: c-accent)
    line((-1, -0.2), (1, -0.2), stroke: (dash: "dashed", paint: c-accent))
    content((-1.6, 0.6), [#text(size: 8pt, fill: c-grey)[学校]])
    content((1.6, 0.6), [#text(size: 8pt, fill: c-accent)[银行]])
  })
]

// ---- NEAR: 附近 ----
#let fig-near() = fig[
  #canvas({
    import draw: *
    rect((-2, -0.8), (-0.6, 0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((1.6, -0.2), radius: 0.4, fill: c-accent)
    line((-0.6, -0.2), (1.2, -0.2), stroke: (dash: "dashed", paint: c-line))
    content((0.1, 0.05), [#text(size: 7pt, fill: c-grey)[一段距离]])
  })
]

// ============================================================
//  三、方向 / 运动介词
// ============================================================

// ---- INTO: 进入 (带箭头) ----
#let fig-into() = fig[
  #canvas({
    import draw: *
    // 容器
    line((-1.5, -1), (-1.5, 1))
    line((-1.5, 1), (1.5, 1))
    line((1.5, 1), (1.5, -1))
    line((-1.8, -1), (1.8, -1), stroke: 0.8pt + c-line)
    // 球从外部进入
    circle((-2.6, 0.2), radius: 0.3, fill: c-accent.transparentize(40%))
    line((-2.3, 0.2), (0, 0.2), arrow: (size: 6pt), stroke: 1.2pt + c-accent)
    circle((0.3, 0.2), radius: 0.35, fill: c-accent)
  })
]

// ---- OUT OF: 出来 ----
#let fig-out-of() = fig[
  #canvas({
    import draw: *
    line((-1.5, -1), (-1.5, 1))
    line((-1.5, 1), (1.5, 1))
    line((1.5, 1), (1.5, -1))
    line((-1.8, -1), (1.8, -1), stroke: 0.8pt + c-line)
    circle((0.3, 0.2), radius: 0.35, fill: c-accent)
    line((0.6, 0.2), (2.5, 0.8), arrow: (size: 6pt), stroke: 1.2pt + c-accent)
    circle((2.7, 0.9), radius: 0.3, fill: c-accent.transparentize(40%))
  })
]

// ---- ONTO: 到……上面 ----
#let fig-onto() = fig[
  #canvas({
    import draw: *
    rect((-1.8, -0.9), (1.8, -0.4), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-2, 1), radius: 0.3, fill: c-accent.transparentize(40%))
    line((-1.75, 0.85), (-0.2, -0.1), arrow: (size: 6pt), stroke: 1.2pt + c-accent)
    circle((0, -0.05), radius: 0.4, fill: c-accent)
  })
]

// ---- THROUGH: 穿过内部 ----
#let fig-through() = fig[
  #canvas({
    import draw: *
    // 一个"隧道"状矩形
    rect((-1.5, -0.8), (1.5, 0.8), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-2.6, 0), radius: 0.3, fill: c-accent.transparentize(40%))
    line((-2.3, 0), (2.3, 0), arrow: (size: 6pt), stroke: 1.4pt + c-accent)
    circle((2.6, 0), radius: 0.3, fill: c-accent.transparentize(40%))
    content((0, 1.05), [#text(size: 7pt, fill: c-grey)[穿过内部]])
  })
]

// ---- ACROSS: 横越表面 ----
#let fig-across() = fig[
  #canvas({
    import draw: *
    rect((-1.5, -0.8), (1.5, 0.8), fill: c-soft, stroke: 0.8pt + c-grey)
    line((-1.4, 0.7), (1.4, -0.7), arrow: (size: 6pt), stroke: 1.4pt + c-accent)
    circle((-1.4, 0.7), radius: 0.25, fill: c-accent.transparentize(40%))
    content((0, 1.05), [#text(size: 7pt, fill: c-grey)[横越表面]])
  })
]

// ---- ALONG: 沿着 ----
#let fig-along() = fig[
  #canvas({
    import draw: *
    rect((-2.2, -0.3), (2.2, 0.3), fill: c-soft, stroke: 0.8pt + c-grey)
    line((-2, 0), (2, 0), arrow: (size: 6pt), stroke: 1.6pt + c-accent)
    content((0, 0.6), [#text(size: 7pt, fill: c-grey)[沿着边线前进]])
  })
]

// ---- TO: 以目标为路径终点 ----
#let fig-to() = fig[
  #canvas({
    import draw: *
    rect((0.8, -0.7), (2.2, 0.7), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-2, 0), radius: 0.3, fill: c-accent.transparentize(45%))
    line((-1.7, 0), (1.35, 0), arrow: (size: 6pt), stroke: 1.4pt + c-accent)
    circle((1.5, 0), radius: 0.18, fill: c-accent)
    content((1.5, -0.95), [#text(size: 7pt, fill: c-grey)[目标/终点]])
  })
]

// ---- TOWARDS: 朝着，路径不承诺抵达目标 ----
#let fig-towards() = fig[
  #canvas({
    import draw: *
    rect((0.8, -0.7), (2.2, 0.7), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-2, 0), radius: 0.3, fill: c-accent)
    line((-1.7, 0), (0.25, 0), arrow: (size: 6pt), stroke: 1.4pt + c-accent)
    line((0.25, 0), (0.75, 0), stroke: (dash: "dashed", paint: c-accent))
    content((1.5, -0.95), [#text(size: 7pt, fill: c-grey)[目标]])
  })
]

// ---- UP / DOWN: 上/下 ----
#let fig-up-down() = fig[
  #canvas({
    import draw: *
    // 斜坡
    line((-2, -0.8), (2, 0.8), stroke: 1pt + c-grey)
    // up 箭头
    line((-1.5, -0.5), (-0.5, 0.3), arrow: (size: 6pt), stroke: 1.4pt + c-place)
    content((-1.7, 0.1), [#text(size: 8pt, fill: c-place)[up]])
    // down 箭头
    line((0.5, 0.3), (1.5, -0.5), arrow: (size: 6pt), stroke: 1.4pt + c-move)
    content((1.5, 0.4), [#text(size: 8pt, fill: c-move)[down]])
  })
]

// ============================================================
//  四、时间轴示意图
// ============================================================

// 通用时间轴: 起点 x1, 终点 x2, y, 标注
#let timeline(x1: -2.8, x2: 2.8, y: 0, label: "时间") = canvas({
  import draw: *
  line((x1, y), (x2, y), name: "tl", stroke: 1pt + c-line)
  line((x2 - 0.2, y + 0.12), (x2, y), name: "ar1")
  line((x2 - 0.2, y - 0.12), (x2, y), name: "ar2")
  content((x2, y - 0.4), [#text(size: 8pt, fill: c-grey)[#label]])
})

// ---- AT (时刻点) ----
#let fig-time-at() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    circle((0, 0), radius: 0.12, fill: c-accent)
    line((0, 0.9), (0, 0.15), stroke: (dash: "dashed", paint: c-accent))
    content((0, 1.05), [#text(size: 9pt, fill: c-accent)[at 5:00]])
    content((2.7, -0.4), [#text(size: 8pt, fill: c-grey)[时间]])
  })
]

// ---- ON (一天) ----
#let fig-time-on() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-0.7, 0), (0.7, 0), stroke: 7pt + c-accent, cap: "round")
    content((0, 0.7), [#text(size: 9pt, fill: c-accent)[on Monday]])
  })
]

// ---- IN (较长时段) ----
#let fig-time-in() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-1.8, 0), (1.8, 0), stroke: 9pt + c-accent, cap: "round")
    content((0, 0.8), [#text(size: 9pt, fill: c-accent)[in 2024]])
  })
]

// ---- SINCE (从过去到现在) ----
#let fig-time-since() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    circle((-1.5, 0), radius: 0.12, fill: c-accent)
    line((-1.5, 0), (2.6, 0), stroke: 5pt + c-accent)
    circle((2.6, 0), radius: 0.12, fill: c-place)
    content((-1.5, 0.7), [#text(size: 9pt, fill: c-accent)[since 2020]])
    content((2.6, -0.5), [#text(size: 8pt, fill: c-place)[参照时间]])
  })
]

// ---- FOR (持续时长) ----
#let fig-time-for() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-1.4, 0), (1.4, 0), stroke: 7pt + c-accent, cap: "round")
    content((0, 0.75), [#text(size: 9pt, fill: c-accent)[for 3 hours]])
    content((0, -0.6), [#text(size: 8pt, fill: c-grey)[(一段长度)]])
  })
]

// ---- UNTIL (直到某点为止) ----
#let fig-time-until() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-2.4, 0), (1, 0), stroke: 6pt + c-accent)
    line((1, 0.4), (1, -0.3), stroke: 2pt + c-warn-bd)
    content((1, 0.7), [#text(size: 9pt, fill: c-warn-bd)[until 5pm]])
  })
]

// ---- BY (截止期限) ----
#let fig-time-by() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-2.4, 0), (1, 0), stroke: 6pt + c-accent)
    line((1, 0.4), (1, -0.3), stroke: (dash: "dashed", paint: c-warn-bd, thickness: 2pt))
    content((1, 0.75), [#text(size: 9pt, fill: c-warn-bd)[by Friday]])
    content((-0.7, -0.55), [#text(size: 7pt, fill: c-grey)[不晚于此时]])
  })
]

// ---- BEFORE / AFTER ----
#let fig-time-before-after() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    circle((0, 0), radius: 0.12, fill: c-place)
    content((0, -0.5), [#text(size: 8pt, fill: c-place)[参照点]])
    circle((-1.5, 0), radius: 0.1, fill: c-accent)
    content((-1.5, 0.6), [#text(size: 9pt, fill: c-accent)[before]])
    circle((1.5, 0), radius: 0.1, fill: c-abstract)
    content((1.5, 0.6), [#text(size: 9pt, fill: c-abstract)[after]])
  })
]

// ---- DURING (在某事件期间) ----
#let fig-time-during() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    rect((-1.4, -0.25), (1.4, 0.25), fill: c-accent.transparentize(70%), stroke: c-accent)
    circle((0, 0), radius: 0.1, fill: c-warn-bd)
    content((0, 0.7), [#text(size: 9pt, fill: c-accent)[during the meeting]])
  })
]

// ---- BETWEEN...AND: 事件位于两个时间边界构成的窗口内 ----
#let fig-time-between() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-1.7, 0.45), (-1.7, -0.35), stroke: 1.2pt + c-place)
    line((1.7, 0.45), (1.7, -0.35), stroke: 1.2pt + c-abstract)
    line((-1.7, 0.3), (1.7, 0.3), stroke: (dash: "dashed", paint: c-line))
    circle((0.35, 0), radius: 0.12, fill: c-accent)
    content((-1.7, 0.75), [#text(size: 8pt, fill: c-place)[2 pm]])
    content((1.7, 0.75), [#text(size: 8pt, fill: c-abstract)[4 pm]])
    content((0, -0.55), [#text(size: 7pt, fill: c-grey)[事件位于窗口内]])
  })
]

// ---- FROM...TO ----
#let fig-time-from-to() = fig[
  #canvas({
    import draw: *
    line((-2.8, 0), (2.8, 0), arrow: (size: 5pt), stroke: 1pt + c-line)
    line((-1.8, 0), (1.8, 0), stroke: 7pt + c-accent, cap: "round")
    circle((-1.8, 0), radius: 0.12, fill: c-place)
    circle((1.8, 0), radius: 0.12, fill: c-abstract)
    content((-1.8, 0.7), [#text(size: 9pt, fill: c-place)[from 9]])
    content((1.8, 0.7), [#text(size: 9pt, fill: c-abstract)[to 5]])
  })
]

// ============================================================
//  五、对比/隐喻图
// ============================================================

// 点-面-体 三兄弟 (核心原理图)
#let fig-point-surface-volume() = fig[
  #canvas({
    import draw: *
    // AT - 点
    content((-2.4, 1.6), [#text(size: 11pt, weight: "bold", fill: c-accent)[at]])
    line((-3, 1), (-1.8, 1), stroke: 0.8pt + c-line)
    circle((-2.4, 1), radius: 0.1, fill: c-accent)
    circle((-2.4, 1), radius: 0.5, stroke: (dash: "dashed", paint: c-accent))
    content((-2.4, 0.4), [#text(size: 7pt, fill: c-grey)[定位点]])

    // ON - 面
    content((0, 1.6), [#text(size: 11pt, weight: "bold", fill: c-accent)[on]])
    rect((-0.8, 0.5), (0.8, 0.7), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, 1), radius: 0.25, fill: c-accent)
    content((0, 0.2), [#text(size: 7pt, fill: c-grey)[面]])

    // IN - 体
    content((2.4, 1.6), [#text(size: 11pt, weight: "bold", fill: c-accent)[in]])
    line((1.8, 0.5), (1.8, 1.4))
    line((1.8, 1.4), (3, 1.4))
    line((3, 1.4), (3, 0.5))
    line((1.5, 0.5), (3.3, 0.5), stroke: 0.8pt + c-line)
    circle((2.4, 0.85), radius: 0.25, fill: c-accent)
    content((2.4, 0.2), [#text(size: 7pt, fill: c-grey)[体]])
  })
]

// 同一参照物的三种构形：地点、内部、表面。
#let fig-construal-school() = fig[
  #canvas({
    import draw: *
    // at: 远景定位
    rect((-3.2, -0.25), (-2.2, 0.55), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-2.7, 0.15), radius: 0.08, fill: c-accent)
    circle((-2.7, 0.15), radius: 0.55, fill: none, stroke: (dash: "dashed", paint: c-accent))
    content((-2.7, -0.7), [#text(size: 7pt, fill: c-primary)[at school：地点]])

    // in: 建筑内部
    rect((-0.5, -0.25), (0.5, 0.55), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, 0.1), radius: 0.18, fill: c-accent)
    content((0, -0.7), [#text(size: 7pt, fill: c-primary)[in the school：内部]])

    // on: 表面
    rect((2.2, -0.25), (3.2, 0.55), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((2.7, 0.75), radius: 0.18, fill: c-accent)
    content((2.7, -0.7), [#text(size: 7pt, fill: c-primary)[on the roof：表面]])
  })
]

// ============================================================
//  六、抽象介词示意图
// ============================================================

// ---- OF: 部分-整体 (一块从整体分离) ----
#let fig-of() = fig[
  #canvas({
    import draw: *
    // 大圆(整体)
    circle((0, 0), radius: 0.9, fill: c-soft, stroke: 0.8pt + c-grey)
    content((0, 1.15), [#text(size: 7pt, fill: c-grey)[整体]])
    // 一块切出来的扇形(部分),用红色
    circle((1.6, -0.3), radius: 0.3, fill: c-accent)
    // 虚线箭头从整体指向部分
    line((0.6, -0.2), (1.3, -0.3), stroke: (dash: "dashed", paint: c-accent, thickness: 0.4pt))
    content((1.6, -0.75), [#text(size: 7pt, fill: c-accent)[部分 of]])
  })
]

// ---- FOR: 朝向目标的箭头 ----
#let fig-for() = fig[
  #canvas({
    import draw: *
    // 对象(红球)
    circle((-1.6, 0), radius: 0.3, fill: c-accent)
    // 箭头朝向目标
    line((-1.3, 0), (0.8, 0), arrow: (size: 6pt), stroke: 1.2pt + c-accent)
    // 目标(灰圈)
    circle((1.2, 0), radius: 0.35, fill: c-soft, stroke: 0.8pt + c-grey)
    content((1.2, -0.65), [#text(size: 7pt, fill: c-grey)[目标]])
    content((-1.6, -0.65), [#text(size: 7pt, fill: c-accent)[for]])
  })
]

// ---- WITH: 两个对象并排(伴随) ----
#let fig-with() = fig[
  #canvas({
    import draw: *
    // 两个红球并排
    circle((-0.5, 0), radius: 0.3, fill: c-accent)
    circle((0.5, 0), radius: 0.3, fill: c-accent.transparentize(40%))
    // 连接线表示"在一起"
    line((-0.2, 0), (0.2, 0), stroke: (dash: "dashed", paint: c-accent, thickness: 0.4pt))
    content((0, 0.6), [#text(size: 7pt, fill: c-accent)[with 一起]])
  })
]

// ---- EXCEPT: 一堆中划掉一个(排除) ----
#let fig-except() = fig[
  #canvas({
    import draw: *
    // 5个小球排成一排
    let xs = (-1.8, -0.9, 0, 0.9, 1.8)
    for x in xs {
      circle((x, 0), radius: 0.22, fill: c-soft, stroke: 0.8pt + c-grey)
    }
    // 第三个划掉(红色 + 划线)
    circle((0, 0), radius: 0.22, fill: c-accent.transparentize(60%), stroke: c-accent)
    line((-0.18, 0.18), (0.18, -0.18), stroke: 1.5pt + c-accent)
    content((0, -0.7), [#text(size: 7pt, fill: c-accent)[except 划掉]])
  })
]

// ---- BESIDES: 一堆外加一个(包含) ----
#let fig-besides() = fig[
  #canvas({
    import draw: *
    // 4个小球排成一排
    let xs = (-1.8, -0.9, 0, 0.9)
    for x in xs {
      circle((x, 0), radius: 0.22, fill: c-soft, stroke: 0.8pt + c-grey)
    }
    // 外加一个红色球
    circle((1.8, 0), radius: 0.25, fill: c-accent)
    // 加号
    content((1.4, 0), [#text(size: 12pt, fill: c-accent, weight: "bold")[+]])
    content((1.8, -0.7), [#text(size: 7pt, fill: c-accent)[besides 再加]])
  })
]
