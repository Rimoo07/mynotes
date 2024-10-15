import os

# README.md ファイルを開く
with open('README.md', 'a') as readme:
    readme.write('\n## Links\n')

    # ディレクトリを再帰的に探索
    for root, dirs, files in os.walk('.'):
        if 'README.md' in files:
            # index.html のパスを取得
            readme_path = os.path.relpath(os.path.join(root, 'README.md'))
            index_path = readme_path.replace('README.md', 'index.html')
            # README.md にリンクを追加
            link_text = os.path.basename(root)
            readme.write(f'- [{link_text}]({index_path})\n')