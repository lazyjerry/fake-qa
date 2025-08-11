#!/bin/bash

# 創建 PDF 輸出目錄
mkdir -p pdfs-en

# 設置 PATH 以包含 LaTeX
export PATH="/usr/local/texlive/2025basic/bin/universal-darwin:$PATH"

echo "開始轉換 txts-en 資料夾中的 TXT 文件為 PDF..."

# 轉換所有 TXT 文件
for file in txts-en/*.txt; do
    if [ -f "$file" ]; then
        # 取得檔案名稱（不含路徑）
        filename=$(basename "$file")
        # 將 .txt 替換為 .pdf
        output_name="${filename%.txt}.pdf"
        
        echo "轉換 $filename..."
        pandoc "$file" -o "pdfs-en/$output_name" --pdf-engine=xelatex -V mainfont="Arial" -V CJKmainfont="PingFang SC"
        
        if [ $? -eq 0 ]; then
            echo "✅ 成功轉換: $output_name"
        else
            echo "❌ 轉換失敗: $filename"
        fi
    fi
done

echo ""
echo "轉換完成！檢查結果："
echo "原始 TXT 文件數量: $(ls txts-en/*.txt | wc -l)"
echo "生成 PDF 文件數量: $(ls pdfs-en/*.pdf 2>/dev/null | wc -l)"
echo ""
echo "所有 PDF 文件已保存在 pdfs-en/ 目錄中。"