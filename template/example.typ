#import "../lib.typ": *

#show: abyss-book.with(
  title: [Typst 深色主题模板全面功能测试文档],
  author: "模板测试员",
  date: datetime(year: 2024, month: 12, day: 25),
  abstract: [
    本文档是 Typst 深色主题书籍模板的全面功能测试，旨在验证模板的所有特性和功能组件。包含文本格式、多级标题、列表、表格、图片、代码、数学公式、交叉引用、特殊字符等全方位测试用例。
    
    通过系统性的测试，确保模板在各种使用场景下都能稳定工作。
  ],
  preface: [
    #align(center)[*全面功能测试说明*]
    
    本测试文档涵盖以下功能类别：
    
    #enum(
      [文本格式和样式测试],
      [多级标题和编号系统测试],
      [列表和枚举功能测试],
      [表格功能全面测试],
      [图片和图表插入测试],
      [代码展示和语法高亮测试],
      [数学公式渲染测试],
      [交叉引用和链接测试],
      [特殊字符和符号测试],
      [长文档和分页功能测试],
      [字体和颜色配置测试],
      [模板配置选项测试]
    )
    
    每个功能点都包含多个测试用例，确保覆盖所有边界情况。
  ],
  table-of-contents: outline(title: "功能测试目录"),
  chapter-pagebreak: true,
  figure-index: (enabled: true, title: "测试图表索引"),
  table-index: (enabled: true, title: "测试表格索引"),
  listing-index: (enabled: true, title: "测试代码索引"),
  appendix: (
    enabled: true,
    title: "测试结果汇总",
    body: none
  ),
  bibliographys: none
)

// 以下是正文

= 第一章：文本格式全面测试

== 基本文本样式测试
*这是粗体文本*，_这是斜体文本_，#underline[这是下划线文本]，#strike[这是删除线文本]，#overline[这是上划线文本]。#smallcaps[这是小型大写字母测试]。

== 混合样式组合测试
*粗体与_斜体_组合*，#underline[下划线*加粗*组合]，#strike[_删除斜体_文本]，#overline[*上划粗体*文字]。

== 文本颜色测试
#text(fill: luma(95))[浅灰色文本] #text(fill: luma(80))[中灰色文本] #text(fill: luma(60))[深灰色文本] #text(fill: rgb("#ff6666"))[绛红色文本]。

== 文本大小测试
#text(size: 8pt)[8pt小号文本] #text(size: 10pt)[10pt较小文本] #text(size: 12pt)[12pt正常文本] #text(size: 14pt)[14pt较大文本] #text(size: 16pt)[16pt大号文本]。

== 文本对齐测试
#align(left)[左对齐文本:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.]

#align(center)[居中文本：Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.]

#align(right)[右对齐文本：Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.]

== 段落属性测试
#par(leading: 0.5em)[紧密行距段落：Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.]

#par(leading: 1.0em)[宽松行距段落：Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.]

#par(spacing: 0.5em)[小段间距：Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.]

#par(spacing: 2.0em)[大段间距：Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.]

= 第二章：多级标题系统测试

== 一级标题（章节标题）
这是一级标题下的内容。

=== 二级标题（小节标题）
这是二级标题下的内容。

==== 三级标题（子小节）
这是三级标题下的内容。

====== 四级标题
这是四级标题下的内容。

======= 五级标题
这是五级标题下的内容。

======== 六级标题
这是六级标题下的内容，测试标题层级深度。

=== 标题编号验证


=== 标题引用测试

== 第三章：列表功能全面测试

=== 无序列表测试
#list(
  [第一级项目一],
  [第一级项目二],
  [嵌套无序列表：
    #list(
      [第二级项目A],
      [第二级项目B],
      [更深嵌套：
        #list(
          [第三级项目i],
          [第三级项目ii],
          [第三级项目iii]
        )
      ]
    )
  ],
  [第一级项目三]
)

=== 有序列表测试
#enum(
  [第一步操作],
  [第二步操作],
  [嵌套有序列表：
    #enum(
      [子步骤2.1],
      [子步骤2.2],
      [更深嵌套：
        #enum(
          [详细步骤2.2.1],
          [详细步骤2.2.2]
        )
      ]
    )
  ],
  [第三步操作]
)

=== 任务列表测试


=== 混合列表测试
#enum(
  [主要步骤一],
  [包含无序列表：
    #list(
      [功能点A],
      [功能点B]
    )
  ],
  [主要步骤二],
  [包含任务列表：
    
  ]
)

== 第四章：表格功能深度测试

