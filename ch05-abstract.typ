// ============================================================
//  第五部分 · 抽象关系介词
//  按功能分类:归属 / 原因 / 方式 / 伴随 / 比较 / 除外 / 其他
// ============================================================
#import "theme.typ": *
#import "diagrams.typ": *

#chapter-page("05", "抽象关系介词", "Abstract Relations", color: c-abstract)

前面几章主要处理可直接画出的空间和时间关系。本章讨论 #hl[of / for / with / by / about / like] 等高度多义介词：它们包含归属、方式、受益者、原因、比较等关系。

#callout(body-color: c-story-bg, border-color: c-story-bd, icon: "📜")[
  一些抽象义可以从空间原型获得启发，另一些已经高度惯例化。词源只作为历史线索和记忆辅助，不作为现代用法的证明。
]

#principle[
  本章学习法:
  - 先识别现代英语中的功能分支
  - 再看哪些分支与空间原型有清楚联系
  - 对固定构式和搭配，用完整句块学习
]

== 本章介词的功能分类

这些介词跨越多个功能类别。下表是本章的路线图：

#table(
  columns: (2.6cm, 1fr, 1fr),
  align: (left + horizon, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.cell(fill: c-soft2)[*功能类别*],
  table.cell(fill: c-soft2)[*包含介词*],
  table.cell(fill: c-soft2)[*核心含义*],
  [归属/关系], [#hl[of]], [……的(所属、来源)],
  [原因/目的], [#hl[for] / #hl[because of] / #hl[due to]], [因为 / 为了],
  [方式/手段], [#hl[by] / #hl[with] / #hl[in]], [通过 / 用],
  [伴随/让步], [#hl[with] / #hl[without] / #hl[despite]], [和 / 没有 / 尽管],
  [关于/比较], [#hl[about] / #hl[like] / #hl[as]], [关于 / 像],
  [除外], [#hl[except] / #hl[besides]], [除……之外],
  [其他], [#hl[from] / #hl[against] / #hl[than] / #hl[per]], [来源 / 反对 / 比 / 每],
)

#tip[
  很多介词 #cn-hl[身兼多职]（例如 #hl[with] 既是"伴随"又是"方式"）。分类只是为了建立初步印象，具体用法看下面每节的详解。
]

=== 四个高频词的语义网络

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  row-gutter: 8pt,
  [
    #block(fill: c-soft2, inset: 8pt, radius: 4pt)[
      #text(weight: "bold", fill: c-abstract)[of]
      #linebreak()
      #small[关系 → 部分/计量 → 材料/内容 → 固定搭配]
    ]
  ],
  [
    #block(fill: c-soft2, inset: 8pt, radius: 4pt)[
      #text(weight: "bold", fill: c-abstract)[for]
      #linebreak()
      #small[目的/受益者 → 原因 → 交换 → 持续时间]
    ]
  ],
  [
    #block(fill: c-soft2, inset: 8pt, radius: 4pt)[
      #text(weight: "bold", fill: c-abstract)[by]
      #linebreak()
      #small[邻近 → 手段/施事 → 差额/期限]
    ]
  ],
  [
    #block(fill: c-soft2, inset: 8pt, radius: 4pt)[
      #text(weight: "bold", fill: c-abstract)[with]
      #linebreak()
      #small[伴随 → 具有 → 工具 → 背景/原因]
    ]
  ],
)
#caption[语义网络表示相关分支，不表示每个用法都能从左向右机械推导]

// ============================================================
== 归属与关系 · of
// ============================================================


#prep-head("of", phonetic: "əv", "的、关于、来自")

#hl[of] 是英语中非常常见的介词。它经常译成中文“的”，但现代英语中的功能远不止所属关系。

#story(title: "历史线索（不是现代规则）")[
  #en[of] 与表示来源、分离的历史形式有关，这能帮助理解部分—整体关系；但现代 #en[of] 已形成多个构式。#en[a cup of tea] 是“容器/计量＋内容物”，不能简单分析成从某个整体切下一块。
]

