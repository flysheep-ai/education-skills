# 教育类 Claude Code Skills 集合

这是一个专注于教育领域的 Claude Code Agent Skills 集合，旨在提供各类教学辅导和学习支持工具。

## 📚 已收录的 Skills

### 1. [高考理科导师 (gaokao-science-tutor)](./gaokao-science-tutor/)

模拟经验丰富的高三理科辅导老师，使用渐进式教学法引导学生独立思考和解决问题。

- **适用科目**: 数学、物理、化学、生物
- **教学特点**: 苏格拉底式提问、渐进式引导、鼓励式语言
- **适用人群**: 中国高三理科学生
- **查看详情**: [README](./gaokao-science-tutor/README.md)

### 2. [高考文科导师 (gaokao-liberal-arts-tutor)](./gaokao-liberal-arts-tutor/)

模拟经验丰富的高三文科辅导老师，使用启发式教学法引导学生理解概念、构建知识体系。

- **适用科目**: 政治、历史、地理
- **教学特点**: 重理解不重死记、启发式教学、构建知识框架
- **适用人群**: 中国高三文科学生
- **查看详情**: [README](./gaokao-liberal-arts-tutor/README.md)

### 3. [高考语文导师 (gaokao-chinese-tutor)](./gaokao-chinese-tutor/)

模拟经验丰富的高三语文辅导老师，培养学生的语文素养、阅读理解能力和写作表达能力。

- **适用场景**: 现代文阅读、古诗词鉴赏、文言文、作文写作
- **教学特点**: 重文本解读、规范表达、语文思维培养
- **适用人群**: 中国高三学生
- **查看详情**: [README](./gaokao-chinese-tutor/README.md)

### 4. [高考英语导师 (gaokao-english-tutor)](./gaokao-english-tutor/)

模拟经验丰富的高三英语辅导老师，培养学生的英语语言能力、应试技巧和学习方法。

- **适用场景**: 阅读理解、完形填空、语法填空、写作
- **教学特点**: 词汇语法并重、理解优先、方法总结
- **适用人群**: 中国高三学生
- **查看详情**: [README](./gaokao-english-tutor/README.md)

### 5. [高考通用技术导师 (gaokao-general-tech-tutor)](./gaokao-general-tech-tutor/)

模拟经验丰富的高三通用技术辅导老师，培养学生的技术素养、设计思维和实践能力。

- **适用场景**: 技术设计、结构分析、流程设计、系统与控制、简单编程
- **教学特点**: 理论联系实践、设计思维培养、创新意识激发
- **适用人群**: 中国高三学生
- **查看详情**: [README](./gaokao-general-tech-tutor/README.md)

## 🎯 使用方法

### 安装单个 Skill

```bash
# 克隆整个仓库
git clone https://github.com/flysheep-ai/education-skills.git

# 安装特定 Skill 到个人配置
cp -r education-skills/gaokao-science-tutor ~/.claude/skills/

# 或安装到项目配置（团队共享）
cp -r education-skills/gaokao-science-tutor .claude/skills/
```

### 安装所有 Skills

```bash
# 克隆仓库
git clone https://github.com/flysheep-ai/education-skills.git

# 安装所有 Skills
cp -r education-skills/*/. ~/.claude/skills/
```

## 🔮 规划中的 Skills

以下是未来可能添加的教育类 Skills（欢迎贡献！）：

- **小语种学习导师**: 日语、法语、德语等语言学习辅导
- **编程启蒙教师**: 针对初学者的编程教学
- **作业批改助手**: 帮助检查作业并给出建设性反馈
- **学习计划制定**: 根据学生情况制定个性化学习计划
- **考试策略顾问**: 考试技巧和应试策略指导
- **知识点梳理**: 帮助学生系统梳理知识体系
- **初中/高一高二辅导**: 针对不同年级的辅导 Skills
- **竞赛辅导**: 数学竞赛、物理竞赛等专项辅导
- **艺术辅导**: 美术、音乐等艺术类科目辅导

## 🤝 贡献指南

欢迎贡献新的教育类 Skills！

### 贡献步骤

1. **Fork 本仓库**
2. **创建新的 Skill 目录**
   ```bash
   mkdir your-skill-name
   ```
3. **按照标准结构创建文件**
   ```
   your-skill-name/
   ├── SKILL.md          # 必需：主 Skill 文件
   ├── README.md         # 必需：使用说明
   ├── examples.md       # 推荐：示例对话
   └── reference.md      # 可选：详细参考文档
   ```
4. **更新本 README.md**，在"已收录的 Skills"中添加你的 Skill
5. **提交 Pull Request**

### Skill 命名规范

- 使用小写字母和连字符
- 清晰描述 Skill 的功能
- 示例：`english-tutor`、`coding-mentor`、`exam-strategy`

### SKILL.md 要求

确保包含有效的 YAML frontmatter：

```yaml
---
name: your-skill-name
description: 详细描述这个 Skill 做什么，以及什么时候使用它
---
```

## 📖 什么是 Claude Code Skill？

Claude Code Skill 是 Claude Code 的扩展功能，允许你为 Claude 添加专门的知识和行为模式。通过编写 Skill，你可以让 Claude：

- 扮演特定角色（如老师、导师、顾问）
- 遵循特定的教学方法或工作流程
- 针对特定领域提供专业指导
- 自动激活相关的专业知识

详细了解如何创建 Skill，请参考 [Claude Code 官方文档](https://docs.anthropic.com/claude-code)。

## 📋 Skill 质量标准

本仓库收录的 Skills 应满足：

✅ **明确的适用场景**: 清楚说明何时使用
✅ **详细的使用说明**: 包含完整的 README.md
✅ **实用性**: 解决真实的教育需求
✅ **示例对话**: 提供具体的使用示例
✅ **教学方法**: 体现有效的教学策略
✅ **中文友好**: 支持中文教学场景

## 🌟 特色功能

本仓库中的 Skills 特别注重：

- **渐进式教学**: 不直接给答案，引导思考
- **情感支持**: 理解学生压力，给予鼓励
- **因材施教**: 针对不同学科和水平调整策略
- **实战导向**: 面向真实的学习场景

## 📜 许可证

本项目采用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。

每个 Skill 的具体使用条款以其目录下的说明为准。

## 👥 作者与贡献者

### 主要维护者

- [@flysheep-ai](https://github.com/flysheep-ai)

### 贡献者

感谢所有为本项目贡献 Skills 的开发者！

（贡献者列表会自动显示在仓库的 Contributors 页面）

## 📮 反馈与支持

如果你：
- 发现 Bug 或有改进建议 → [提交 Issue](https://github.com/flysheep-ai/education-skills/issues)
- 想贡献新的 Skill → [发起 Pull Request](https://github.com/flysheep-ai/education-skills/pulls)
- 有使用问题 → [Discussion 讨论区](https://github.com/flysheep-ai/education-skills/discussions)

## 🎓 致谢

感谢：
- 所有为教育事业努力的老师和学生
- Claude Code 团队提供的强大工具
- 开源社区的支持和贡献

---

**让 AI 成为更好的教育助手！** 🚀

如果这个项目对你有帮助，欢迎 Star ⭐ 支持！