=== 基本表格样式
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  [姓名], [年龄], [城市], [职业],
  [张三], [28], [北京], [软件工程师],
  [李四], [32], [上海], [产品经理],
  [王五], [25], [深圳], [数据分析师],
  [赵六], [29], [杭州], [UI设计师]
)<basic-table>

=== 合并单元格表格
#table(
  columns: (1fr, 1fr, 1fr),
  [], [第二季度], [120万元],
  table.hline(),
  
  [], [第四季度], [180万元],
  table.hline(),
)<merged-table>

=== 带样式的表格
#table(
  columns: 4,
  fill: (luma(35), luma(45), luma(35), luma(45)),
  stroke: 1pt + luma(70),
  inset: 10pt,
  [产品类别], [型号], [价格], [库存状态],
  [笔记本电脑], [ThinkPad X1], [¥12,999], [有货],
  [智能手机], [iPhone 15], [¥5,999], [缺货],
  [平板电脑], [iPad Pro], [¥6,999], [有货],
  [显示器], [Dell U2720], [¥3,299], [预定中]
)<styled-table>

=== 大表格分页测试

== 第五章：图片和图表功能测试

=== 基本图片插入
#figure(
  caption: [基本图片占位测试],
  align(center, rect(width: 100%, height: 200pt, fill: luma(40), radius: 8pt)[
    #align(center, text(size: 16pt, fill: luma(80))[图片占位区域])
  ])
)<basic-image>

=== 并排图片布局
#figure(
  caption: [并排图片布局测试],
  grid(
    columns: 3,
    gutter: 15pt,
    rect(width: 100%, height: 150pt, fill: luma(40), radius: 5pt)[图A],
    rect(width: 100%, height: 150pt, fill: luma(40), radius: 5pt)[图B],
    rect(width: 100%, height: 150pt, fill: luma(40), radius: 5pt)[图C]
  )
)<grid-images>

=== 流程图测试
#figure(
  caption: [流程图示例测试],
  align(center, [
    #set text(size: 10pt)
    #stack(
      spacing: 15pt,
      align(center, rect(width: 180pt, height: 35pt, fill: luma(40), radius: 5pt)[开始]),
      align(center, rect(width: 180pt, height: 35pt, fill: luma(40), radius: 5pt)[初始化系统]),
      align(center, rect(width: 180pt, height: 50pt, fill: luma(40), radius: 5pt)[数据处理]),
      align(center, rect(width: 180pt, height: 50pt, fill: luma(40))[检查结果?]),

      align(center, rect(width: 180pt, height: 35pt, fill: luma(40), radius: 5pt)[结束])
    )
  ])
)<flowchart>

== 第六章：代码展示功能测试

=== 行内代码测试
在段落中嵌入`行内代码`，比如Python的`print("Hello World")`或者JavaScript的`console.log("test")`。

=== JavaScript代码块
#raw("
// JavaScript函数示例
function calculateFibonacci(n) {
    if (n <= 1) return n;
    let a = 0, b = 1;
    for (let i = 2; i <= n; i++) {
        let temp = a + b;
        a = b;
        b = temp;
    }
    return b;
}

// 异步函数示例
async function fetchData(url) {
    try {
        const response = await fetch(url);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Fetch error:', error);
        throw error;
    }
}

// 类定义示例
class Calculator {
    constructor() {
        this.result = 0;
    }
    
    add(value) {
        this.result += value;
        return this;
    }
    
    multiply(value) {
        this.result *= value;
        return this;
    }
    
    getResult() {
        return this.result;
    }
}
")<js-code>

=== Python代码块
#raw("
# Python代码示例
import numpy as np
import pandas as pd
from typing import List, Dict, Optional

class DataProcessor:
    
    def __init__(self, data: List[float]):
        self.data = data
        self.mean = None
        self.std = None
    
    def calculate_statistics(self) -> Dict[str, float]:
        n = len(self.data)
        if n == 0:
            return {}
            
        self.mean = sum(self.data) / n
        variance = sum((x - self.mean) ** 2 for x in self.data) / n
        self.std = variance ** 0.5
        
        return {
            'mean': self.mean,
            'std_dev': self.std,
            'variance': variance,
            'min': min(self.data),
            'max': max(self.data)
        }
    
    @staticmethod
    def normalize_data(data: List[float]) -> List[float]:
        if not data:
            return []
        mean_val = sum(data) / len(data)
        std_val = (sum((x - mean_val) ** 2 for x in data) / len(data)) ** 0.5
        return [(x - mean_val) / std_val for x in data]