#align(center)[#fig-of()]
#caption[部分—整体只是 of 的一个重要分支，不是所有 of 用法的唯一核心]

#sense-tag("1", "所属关系 (= 的)")
#example((
  [the capital #hl[of] China (中国的首都)],
  [the title #hl[of] the book (书名)],
  [a friend #hl[of] mine (我的一个朋友)],
))

#sense-tag("2", "部分-整体 / 计量")
#example((
  [a cup #hl[of] tea (一杯茶)],
  [a piece #hl[of] cake (一块蛋糕)],
  [most #hl[of] the people (大多数人)],
))

#sense-tag("3", "材料 / 内容")
#example((
  [a ring made #hl[of] gold (金戒指)],
  [a story #hl[of] love (关于爱的故事)],
))

#sense-tag("4", "动词/形容词后的固定搭配")
#example((
  [think #hl[of] (想到) / dream #hl[of] (梦想)],
  [afraid #hl[of] (害怕) / proud #hl[of] (骄傲)],
  [tired #hl[of] (厌倦) / full #hl[of] (充满)],
))

#warn(title: "IELTS 写作高频结构:名词 + of")[
  很多抽象名词搭配 of:
  #example((
    [an increase #hl[in] sales, but a rise #hl[of] 10%\ (in 接对象,of 接数量!)],
    [the impact #hl[of] tourism #hl[on] the environment],
    [the importance #hl[of] education],
  ))
]

// ============================================================
== 原因与目的 · for
// ============================================================


#prep-head("for", phonetic: "fər", "为了 / 因为 / 持续")

#hl[for] 是高度多义介词。目的和受益者容易与“目标”联系，但持续时间、交换、原因等用法不能都由一支箭头可靠预测。

#story(title: "记忆线索：面向目标")[
  “面向目标”适合记忆目的和受益者用法，如 #en[study for an exam]、#en[a gift for you]。对 #en[for two hours] 等持续构式，应单独学习，不必强行画成目标箭头。
]

#align(center)[#fig-for()]
#caption[目标箭头适用于 for 的目的/受益者分支]

#sense-tag("1", "目的:为了 (最常用)")
#example((
  [This gift is #hl[for] you. (给你的)],
  [I'm studying #hl[for] the exam. (为考试而学)],
  [Go #hl[for] a walk. (去散步 —— 目的)],
))

#sense-tag("2", "持续时间 (见第四章)")
#example((
  [I've waited #hl[for] 2 hours.],
  [I've lived here #hl[for] 10 years.],
))

#sense-tag("3", "原因:因为")
#example((
  [Thank you #hl[for] your help. (感谢你的帮助 —— 因为你的帮助)],
  [Forgive me #hl[for] being late.],
  [He's famous #hl[for] his novels. (因小说出名)],
))

#sense-tag("4", "对象/受益人")
#example((
  [I'll buy it #hl[for] my mother. (为妈妈买)],
  [It's good #hl[for] your health. (对健康有益)],
))

// ============================================================
== 方式与手段 · by / with
// ============================================================


#prep-head("by", phonetic: "baɪ", "被 / 通过 / 在旁 / 截止")

#hl[by] 常用于 IELTS 写作中的被动语态、方式、数据差额和时间边界，因此值得按不同构式分别掌握。

#story(title: "历史线索与现代分支")[
  #en[by] 的邻近、路径、手段、施事、差额和期限用法形成了多义网络。邻近画面可以帮助记忆一部分扩展，但被动语态中的施事 #en[by] 应作为成熟语法构式学习，不能解释成“某人站在动作旁边”。
]

#sense-tag("1", "被动语态:被 (由……)")
#example((
  [The book was written #hl[by] Hemingway.],
  [It was discovered #hl[by] a scientist.],
))

#sense-tag("2", "方式/手段:通过、乘 (重要!)")
#example((
  [travel #hl[by] bus / by train / by plane (乘公交 —— 注意无冠词!)],
  [pay #hl[by] credit card (刷卡支付)],
  [contact #hl[by] email (通过邮件)],
))
#warn[
  交通工具的规律:
  #example((
    [#hl[by] bus / by car / by train (无冠词 —— 强调"方式")],
    [#hl[in] a car / #hl[on] a bus (有冠词 —— 强调"具体在哪辆车")],
  ))
]

#sense-tag("3", "在……旁边 (方位)")
#example((
  [Stand #hl[by] the door. (门边)],
  [a house #hl[by] the sea. (海边)],
))

#sense-tag("4", "期限或观察边界 (见第四章)")
#example((
  [Submit #hl[by] Friday. (周五前)],
  [#hl[By] 2020, the company had expanded into Asia. (以 2020 年为观察边界)],
))

#sense-tag("5", "相差 (数据描述,IELTS Task 1!)")
#example((
  [Sales increased #hl[by] 20%. (增长了 20% —— by 表示增量)],
  [Prices fell #hl[by] \$5.],
))

=== with 与 in：工具、材料和表达形式

#hl[with] 和 #hl[in] 都可能译成“用”。通常 #en[with] 把对象构形成工具或伴随手段，#en[in] 把语言、媒介或表现形式构形成事件的形式；具体搭配仍有重叠。

#warn[
  先看说话者突出“拿什么操作”，还是“以什么形式表达”：
  #example((
    [write #hl[with] a pen (用笔 —— 突出工具)],
    [write #hl[in] English (用英语 —— 突出语言形式)],
    [say it #hl[in] a low voice (低声说 —— 突出声音形式)],
    [write #hl[in] ink / write #hl[with] ink (都可；前者突出媒介，后者把墨水看作使用的材料)],
    [pay #hl[by] card / pay #hl[with] a card (都可；前者突出支付方式，后者突出所用工具)],
  ))
]

#tip[
  with 的更多用法（伴随、具有、原因）见下面的 #cn-hl[伴随与让步] 一节。
]

// ============================================================
== 伴随与让步 · with / without / despite
// ============================================================


#prep-head("with", phonetic: "wɪð", "和 / 用 / 带有")

#hl[with] 像一把瑞士军刀。伴随是重要原型，但工具、特征、原因和方式等分支还依赖具体构式。

#story(title: "历史线索（不是推导公式）")[
  #en[with] 的历史用法包含“相对、对抗”等意义，现代英语则以伴随、工具和具有等功能为主。历史变化能解释词义为什么多，但不能直接预测每一个现代搭配。
]

#align(center)[#fig-with()]
#caption[with 的核心画面:两个对象在一起 = "和、伴随"]

#sense-tag("1", "伴随:和……一起")
#example((
  [Go #hl[with] me. (和我一起去)],
  [I agree #hl[with] you. (同意你)],
))

#sense-tag("2", "具有:带有 (描述特征)")
#example((
  [a girl #hl[with] long hair (长发女孩)],
  [a house #hl[with] a garden (带花园的房子)],
  [tea #hl[with] sugar (加糖的茶)],
))

#sense-tag("3", "伴随背景或引发反应的原因")
#example((
  [tremble #hl[with] fear (因恐惧发抖)],
  [#hl[With] all this rain, the roads are difficult to use. (把雨作为伴随背景)],
))

=== without · 没有

#hl[without] 是 with 的反义词,表示 #cn-hl[没有、缺乏]:

#example((
  [#hl[without] water / can't do #hl[without] you],
  [He went #hl[without] me. (没带我)],
))

=== despite · 尽管

#hl[despite] 表示 #cn-hl[让步]，后面可接名词短语或 #en[-ing] 形式，不接 #en[of]:

#example((
  [#hl[Despite] the rain, we went out. (尽管下雨,我们还是出去了)],
  [#hl[Despite] feeling tired, she continued working.],
))

#warn[
  #hl[despite] 后面直接接名词短语或 #en[-ing] 形式，#cn-hl[不要加 of]:
  #example((
    [✓ #hl[Despite] the rain],
    [✗ Despite #hl[of] the rain],
  ))
]

// ============================================================
== 关于与比较 · about / like / as
// ============================================================


#prep-head("about", phonetic: "əˈbaʊt", "关于 / 大约")

#story(title: "about 的记忆线索")[
  #en[about] 的历史与“周围、环绕”有关，可帮助联想话题和近似数量：#en[talk about history] 是围绕历史展开，#en[about 50] 是位于 50 附近。现代搭配仍应作为成熟构式学习。
]

#example((
  [a book #hl[about] history (关于历史的书)],
  [What are you talking #hl[about]? (在谈论什么)],
  [#hl[about] 100 people (大约 100 人)],
  [run #hl[about] (到处跑)],
))

=== like vs as · 像 vs 作为

这对易混介词在 IELTS 口语/写作里极常见。

#principle[
  #hl[like] —— #cn-hl[比较相似性]；它不负责断言比较对象“实际上不是”该身份。\

  #hl[as] —— #cn-hl[身份/角色]:"作为……" (实际就是)。
]

#example((
  [She explained it #hl[like] an expert. (把表达方式与专家相比)],
  [She works #hl[as] an engineer. (把 engineer 指定为她的工作角色)],
  [She looks #hl[like] her mother. (长得像妈妈)],
  [Use this #hl[as] a tool. (把这当作工具用)],
))

#warn[
  在本组构式中可记为：#cn-hl[like 突出相似，as 指定角色]。#en[as] 还有时间、原因、方式和比较等其他用法，不能用这一句覆盖全部。
]

// ============================================================
== 除外与包含 · except / besides
// ============================================================

=== except vs besides · 除……之外

这是中国学生最常错的对比之一。

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    align: center,
    [#fig-except()\ #text(weight: "bold", fill: c-accent)[except]\ #small[划掉一个]],
    [#fig-besides()\ #text(weight: "bold", fill: c-accent)[besides]\ #small[再加一个]],
  )
]
#caption[except = 划掉(减) / besides = 再加(增)]

#principle[
  #hl[except] = #cn-hl[排除] (从整体中 #cn-hl[拿掉])\

  #hl[besides] = #cn-hl[包含] (在整体上 #cn-hl[再加]) —— besides 还常用作副词"此外"
]

#example((
  [Everyone went #hl[except] Tom. (除了 Tom,大家都去了 → Tom #cn-hl[没去])],
  [#hl[Besides] Tom, three others went. (除了 Tom,还有三人去了 → Tom #cn-hl[去了])],
))

#callout(body-color: c-note-bg, border-color: c-note-bd, icon: "💡")[
  记法:#hl[except] = #cn-hl[减去];#hl[besides] = #cn-hl[加上]。\

  所以 #en[Besides, the cost is too high.] 中的 #en[besides] 是副词，意思是 #cn-hl[此外（还要补充）]，而不是“除了”。
]

// ============================================================
== 其他介词速览 · from / against / than / per
// ============================================================

#table(
  columns: (1.6cm, 1fr, 1fr),
  align: (center, left, left),
  stroke: 0.5pt + c-line,
  inset: 7pt,
  table.cell(fill: c-soft2)[*介词*],
  table.cell(fill: c-soft2)[*核心含义*],
  table.cell(fill: c-soft2)[*例句*],
  [#hl[from]],
  [来源/起点],
  [a letter #hl[from] Tom / #hl[from] Beijing to Shanghai],
  [#hl[against]],
  [反对/靠着],
  [vote #hl[against] / lean #hl[against] the wall],
  [#hl[than]],
  [比(比较)],
  [She is taller #hl[than] me.],
  [#hl[per]],
  [每一(正式)],
  [\$5 #hl[per] person / 60 km #hl[per] hour],
)

#tip[
  #en[She is taller than me] 在日常英语中很常见；完整比较从句可写 #en[She is taller than I am]。这里的 #en[than] 在不同语法分析中可归入介词或从属标记，本书以学习用法为主。
]

#v(1em)

#tip[
  抽象介词应按语义分支学习。空间图和词源可以提供动机，但不是每个现代含义都能被唯一地回溯或预测。\

  下一章,我们把所有这些介词装进 #cn-hl[介词短语] —— 即多个词组合成的固定搭配。
]
