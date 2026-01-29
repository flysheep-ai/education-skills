#!/bin/bash

# Skills 打包脚本
# 为每个 Skill 创建单独的 ZIP 压缩包

echo "开始打包 Skills..."
echo ""

# 定义 Skills 列表
SKILLS=(
    "gaokao-science-tutor"
    "gaokao-liberal-arts-tutor"
    "gaokao-chinese-tutor"
    "gaokao-english-tutor"
    "gaokao-general-tech-tutor"
)

# 计数器
SUCCESS=0
TOTAL=${#SKILLS[@]}

# 为每个 Skill 创建 ZIP 包
for skill in "${SKILLS[@]}"; do
    if [ -d "$skill" ]; then
        echo "正在打包: $skill"
        zip -r -q "${skill}.zip" "$skill/"

        if [ $? -eq 0 ]; then
            SIZE=$(du -h "${skill}.zip" | cut -f1)
            echo "✅ 成功: ${skill}.zip (${SIZE})"
            ((SUCCESS++))
        else
            echo "❌ 失败: $skill"
        fi
        echo ""
    else
        echo "⚠️  警告: 目录 $skill 不存在"
        echo ""
    fi
done

echo "================================"
echo "打包完成: $SUCCESS/$TOTAL"
echo "================================"
echo ""

# 列出生成的文件
if [ $SUCCESS -gt 0 ]; then
    echo "生成的 ZIP 文件:"
    ls -lh *.zip 2>/dev/null | awk '{print $9, "("$5")"}'
    echo ""
    echo "这些文件可以直接上传到 Skill 商城。"
    echo "详见 PACKAGING.md 了解更多信息。"
else
    echo "没有成功打包任何 Skill。"
fi