# 使用示例
if __name__ == '__main__':
    processor = DataProcessor([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    stats = processor.calculate_statistics()
    print(f'统计结果: {stats}')
")<python-code>

== 第七章：数学公式渲染测试

=== 行内公式测试
勾股定理：$a^2 + b^2 = c^2$，欧拉公式：$e^{"ipi"} + 1 = 0$，质能方程：$E = "mc"^2$。

=== 基本数学公式
二次方程求根公式：
$ x = "dfrac"{-b "pm" sqrt{b^2 - 4"ac"}}{2a} $

积分公式：

=== 复杂数学公式
矩阵运算：


薛定谔方程：


== 第八章：交叉引用和链接测试

=== 图表引用测试
参考表格<basic-table>查看基本表格样式，图片<basic-image>展示了基本图片布局，代码<js-code>提供了JavaScript示例。

=== 章节引用测试
在第一章中测试了文本格式，具体见第.numbering节关于混合样式的测试。

=== 页码引用测试

=== 外部链接测试
访问 #link("https://typst.app")[Typst 官方网站] 获取更多信息，参考 #link("https://github.com")[GitHub] 上的开源项目。

=== 内部链接测试
跳转到 #link("#chapter-1")[第一章] 查看文本格式测试，或查看 #link("#basic-table")[基本表格] 示例。

== 第九章：特殊字符和符号测试

=== 中文标点符号
中文标点全面测试：，。！？；：「」『』（）【】《》——……·～

=== 英文标点符号
英文标点: , . ! ? ; : " ' ( ) [ ] { } < > / \ |  ~  % ^ & - = +

=== 数学符号
数学符号: ∑ ∏ ∫ ∮ ∇ ∂ ± ∓ × ÷ ≠ ≡ ≈ ∝ ∞ ∈ ∉ ⊂ ⊃ ⊆ ⊇ ∪ ∩ ∧ ∨ ¬ ∀ ∃ ∴ ∵ ⊥ ∥ ∠ ∟ ○

=== 箭头符号
箭头符号: → ← ↑ ↓ ↔ ↕ ⇨ ⇦ ⇧ ⇩ ⇄ ⇅ ⇒ ⇐ ⇔ ⇑ ⇓ ↗ ↘ ↙ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↫ ↬ ↭ ↮ ↯ ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↺ ↻

=== 其他特殊符号
其他符号: © ® ™ ° ℃ ℉ € £ ¥ ¢ § ¶ † ‡ • … — – ′ ″ ‰ ‱ ※ ♠ ♡ ♢ ♣ ♤ ♥ ♦ ♧ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ★ ☆ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰

== 第十章：长文档和分页功能测试

=== 多段落长内容测试
#lorem(200)

#lorem(180)

#lorem(220)

=== 分页边界测试
这个章节包含足够的内容来测试分页功能，确保在页面边界处的内容正确分割。

#lorem(300)

#lorem(280)

=== 大内容块测试
#lorem(400)

这个段落测试在大量内容后的布局稳定性。

== 第十一章：字体和颜色配置测试

=== 字体族测试
#text(font: "LXGW WenKai")[霞鹜文楷字体测试]
#text(font: "思源黑体 CN")[思源黑体字体测试]
#text(font: "JetBrains Mono")[等宽字体测试]

=== 颜色深度测试
#text(fill: luma(95))[Luma 95] #text(fill: luma(85))[Luma 85] #text(fill: luma(75))[Luma 75] #text(fill: luma(65))[Luma 65] #text(fill: luma(55))[Luma 55] #text(fill: luma(45))[Luma 45] #text(fill: luma(35))[Luma 35] #text(fill: luma(25))[Luma 25] #text(fill: luma(15))[Luma 15] #text(fill: luma(5))[Luma 5]

=== RGB颜色测试
#text(fill: rgb("#ff6666"))[绛红色] #text(fill: rgb("#66ff66"))[绿色] #text(fill: rgb("#6666ff"))[蓝色] #text(fill: rgb("#ffff66"))[黄色] #text(fill: rgb("#ff66ff"))[紫色] #text(fill: rgb("#66ffff"))[青色]

== 第十二章：模板配置选项测试

=== 不同标题级别缩进测试
==== 四级标题缩进测试
这个四级标题应该有不同的缩进级别。

===== 五级标题缩进测试
五级标题的缩进应该更加明显。

====== 六级标题缩进测试
六级标题达到最大缩进级别。

=== 段落缩进测试
这个段落测试首行缩进功能，确保中文排版的传统格式得到正确实现。这是一个较长的段落，用于测试缩进在不同行数下的表现。

另一个测试段落，验证连续段落之间的缩进一致性。

=== 链接样式测试
外部链接测试：访问 #link("https://example.com")[示例网站] 查看详情。

内部链接测试：参考 #link("#chapter-1")[第一章] 的内容。
