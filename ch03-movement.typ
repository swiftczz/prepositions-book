// ============================================================
//  第三部分 · 方向 / 运动介词
// ============================================================
#import "theme.typ": *
#import "diagrams.typ": *

#chapter-page("03", "方向介词", "Prepositions of Movement", color: c-move)

本章研究介词短语怎样标出 #cn-hl[起点、路径、边界和目标]。这些关系常出现在运动事件中，也能描述静态延伸，例如 #en[The road runs through the village]。

#principle[
  当介词短语表达运动路径时，箭头是最有效的图像。\

  先判断介词短语在句中承担起点、路径还是目标；不要仅凭动词看起来“动态”就选方向介词。
]

// ============== to / towards ==============
== to · 朝着终点去

#align(center)[#fig-to()]
#caption[to 把参照项构形成路径的 #cn-hl[目标/终点]]

=== 原理
#principle[
  #hl[to] 标出路径的 #cn-hl[目标]。在完整的终结性运动句中，它通常表示抵达；在计划、尝试或抽象转移构式中，是否真正实现还由动词和语境决定。
]

#example((
  [I go #hl[to] school every day.],
  [Welcome #hl[to] China!],
  [Turn #hl[to] the right.],
  [Give it #hl[to] me. (给我 —— 对象的转移也是"to")]
))

#story(title: "to 的语义网络：目标与参照点")[
  现代 #en[to] 的许多用法都突出目标、接受者或参照点，但不同构式仍需分别学习:
  #example((
    [look forward #hl[to] the holiday —— #en[to] 引出期待的对象],
    [be used #hl[to] the noise —— #en[to] 引出适应对象],
    [ten #hl[to] three (差十分三点 —— 时间指向 3 点)],
  ))
]

== towards · 朝着(未必到达)

#align(center)[#fig-towards()]
#caption[towards 只强调 #cn-hl[方向],不在乎是否到达]

#warn(title: "to vs towards 的本质区别")[
  #table(
    columns: (1.6cm, 1fr, 1fr),
    align: (center, left, left),
    stroke: 0.5pt + c-line,
    inset: 7pt,
    [],
    table.cell(fill: c-soft2)[#text(weight: "bold")[#hl[to]]],
    table.cell(fill: c-soft2)[#text(weight: "bold")[#hl[towards]]],
    [终点],
    [把参照项设为 #cn-hl[路径目标]，完整运动句通常有抵达解读],
    [只给出 #cn-hl[方向]，不承诺抵达],
    [画面],
    [箭头扎进终点],
    [箭头指向方向],
    [例句],
    [I walked #hl[to] the door. (门是路径目标)],
    [I walked #hl[towards] him. (朝他走去,可能没到)],
  )
]

#example((
  [He ran #hl[towards] the door. (朝门跑去)],
  [She turned #hl[towards] me. (转向我)],
  [Move #hl[towards] the exit.],
))

#tip[
  美式英语常用 #hl[toward] (无 s),英式英语用 #hl[towards]。两者通用。
]

// ============== into / out of ==============
== into · 进入

#align(center)[#fig-into()]
#caption[into 把“内部”构形成路径目标]

=== 原理
#principle[
  #hl[into] 描述 #cn-hl[从外部越过边界，以内部为目标] 的路径。把它联想为 #en[in + to] 有助记忆，但现代英语中应把 #en[into] 当作一个整体介词。
]

#example((
  [He walked #hl[into] the room. (走进房间)],
  [The bird flew #hl[into] the cage.],
  [She jumped #hl[into] the pool.],
  [Translate this #hl[into] English. (翻译成英语 —— 抽象:进入新状态)],
))

#warn[
  #hl[in] vs #hl[into]:
  #example((
    [He is #hl[in] the room. ✓ (静态位置)],
    [He walked #hl[into] the room. ✓ (运动进入)],
    [He walked #hl[in] the room. ✓ (在房间内部走，位置关系)],
    [He put the chair #hl[in] the room. ✓ (动态事件，但介词短语描写结果位置)],
  ))
]

== out of · 从……出来

#align(center)[#fig-out-of()]
#caption[out of 描述 #cn-hl[从内部到外部] 的反向运动]

#example((
  [Get #hl[out of] the car! (下车)],
  [She came #hl[out of] the shop.],
  [The cat jumped #hl[out of] the box.],
  [I'm #hl[out of] money. (抽象:钱用光了 —— 从"有钱"状态出来)],
))

#principle[
  #hl[out of] 是 #hl[into] 的反义词,常用来表达 #cn-hl[离开某种状态]:
  #example((
    [out of danger (脱离危险) / out of work (失业) / out of breath (喘不过气)],
  ))
]

// ============== onto / off ==============
== onto · 到……上面

#align(center)[#fig-onto()]
#caption[onto 把某个表面构形成路径目标]

=== 原理
#principle[
  #hl[onto] 描述路径以某个表面为目标，并突出从原位置到表面的变化。它不要求“落下”，但通常产生位于表面的结果。
]

#example((
  [The cat jumped #hl[onto] the table. (跳上桌)],
  [He stepped #hl[onto] the stage. (走上舞台)],
  [Climb #hl[onto] the roof.],
))

== off · 从……离开(表面)

#align(center)[
  #canvas({
    import draw: *
    rect((-1.8, -0.9), (1.8, -0.4), fill: c-soft, stroke: 0.8pt + c-grey)
    circle((0, -0.05), radius: 0.4, fill: c-accent)
    line((0.3, -0.1), (2.2, 0.8), arrow: (size: 6pt), stroke: 1.2pt + c-accent)
    circle((2.4, 0.9), radius: 0.3, fill: c-accent.transparentize(40%))
    content((-0.3, 0.4), [#text(size: 7pt, fill: c-grey)[从表面离开]])
  })
]

#example((
  [Get #hl[off] the bus! (下车 —— 公交这类"on"的交通工具)],
  [The book fell #hl[off] the table. (从桌上掉下)],
  [Take #hl[off] your shoes. (这里 off 是小品词；也可说 take your shoes off)],
))

#principle[
  #en[off] 的句法身份要逐项判断：#en[off the table] 引出参照项；#en[take your shoes off] 中的 #en[off] 是可移动的小品词；#en[be off work / off duty] 是无显式补语的状态表达；#en[20% off] 是折扣构式。不要因为它们形式相同就强行作同一种分析。
  #example((
    [off work (下班) / off duty (不当班) / 20% off (打八折 —— 从价格"减下来")],
  ))
]

#warn(title: "上下车专项")[
  #table(
    columns: (1.6cm, 1fr, 1fr),
    align: (center, left, left),
    stroke: 0.5pt + c-line,
    inset: 7pt,
    [],
    table.cell(fill: c-soft2)[*公共/大型交通工具的惯例*],
    table.cell(fill: c-soft2)[*小型/私人车辆的惯例*],
    [上车],
  [get #hl[on] the bus / train / plane],
  [get #hl[in] the car / taxi],
    [下车],
  [get #hl[off] the bus / train / plane],
  [get #hl[out of] the car / taxi],
  )
]

// ============== through / across ==============
== through vs across · 穿过

#align(center)[
  #grid(
    columns: (1fr,) * 2,
    column-gutter: 10pt,
    align: center,
    [#fig-through()\ #text(weight: "bold", fill: c-primary)[through]\ #small[路径在范围内部展开]],
    [#fig-across()\ #text(weight: "bold", fill: c-primary)[across]\ #small[从范围一侧到另一侧]],
  )
]

#principle[
  这是常见易混对。下面的“内部/横跨”是原型，而不是对物体维度的绝对测试:

  #callout(body-color: c-note-bg, border-color: c-note-bd, icon: "💡")[
    #hl[through] = #cn-hl[路径在参照范围内部展开] (森林、隧道、人群)
    #h(1em)
    #hl[across] = #cn-hl[从一侧到另一侧横跨范围] (街道、河流、广场)
  ]
]

#example((
  [Walk #hl[through] the forest. (穿过森林 —— 在树木之中)],
  [Walk #hl[across] the street. (横过马路 —— 在路面上)],
  [Drive #hl[through] the tunnel. (穿过隧道)],
  [Swim #hl[across] the river. (游过河)],
  [Push #hl[through] the crowd. (挤过人群)],
  [The bridge stretches #hl[across] the river. (桥横跨河面)],
))

#story(title: "through 的内部路径原型")[
  #en[through] 适合把参照范围构形成路径展开的内部或通道；但现代选择仍取决于说话者怎样组织同一场景。\

  同一片公园既可说 #en[walk through the park]（突出在园内穿行），也可说 #en[walk across the park]（突出从一侧到另一侧）。两种说法改变的是路径构形，不是公园本身的物理维度。
]

// ============== along / past / around ==============
== along · 沿着

#align(center)[#fig-along()]
#caption[沿着一条线/边 #cn-hl[向前] 移动]

#example((
  [Walk #hl[along] the river. (沿河走)],
  [Drive #hl[along] the coast.],
  [I was walking #hl[along] the street when I saw her.],
))

== past · 经过

#align(center)[
  #canvas({
    import draw: *
    rect((0.5, -0.6), (1.8, 0.6), fill: c-soft, stroke: 0.8pt + c-grey)
    content((1.15, 0), [#text(size: 7pt, fill: c-grey)[参照物]])
    circle((-2.2, 0), radius: 0.25, fill: c-accent.transparentize(40%))
    line((-1.9, 0), (2.6, 0), arrow: (size: 6pt), stroke: 1.3pt + c-accent)
    circle((2.8, 0), radius: 0.25, fill: c-accent.transparentize(40%))
    content((-0.3, -0.9), [#text(size: 7pt, fill: c-grey)[从旁边经过])])
  })
]

#example((
  [He walked #hl[past] me without saying hello. (从我身旁走过)],
  [Drive #hl[past] the church. (开过教堂)],
  [The years went #hl[past]. (此处 past 没有补语，功能接近小品词/副词)],
))

#warn[
  #hl[past] (经过,介词) vs #hl[passed] (通过,动词过去式):
  #example((
    [He walked #hl[past] me. ✓ (past 是介词)],
    [He #hl[passed] me. ✓ (passed 是动词)],
    [✗ He walked passed me.],
  ))
]

== around · 绕着 / 环绕

#align(center)[
  #canvas({
    import draw: *
    circle((0, 0), radius: 0.6, fill: c-soft, stroke: 0.8pt + c-grey)
    circle((-1.8, 0), radius: 0.25, fill: c-accent.transparentize(40%))
    // 弧线绕一圈
    arc((-1.8, 0), start: 180deg, stop: -180deg, ccw: true, radius: 1.2, stroke: 1.3pt + c-accent)
    content((1.5, 1.3), [#text(size: 7pt, fill: c-grey)[绕一圈]])
  })
]

#example((
  [The earth moves #hl[around] the sun. (绕太阳转)],
  [We sat #hl[around] the table. (围桌而坐)],
  [Walk #hl[around] the lake. (绕湖走)],
  [#hl[Around] 50 people. (大约；属于数量近似构式)],
))

// ============== up / down ==============
== up / down · 方向词与小品词

#align(center)[#fig-up-down()]

#sense-tag("1", "up —— 向上；也有依赖视角或惯例的地理用法")
#example((
  [Climb #hl[up] the tree. (爬上树)],
  [Walk #hl[up] the hill. (向坡顶走)],
  [He moved #hl[up] north. (搬到北边；这里的 up 是惯用方向表达，不是地图规则)],
))

#sense-tag("2", "down —— 向下；也可沿线移动或出现在固定方向表达中")
#example((
  [The sun goes #hl[down]. (日落)],
  [Go #hl[down] the street. (沿街往前走；不必真的下坡)],
  [Calm #hl[down]. (冷静下来 —— 情绪"下降")],
))

#principle(title: "up / down 的隐喻")[
  英语中有许多“上升＝增加/活跃、下降＝减少/减弱”的隐喻；地理方向还会受到河流、道路、中心—边缘关系和地方惯例影响，不能统一还原成“地图上方/下方”。下列 #en[up/down] 多数是小品词，而不是后接补语的介词:
  #example((
    [speak #hl[up] (大声说 —— 声音"上去") / speak #hl[down] to (居高临下)],
    [cheer #hl[up] (振作) / break #hl[down] (崩溃)],
    [prices go #hl[up] / go #hl[down]],
  ))
]

== 路径关系总图：轨迹分类

把本章的核心路径词按关系分类:

#align(center)[
  #block(width: 100%, inset: 10pt, stroke: 0.6pt + c-line, radius: 6pt)[
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 12pt,
      row-gutter: 8pt,
      [#text(weight: "bold", fill: c-move)[📍 朝向终点]\ #small[to / towards]\ #small[into / out of]\ #small[onto / off]],
      [#text(weight: "bold", fill: c-move)[〰 穿过 / 沿]\ #small[through 内部路径]\ #small[across 跨越两侧]\ #small[along 沿线]\ #small[past 经过]\ #small[around 环绕]],
      [#text(weight: "bold", fill: c-move)[↕ 上下]\ #small[up / down]],
      [#text(weight: "bold", fill: c-move)[⤴ 起止]\ #small[from … to …]],
    )
  ]
]

#v(0.5em)

#tip[
  路径关系的快速判断:
  #formula[
    #text(fill: c-move)[问终点 → to / into / onto]
    #h(1em)
    #text(fill: c-move)[问路径 → through / across / along]
  ]
]

#tip(title: "IELTS Task 1 流程图实战")[
  路径介词是 IELTS Task 1 流程图描述中的常用工具:
  #example((
    [The water flows #hl[through] the filter #hl[into] the tank. (穿过过滤器进入水箱)],
    [The liquid passes #hl[through] the pipe and then #hl[into] the chamber. (从管道内部通过并进入腔室)],
    [A cable runs #hl[along] the outside of the pipe. (电缆沿管道外侧延伸)],
    [Waste is transported #hl[from] the factory #hl[to] the recycling center. (从工厂运到回收中心)],
  ))
  #en[through] 突出内部路径，#en[along] 突出沿长度方向；画流程图时要让介词与实际路径匹配。
]

到这里，我们已经建立了位置、起点、路径和目标的核心框架。下一章将分析时间关系，以及空间图像在哪些地方有效、哪些地方需要依靠时间构式。
