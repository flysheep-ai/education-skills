# Skill 打包上传指南

本文档说明如何将 Skills 打包上传到 Skill 商城（如 prompts.chat）。

## 📦 每个 Skill 的内容

每个 Skill 文件夹都包含完整的教学内容，可以作为独立的包上传：

```
gaokao-science-tutor/          # 示例 Skill
├── SKILL.md                   # 必需：核心教学指令（带 YAML frontmatter）
├── README.md                  # 推荐：使用说明和功能介绍
└── examples.md                # 推荐：详细的教学对话示例
```

## 🎯 已准备好的 Skills

所有 Skills 都已完整准备，可以直接打包上传：

| Skill 名称 | 文件数 | 总大小 | 状态 |
|-----------|-------|--------|------|
| gaokao-science-tutor | 3 | ~21 KB | ✅ 完整 |
| gaokao-liberal-arts-tutor | 3 | ~18 KB | ✅ 完整 |
| gaokao-chinese-tutor | 3 | ~16 KB | ✅ 完整 |
| gaokao-english-tutor | 3 | ~15 KB | ✅ 完整 |
| gaokao-general-tech-tutor | 3 | ~14 KB | ✅ 完整 |

## 📝 打包方法

### 方法 1：创建 ZIP 压缩包（推荐）

为每个 Skill 创建单独的 ZIP 文件：

```bash
# 进入项目目录
cd /Users/clover/claudetest/education-skills

# 为每个 Skill 创建 ZIP 包
zip -r gaokao-science-tutor.zip gaokao-science-tutor/
zip -r gaokao-liberal-arts-tutor.zip gaokao-liberal-arts-tutor/
zip -r gaokao-chinese-tutor.zip gaokao-chinese-tutor/
zip -r gaokao-english-tutor.zip gaokao-english-tutor/
zip -r gaokao-general-tech-tutor.zip gaokao-general-tech-tutor/
```

或者使用提供的打包脚本：

```bash
# 使用自动打包脚本
bash package-skills.sh
```

执行后会在当前目录生成：
```
gaokao-science-tutor.zip
gaokao-liberal-arts-tutor.zip
gaokao-chinese-tutor.zip
gaokao-english-tutor.zip
gaokao-general-tech-tutor.zip
```

### 方法 2：直接上传文件夹

某些平台可能支持直接上传文件夹，这种情况下：
1. 直接将整个 Skill 文件夹拖拽上传
2. 或者选择文件夹中的所有文件一起上传

## ✅ 上传前检查清单

每个 Skill 上传前请确认：

- [ ] **SKILL.md 存在且格式正确**
  - 包含 YAML frontmatter (`---` 开头和结尾)
  - `name` 字段正确（小写、连字符）
  - `description` 字段详细（包含触发词和使用场景）

- [ ] **README.md 存在**
  - 包含功能特点
  - 包含使用方法
  - 包含示例

- [ ] **examples.md 存在**（可选但强烈推荐）
  - 包含多个教学对话示例
  - 展示不同场景和题型

- [ ] **文件名正确**
  - 所有文件名使用小写
  - 使用 `.md` 扩展名

- [ ] **内容完整**
  - 没有占位符或待完成内容
  - 中文内容正确显示

## 🔍 SKILL.md Frontmatter 示例

每个 Skill 的 SKILL.md 开头应该有正确的 frontmatter：

```yaml
---
name: gaokao-science-tutor
description: 模拟中国高三理科辅导老师，用渐进式教学方法辅导数学、物理、化学、生物等理科问题。当学生提出理科问题、请求讲解、说"不懂"、"教我"时使用。适用于高考备考、解题辅导、概念理解。
---
```

**必需字段**：
- `name`: Skill 的唯一标识符（与文件夹名一致）
- `description`: 详细描述（包含功能、触发词、适用场景）

## 📤 上传到不同平台

### Prompts.chat

1. 访问 [prompts.chat](https://prompts.chat)
2. 登录账号
3. 点击 "Create Skill" 或 "Upload Skill"
4. 上传 ZIP 文件或选择文件夹
5. 填写额外信息（如果需要）：
   - 类别：Education
   - 标签：chinese, gaokao, tutoring, education
   - 预览图（可选）
6. 发布

### GitHub（已完成）

✅ 所有 Skills 已上传到：
https://github.com/flysheep-ai/education-skills

用户可以直接从 GitHub 克隆使用：
```bash
git clone https://github.com/flysheep-ai/education-skills.git
cp -r education-skills/gaokao-science-tutor ~/.claude/skills/
```

### 其他平台

根据平台要求：
- 某些平台可能要求单个 markdown 文件
  - 可以将 examples.md 内容合并到 SKILL.md
- 某些平台可能要求特定的元数据格式
  - 根据平台文档调整 frontmatter

## 🎨 可选增强

如果 Skill 商城支持，可以添加：

1. **图标/Logo**（skill-icon.png）
   - 尺寸：256x256 或 512x512
   - 格式：PNG, SVG
   - 内容：代表 Skill 主题的图标

2. **预览图/截图**（screenshots/）
   - 展示 Skill 使用效果
   - 教学对话示例截图

3. **LICENSE 文件**
   - MIT License（已在仓库根目录）
   - 如需要可复制到各 Skill 目录

## 📊 打包结果

使用打包脚本后，你会得到：

```
education-skills/
├── gaokao-science-tutor.zip          (~21 KB)
├── gaokao-liberal-arts-tutor.zip     (~18 KB)
├── gaokao-chinese-tutor.zip          (~16 KB)
├── gaokao-english-tutor.zip          (~15 KB)
└── gaokao-general-tech-tutor.zip     (~14 KB)
```

每个 ZIP 文件包含：
- SKILL.md
- README.md
- examples.md

## 🚀 批量上传建议

如果平台支持批量上传或 API：

1. 先上传 1-2 个 Skill 测试
2. 确认格式和显示正确
3. 再批量上传其余 Skills

## ❓ 常见问题

**Q: 必须上传所有文件吗？**
A: SKILL.md 是必需的。README.md 和 examples.md 强烈推荐，它们让 Skill 更完整、更易用。

**Q: 可以修改 frontmatter 吗？**
A: 可以，但 `name` 字段建议保持不变（与文件夹名一致）。`description` 可以根据平台要求调整。

**Q: ZIP 文件太大怎么办？**
A: 当前所有 Skills 都在 20KB 以下，非常小。如果需要压缩，可以删除 examples.md 中的部分示例。

**Q: 上传后可以更新吗？**
A: 大多数平台支持更新。修改后重新打包上传即可。

**Q: 需要添加版本号吗？**
A: 如果平台支持，可以在 frontmatter 添加 `version: 1.0.0`。

## 📞 支持

如有问题：
- GitHub Issues: https://github.com/flysheep-ai/education-skills/issues
- 仓库 Discussions: https://github.com/flysheep-ai/education-skills/discussions

---

**祝上传顺利！🎉**
