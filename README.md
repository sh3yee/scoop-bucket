# sh3yee's Scoop Bucket

个人开发环境配置的 Scoop Bucket，包含常用开发工具。

## 使用方法

### 添加 Bucket

```powershell
scoop bucket add sh3yee https://github.com/sh3yee/scoop-bucket.git
```

### 安装所有工具

```powershell
# 克隆仓库
git clone https://github.com/sh3yee/scoop-bucket.git
cd scoop-bucket

# 运行安装脚本
.\setup-dev.ps1
```

### 单独安装工具

```powershell
scoop install sh3yee/vscode
scoop install sh3yee/nvm
scoop install sh3yee/git
scoop install sh3yee/curl
scoop install sh3yee/maple-mono
```

## 包含的软件

- Visual Studio Code (vscode)
- Node Version Manager (nvm)
- Git
- Curl
- Maple Mono Font