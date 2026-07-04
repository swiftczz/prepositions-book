// ============================================================
//  第四部分 · 时间介词详解
// ============================================================
#import "theme.typ": *
#import "diagrams.typ": *

#chapter-page("04", "时间介词", "Prepositions of Time", color: c-time)

时间介词经常借用空间构形，但具体选择还受到 #cn-hl[日历单位、事件类型、参照时间、完成性和英语惯例] 影响。本章把这些因素分开处理。

#principle[
  分析时间介词时依次问：
  - 它标出的是时间位置、持续长度、起点、边界，还是期限？
  - 后面的补语是日期、时长、事件，还是一个从句？
  - 句子把事件看成持续状态、重复事件，还是有完成点的动作？
]

== at / on / in · 时间位置

#align(center)[
  #grid(
    columns: (1fr,) * 3,
    column-gutter: 2pt,
    align: center,
    [#scale(x: 72%, y: 72%, reflow: true)[#fig-time-at()]\ #text(weight: "bold", fill: c-accent)[at]\ #small[时间锚点]],
    [#scale(x: 72%, y: 72%, reflow: true)[#fig-time-on()]\ #text(weight: "bold", fill: c-accent)[on]\ #small[日/日期]],
    [#scale(x: 72%, y: 72%, reflow: true)[#fig-time-in()]\ #text(weight: "bold", fill: c-accent)[in]\ #small[时间范围]],
  )
]

#table(
  columns: (1.5cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*介词*],
    table.cell(fill: c-soft2)[*高频构式*],
    table.cell(fill: c-soft2)[*例子*],
  ),
  [#hl[at]], [时钟时刻及惯例化锚点], [at 5 o'clock / at noon / at night],
  [#hl[on]], [日、日期及被具体日期限定的时段], [on Monday / on 4 July / on Monday morning],
  [#hl[in]], [月、年、季节及一天中的一般时段], [in July / in 2026 / in summer / in the morning],
)

#principle[
  “点—日—范围”是比“短—中—长”更可靠的记法。时段长度只能帮助入门，不能独立决定介词：#en[at Christmas] 可能覆盖多天，而 #en[in a minute] 很短。
]

#warn(title: "修饰语会改变时间构形")[
  #example((
    [in the morning —— 一般上午],
    [on Monday morning —— 被具体日期限定],
    [on a cold morning —— 被构形成某一个具体早晨],
    [at night —— 惯例化表达],
    [in the night —— 强调某一夜内部发生的事情],
  ))
]

#tip(title: "英美差异")[
  周末常见 #en[on the weekend]（美式英语）和 #en[at the weekend]（英式英语）。两者都应识别，写作时保持同一变体即可。
]

=== in + 一段时间：两个不同构式

#example((
  [I'll be back #hl[in] ten minutes. —— 从现在算，十分钟后回来],
  [I finished the task #hl[in] an hour. —— 完成过程耗时一小时],
))

#principle[
  #en[in + duration] 不只用于将来时。它可以表示“从参照时刻之后”，也可以表示“完成某事所需的时间”。必须结合动词和语境判断。
]

== during vs for · 时间位置与持续长度

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    align: center,
    [#fig-time-during()\ #text(weight: "bold", fill: c-accent)[during]\ #small[位于事件范围内]],
    [#fig-time-for()\ #text(weight: "bold", fill: c-accent)[for]\ #small[持续长度]],
  )
]

#principle[
  #hl[during] 把一个事件放在另一事件或时间范围内部，回答“什么时候发生”。\

  #hl[for] 在持续构式中给出长度，回答“持续多久”；它在其他构式中还可以表示目的、受益者等关系。
]

#example((
  [The lights went out #hl[during] the meeting.],
  [The meeting lasted #hl[for] three hours.],
  [No one spoke #hl[during] the three hours. —— during 也能接带限定词的时长名词短语],
  [I booked a room #hl[for] the meeting. —— for 表目的，不等于 during],
))

#warn[
  不要只看后面是不是 “meeting” 或 “hours”。先判断句子要表达 #cn-hl[时间位置、持续长度还是目的]。
]

== since vs for · 起点与长度

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    align: center,
    [#fig-time-since()\ #text(weight: "bold", fill: c-accent)[since]\ #small[从起点到参照时间]],
    [#fig-time-for()\ #text(weight: "bold", fill: c-accent)[for]\ #small[一段长度]],
  )
]

#table(
  columns: (1.5cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*介词*],
    table.cell(fill: c-soft2)[*补语*],
    table.cell(fill: c-soft2)[*例子*],
  ),
  [#hl[since]], [起点：日期、时刻或事件], [since 2020 / since Monday / since the war],
  [#hl[for]], [持续长度], [for four years / for two days],
)

#principle[
  当参照时间是“现在”时，#en[since] 很常与现在完成时连用；但 #en[since] 本身并不表示动作连续不断。
]

