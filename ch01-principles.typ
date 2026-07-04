// ============================================================
//  第一部分 · 核心原理
// ============================================================
#import "theme.typ": *
#import "diagrams.typ": *

#chapter-page("01", "介词的本质", "What Is a Preposition?", color: c-primary)

英语介词真正困难的地方，不是中文翻译太多，而是同一个场景可以被说话者用不同方式观察。学习介词既要看空间关系，也要看句子结构和英语长期形成的表达惯例。

== 介词究竟做什么

英语里的介词通常带一个补语，组成介词短语：

#formula[preposition + complement → prepositional phrase]

#example((
  [#hl[in] the room],
  [#hl[after] lunch],
  [#hl[with] great care],
  [#hl[before] leaving],
))

#principle(title: "一个更可靠的定义")[
  介词以补语为 #cn-hl[参照项]，勾勒另一个实体、事件或状态与它之间的关系。

  在 #en[The keys are in the box] 中，#en[the keys] 是焦点，#en[the box] 是参照项，#en[in] 把两者构形成“位于边界内部”的关系。
]

这里的“焦点”和“参照项”是语义角色，不等同于传统语法中的主语、宾语。介词短语也可以修饰一个事件：

#example((
  [We left #hl[after dinner]. —— 离开这个事件位于晚饭之后],
  [She solved it #hl[with patience]. —— 解决问题的方式具有耐心这一特征],
))

#tip[
  #en[preposition] 这个名称来自“通常放在补语之前”，它说明词序，不是介词意义的证明。理解介词要看现代英语中的关系与构式，不能只靠拆词源。
]

== 介词选择的四层模型

#principle[
  #formula[介词选择 = 场景关系 × 说话者构形 × 句法构式 × 英语惯例]
]

#table(
  columns: (1.7cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*层次*],
    table.cell(fill: c-soft2)[*要问的问题*],
    table.cell(fill: c-soft2)[*例子*],
  ),
  [场景关系], [客观上有什么边界、表面、方向或距离？], [人和学校、书和桌子],
  [说话者构形], [把参照项看成点、内部、表面、路径还是目标？], [at school / in the school],
  [句法构式], [介词与哪个动词、名词或形容词组合？], [put it on / jump onto],
  [英语惯例], [英语通常怎样表达，是否已固定化？], [on purpose / by chance],
)

#align(center)[#fig-construal-school()]
#caption[同一所学校可以被构形成活动地点、建筑内部或建筑表面]

#tip(title: "全书图示约定")[
  图中的 #text(fill: c-accent, weight: "bold")[红色对象] 是正在描述的焦点，#text(fill: c-grey, weight: "bold")[灰色形状] 是参照项，箭头表示方向或路径。章节标题使用的绿、橙、蓝、紫仅用于内容分类，不改变对象与参照项的身份。
]

#callout(title: "关键转变", body-color: c-note-bg, border-color: c-note-bd, icon: "💡")[
  介词图不是现实世界的唯一答案，而是 #cn-hl[说话者选择的观察方式]。所以同一场景出现不同介词并不矛盾；介词变化会改变焦点。
]

== 三个高频空间原型

#hl[at]、#hl[on]、#hl[in] 可以用三个高频原型来入门：

#align(center)[#fig-point-surface-volume()]
#caption[at、on、in 的定位点、表面关系与边界内部原型]

#table(
  columns: (1.5cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*介词*],
    table.cell(fill: c-soft2)[*原型构形*],
    table.cell(fill: c-soft2)[*典型例子*],
  ),
  [#hl[at]], [把参照项整体当作一个定位点，不展开内部结构], [at the door / at school],
  [#hl[on]], [突出接触、依附或支撑表面], [on the table / on the wall],
  [#hl[in]], [突出边界与内部包含关系], [in the room / in a circle],
)

#warn(title: "原型不是万能公式")[
  “点、面、容器”是帮助预测的原型，不是物理维度定律。#en[on the radio]、#en[at night]、#en[on purpose] 等表达还受到媒介构式、时间惯例或固定搭配影响。
]

== 从空间到时间：有动机，但不是一一复制

英语确实经常借空间组织时间：

#example((
  [#hl[at] 5 o'clock —— 把时刻作为锚点],
  [#hl[in] July —— 把事件放进月份范围],
  [#hl[before] lunch / #hl[after] dinner —— 以事件为前后参照],
  [#hl[throughout] the year —— 时间范围被完整覆盖],
))

但时间介词还受日历单位、修饰语和方言习惯影响：

#example((
  [at night / in the night],
  [in the morning / on Monday morning],
  [on the weekend (常见于美式英语) / at the weekend (常见于英式英语)],
))

#principle[
  空间隐喻提供 #cn-hl[动机]，英语惯例决定 #cn-hl[具体形式]。遇到时间介词时，既要想画面，也要核对它属于哪个时间构式。
]

== 位置、起点、路径和目标

与其把介词简单分成“静态”和“动态”，不如分析事件中的路径角色：

#table(
  columns: (1.7cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*角色*],
    table.cell(fill: c-soft2)[*关注点*],
    table.cell(fill: c-soft2)[*例子*],
  ),
  [位置 Location], [对象在哪里], [in the room / across the street],
  [起点 Source], [运动从哪里开始], [from the station / out of the box],
  [路径 Path], [运动经过哪里], [through the tunnel / along the river],
  [目标 Goal], [运动朝哪里结束], [to the station / into the room],
)

#example((
  [He walked #hl[in] the room. —— 他在房间内部走，动态事件＋位置关系],
  [He walked #hl[into] the room. —— 他越过边界进入房间，目标关系],
  [Put the book #hl[on] the table. —— 动词表示移动，但 #en[on] 描写结果位置],
  [The road runs #hl[through] the village. —— 句子描述静态道路，却使用路径构形],
))

#tip[
  不要只看动词是“动”还是“静”。先问介词短语在句中表达 #cn-hl[位置、起点、路径还是目标]。
]

== 一幅图能解释到什么程度

为了避免把记忆故事当成规则，本书把用法分成四级：

#table(
  columns: (1.4cm, 1fr, 1fr),
  align: (center + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.header(
    table.cell(fill: c-soft2)[*级别*],
    table.cell(fill: c-soft2)[*性质*],
    table.cell(fill: c-soft2)[*学习方法*],
  ),
  [A], [透明空间关系：in the box], [主要依靠图像理解],
  [B], [可理解的隐喻：in trouble], [从原型理解扩展],
  [C], [惯例化构式：on the bus], [图像＋用法对比],
  [D], [固定搭配：on purpose], [在真实句块中记忆],
)

图像越能直接预测用法，等级越接近 A；越依赖英语惯例，越需要结合搭配和语料。

== 介词与小品词不是一回事

#example((
  [look #hl[at] the picture —— #en[at] 后有补语，是介词],
  [turn the light #hl[off] —— #en[off] 没有自己的补语，是小品词],
  [look #hl[up to] her —— #en[up] 是小品词，#en[to] 引出补语],
  [look forward #hl[to] meeting her —— #en[to] 是介词，后接 #en[-ing]],
))

第六章会进一步区分介词动词和短语动词。这个词类区别很重要，因为它决定宾语位置和后接形式。

#tip(title: "接下来的阅读顺序")[
  全书依次处理空间关系、路径关系、时间关系、抽象关系与搭配，最后用练习检验理解。每一节都按“#cn-hl[看原型 → 比较构形 → 放进句子 → 检查惯例]”展开。
]
