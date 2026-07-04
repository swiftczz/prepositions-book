// ============================================================
//  附录 · 总览表 + 易混速查
// ============================================================
#import "theme.typ": *
#import "diagrams.typ": *

#chapter-page("A", "附录速查", "Quick Reference", color: c-grey)

把全书内容浓缩成几张表，方便你日常写作时 #cn-hl[快速查阅]。速查表只提示典型原型；遇到语境差异和固定搭配，应回到正文查看完整说明。

== 附录 A:本书覆盖的核心介词

#table(
  columns: (1.9cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*类别*],
    table.cell(fill: c-soft2)[*介词*],
    table.cell(fill: c-soft2)[*典型用法*],
  ),
  table.cell(fill: c-place.transparentize(85%))[#text(fill: c-place, weight: "bold")[方位]],
  [in, on, at, above, over, under, below, beneath, beside, between, among, opposite, near, by, inside, outside, within],
  [in the room / on the wall / at the door],
  table.cell(fill: c-move.transparentize(85%))[#text(fill: c-move, weight: "bold")[路径/方向词]],
  [to, towards, into, out of, onto, off, through, across, along, past, around, up, down, from],
  [go to school / walk through the park],
  table.cell(fill: c-time.transparentize(85%))[#text(fill: c-time, weight: "bold")[时间]],
  [at, on, in, since, for, until, by, before, after, during, within, from…to],
  [at 5:00 / on Monday / in July],
  table.cell(fill: c-abstract.transparentize(85%))[#text(fill: c-abstract, weight: "bold")[抽象]],
  [of, for, with, by, about, like, as, from, against, without, despite, except, besides, than, per],
  [a friend of mine / cut with a knife],
  table.cell(fill: c-accent.transparentize(85%))[#text(fill: c-accent, weight: "bold")[短语介词]],
  [because of, due to, in front of, by means of, in terms of, with regard to, in spite of, instead of, on behalf of, as well as, apart from],
  [because of rain / in terms of cost],
)

#tip[
  这是面向 B1—B2 学习者的核心范围，不是英语介词的穷尽清单。#en[beyond / throughout / via / regarding / considering / aboard / underneath / upon] 等词可在掌握本书模型后按“场景关系—构形—构式—惯例”继续分析。#en[up / down / off] 等词还可以作小品词，本表只按本书相关章节归类。
]

== 附录 B:常见易混组速查

这些对比适合复习，但表格只保留原型差异；完整限制条件和反例应回看正文。

#table(
  columns: (2.6cm, 1fr, 1fr),
  align: (left + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*对比*],
    table.cell(fill: c-soft2)[*区别*],
    table.cell(fill: c-soft2)[*例*],
  ),

  table.cell(fill: c-soft2)[#hl[in] / #hl[on] / #hl[at]],
  [典型原型：in 突出边界内部 / on 突出接触或支撑 / at 把参照项作为定位锚点],
  [in the room / on the desk / at the door],

  table.cell(fill: c-soft2)[#hl[above] / #hl[over]],
  [above 比较高度 / over 可突出上方、覆盖或跨越],
  [above the desk / a bridge over the river],

  table.cell(fill: c-soft2)[#hl[under] / #hl[below]],
  [under 常落在垂直投影范围内 / below 只要求位置或等级较低],
  [under the table / below zero],

  table.cell(fill: c-soft2)[#hl[between] / #hl[among]],
  [between 分别识别个体 / among 置于群体内部],
  [between A and B / among the crowd],

  table.cell(fill: c-soft2)[#hl[in front of] / #hl[opposite]],
  [同侧前方 / 对侧面对面],
  [in front of the house / opposite the bank],

  table.cell(fill: c-soft2)[#hl[through] / #hl[across]],
  [through 突出范围内部的路径 / across 突出从一侧到另一侧],
  [through the park / across the park],

  table.cell(fill: c-soft2)[#hl[since] / #hl[for]],
  [since + 起点 / for + 时长],
  [since 2020 / for 4 years],

  table.cell(fill: c-soft2)[#hl[by] / #hl[until]],
  [by 建立最迟期限或观察边界 / until 表示持续到边界],
  [submit by Friday / By 2020, the company had expanded / wait until Friday],

  table.cell(fill: c-soft2)[#hl[in time] / #hl[on time]],
  [in time 及时赶得上 / on time 准时],
  [arrive in time for dinner / on time],

  table.cell(fill: c-soft2)[#hl[except] / #hl[besides]],
  [except 排除(减) / besides 包含(加)],
  [Everyone except Tom left / Besides Tom, three others left],

  table.cell(fill: c-soft2)[#hl[in the end] / #hl[at the end]],
  [in the end 最终 / at the end (of) 末尾],
  [In the end, we left / at the end of the film],
)

== 附录 C:名词 + 介词 搭配速查

#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*名词 + in*],
    table.cell(fill: c-soft2)[*名词 + on*],
    table.cell(fill: c-soft2)[*名词 + 其他*],
  ),
  [increase in / fall in\ rise in / drop in\ change in / decline in\ interest in\ belief in],
  [effect on / impact on\ influence on\ emphasis on\ pressure on\ tax on\ ban on],
  [reason for / cause of\ solution to / key to\ demand for / need for\ advantage of/over/to\ difference between/in],
)

#tip[
  表中斜线表示关系不同，而不是可以无条件互换。例如 #en[an advantage of the plan] 描述方案本身的优点，#en[an advantage over another plan] 引出比较对象，#en[an advantage to users] 引出受益者。
]

== 附录 D:动词 + 介词 搭配速查

#table(
  columns: (2cm, 1fr),
  align: (left + horizon, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*构式*],
    table.cell(fill: c-soft2)[*常见搭配*],
  ),
  [动词 + on], [depend on / rely on / focus on / concentrate on / comment on / insist on],
  [动词 + to], [belong to / listen to / respond to / object to / contribute to / adapt to],
  [动词 + in], [participate in / result in / succeed in / believe in / be involved in / invest in],
  [动词 + with], [deal with / cope with / agree with / disagree with / compare with / mix with],
  [动词 + about], [talk about / think about / hear about / learn about / worry about / complain about],
  [其他], [look for / search for / suffer from / recover from / think of / dream of / apply for / pay for],
)

#warn(title: "IELTS 写作常用动词搭配")[
  #example((
    [#hl[depend on] / #hl[rely on] (依赖 —— Task 2 议论文极常用)],
    [#hl[result in] / #hl[lead to] (导致 —— 描述因果)],
    [#hl[contribute to] (促成 —— 描述因素)],
    [#hl[suffer from] (遭受 —— 描述问题)],
  ))
]

== 附录 E:资料与方法说明

本书的“原型—构形—构式—惯例”框架参考了认知语义学和现代英语语法对介词的分析。不同资料在本书中承担的作用如下：

- Rodney Huddleston & Geoffrey K. Pullum, #emph[The Cambridge Grammar of the English Language]（2002）：补语、介词与小品词等句法分析
- Andrea Tyler & Vyvyan Evans, #emph[The Semantics of English Prepositions]（2003）：空间场景、语义网络与多义关系
- Seth Lindstromberg, #emph[English Prepositions Explained]，修订版（2010）：面向学习者的空间解释与教学对比
- Cambridge Dictionary、Oxford Learner's Dictionaries：核对现代搭配、语域和英美差异
- IELTS 官方公开写作评分标准：核对“词汇资源”与准确、自然表达的关系；本书不把介词数量或短语生僻程度等同于分数

#tip[
  本书中的“常用”是教学筛选，不是严格频率排名。词源框仅作历史和记忆线索；遇到不透明搭配，应以现代词典和真实语料为准。
]

== 附录 F:四句话总结全书

#callout(title: "四句话总结全书", body-color: c-soft2, border-color: c-primary, icon: "🎓")[
  #cn-hl[第一句]：介词以补语为参照项，勾勒实体、事件或状态之间的关系。

  #cn-hl[第二句]：空间原型提供理解动机，但说话者构形、句法构式和英语惯例共同决定实际选择。

  #cn-hl[第三句]：分析路径时区分位置、起点、路径和目标；分析时间时区分位置、长度、起点、边界和期限。

  #cn-hl[第四句]：透明用法主要靠图理解，惯例化构式和固定搭配必须在完整句块中学习。
]

#align(center)[
  #line(length: 30%, stroke: 0.5pt + c-line)
  #v(0.3em)
  #text(fill: c-grey)[愿你在每一次使用介词时,]
  #linebreak()
  #text(fill: c-grey)[既能看见画面，也能看见构式与语境。]
  #v(0.3em)
  #text(size: 9pt, fill: c-line)[— 全书完 —]
]