#example((
  [I've lived here #hl[since] 2020. —— 持续状态],
  [She has visited twice #hl[since] 2020. —— 重复事件，并非连续动作],
  [It has been two years #hl[since] he left. —— since 后可接从句],
))

== until vs by · 边界与最迟时间

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    align: center,
    [#fig-time-until()\ #text(weight: "bold", fill: c-warn-bd)[until]],
    [#fig-time-by()\ #text(weight: "bold", fill: c-warn-bd)[by]],
  )
]

#principle[
  #hl[until] 标出状态或活动延伸到的 #cn-hl[右侧边界]。\

  #hl[by] 把某个时间设为 #cn-hl[最迟参照点]；完成可以更早。在叙事句中，它也可以只是建立观察时间，不一定带“紧迫感”。
]

#example((
  [I'll wait #hl[until] 5 pm. —— 等待延伸到 5 点],
  [Please submit the report #hl[by] Friday. —— 最晚周五提交],
  [#hl[By] 2020, he was living in Paris. —— 建立 2020 这一观察点，不是命令或期限],
  [We didn't leave #hl[until] midnight. —— 否定构式表示午夜才离开],
))

== before / after · 相对于事件的前后

#align(center)[#fig-time-before-after()]
#caption[以某个时刻或事件为参照建立前后关系]

#example((
  [before lunch / after dinner],
  [before 2020 / after the war],
  [before leaving / after finishing the report],
  [before we left / after the meeting ended],
))

#tip[
  #en[before] 和 #en[after] 后面既可接名词短语，也可接 #en[-ing] 形式或从句。学习时间介词时要同时学习它允许的补语形式。
]

== from…to 与 between…and

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    align: center,
    [#fig-time-from-to()\ #text(weight: "bold", fill: c-accent)[from…to]],
    [#fig-time-between()\ #text(weight: "bold", fill: c-accent)[between…and]],
  )
]

#principle[
  #hl[from…to] 常把状态或活动构形成覆盖整个起止区间。\

  #hl[between…and] 建立一个由两个边界围成的时间窗口；事件可以位于窗口内，也可以在语境支持时覆盖该区间。
]

#example((
  [The shop is open #hl[from] 9 #hl[to] 5. —— 营业状态覆盖整个区间],
  [The delivery will arrive #hl[between] 2 #hl[and] 4 pm. —— 到达发生在窗口内某时],
  [Temperatures remained between 10 and 15°C. —— 数值被限制在两个边界之间],
))

== within · 不超出边界

#hl[within] 直接编码“位于限定边界之内”，常用于期限、距离和能力范围：

#example((
  [Reply #hl[within] 24 hours.],
  [The station is #hl[within] walking distance.],
  [Keep the discussion #hl[within] the scope of the report.],
))

#principle[
  #example((
    [I'll finish it #hl[in] an hour. —— 可能表示完成所需时间约为一小时],
    [I'll finish it #hl[within] an hour. —— 明确表示不超过一小时],
  ))
  #en[within] 不是 #en[in] 的简单强调版，它突出不能越过的外边界。
]

== 时间关系总览

#tip(title: "按功能提问")[
  - 时间位置：#en[at / on / in / during] —— 事件位于什么时候？
  - 持续长度：#en[for / in] —— 持续或完成用了多久？
  - 起点：#en[since / from] —— 从何时开始？
  - 边界与期限：#en[until / by / within] —— 延伸到哪里或最迟何时？
  - 相对顺序：#en[before / after] —— 相对于参照事件在前还是在后？

  时间介词不是把空间图机械投影到时间轴。更可靠的方法是：先判断时间功能，再结合补语形式、事件类型和英语惯例。
]
