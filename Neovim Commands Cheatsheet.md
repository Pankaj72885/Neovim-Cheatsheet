# Neovim Commands Cheat Sheet

## মোড পরিবর্তন (Mode Switching)
| Command | Description | Mode |
|---------|------------|------|
| `i` | Insert mode এ যাওয়া (কার্সরের আগে) | Normal → Insert |
| `a` | Insert mode এ যাওয়া (কার্সরের পরে) | Normal → Insert |
| `o` | নিচে নতুন লাইন তৈরি করে Insert mode | Normal → Insert |
| `O` | উপরে নতুন লাইন তৈরি করে Insert mode | Normal → Insert |
| `A` | লাইনের শেষে Insert mode | Normal → Insert |
| `Esc` | Normal mode এ ফিরে যাওয়া | Insert → Normal |
| `v` | Visual mode এ যাওয়া | Normal → Visual |

## নেভিগেশন (Navigation)
| Command | Description | Mode |
|---------|------------|------|
| `h` | বাম দিকে | Normal |
| `j` | নিচে | Normal |
| `k` | উপরে | Normal |
| `l` | ডান দিকে | Normal |
| `w` | পরবর্তী শব্দের শুরুতে | Normal |
| `b` | পূর্ববর্তী শব্দের শুরুতে | Normal |
| `0` | লাইনের শুরুতে | Normal |
| `$` | লাইনের শেষে | Normal |
| `gg` | ফাইলের শুরুতে | Normal |
| `G` | ফাইলের শেষে | Normal |

## টেক্সট এডিটিং (Text Editing)
| Command | Description | Mode |
|---------|------------|------|
| `x` | কার্সরের নিচের অক্ষর মুছুন | Normal |
| `dd` | পুরো লাইন মুছুন | Normal |
| `dw` | একটি শব্দ মুছুন | Normal |
| `d$` | কার্সর থেকে লাইনের শেষ পর্যন্ত মুছুন | Normal |
| `yy` | পুরো লাইন কপি করুন | Normal |
| `yw` | একটি শব্দ কপি করুন | Normal |
| `p` | পেস্ট করুন (নিচের লাইনে) | Normal |
| `P` | পেস্ট করুন (উপরের লাইনে) | Normal |
| `u` | আন্ডু (পূর্বাবস্থায় ফিরুন) | Normal |
| `Ctrl+r` | রিডু (পুনরায় করুন) | Normal |

## সংখ্যার সাথে কমান্ড (Commands with Numbers)
| Command | Description | Mode |
|---------|------------|------|
| `5dd` | ৫টি লাইন মুছুন | Normal |
| `3yy` | ৩টি লাইন কপি করুন | Normal |
| `10j` | ১০ লাইন নিচে যান | Normal |
| `2w` | ২টি শব্দ এগিয়ে যান | Normal |

## ফাইল অপারেশন (File Operations)
| Command | Description | Mode |
|---------|------------|------|
| `:w` | ফাইল সেভ করুন | Normal |
| `:q` | Neovim বন্ধ করুন | Normal |
| `:wq` | সেভ করে বন্ধ করুন | Normal |
| `:q!` | সেভ না করে বন্ধ করুন (force quit) | Normal |
| `:e filename` | নতুন ফাইল খুলুন | Normal |

## সার্চ ও রিপ্লেস (Search & Replace)
| Command | Description | Mode |
|---------|------------|------|
| `/search_term` | খোঁজা | Normal |
| `n` | পরবর্তী ম্যাচ | Normal |
| `N` | পূর্ববর্তী ম্যাচ | Normal |
| `:s/old/new/g` | বর্তমান লাইনে সব old কে new দিয়ে বদলান | Normal |
| `:%s/old/new/g` | পুরো ফাইলে সব old কে new দিয়ে বদলান | Normal |

## কাস্টম শর্টকাট (Custom Shortcuts from Config)
| Command | Description | Mode |
|---------|------------|------|
| `<Space>e` | File explorer toggle | Normal |
| `<Space>t` | Terminal toggle | Normal |
| `<Space>f` | Format code | Normal |
| `<Space>w` | Quick save file | Normal |
| `<Space>q` | Quick quit | Normal |
| `<Space>ca` | Code actions | Normal |
| `<Space>rn` | Rename variable/function | Normal |
| `gd` | Go to definition | Normal |
| `K` | Hover documentation | Normal |
| `Ctrl+\` | Terminal toggle | Any |

## Auto Completion (Insert Mode এ)
| Command | Description | Mode |
|---------|------------|------|
| `Tab` | Next suggestion | Insert |
| `Shift+Tab` | Previous suggestion | Insert |
| `Enter` | Confirm selection | Insert |
| `Ctrl+Space` | Manual trigger completion | Insert |

## Terminal Commands (Terminal Mode এ)
| Command | Description | Mode |
|---------|------------|------|
| `node filename.js` | JavaScript ফাইল রান করুন | Terminal |
| `npm start` | Project start করুন | Terminal |
| `npm install` | Dependencies install করুন | Terminal |
| `Ctrl+\` | Terminal বন্ধ করুন | Terminal |

## Plugin Management
| Command | Description | Mode |
|---------|------------|------|
| `:Lazy` | Plugin manager খুলুন | Normal |
| `:Lazy sync` | Plugins update/install | Normal |
| `:TSInstall language` | Treesitter parser install | Normal |
| `:TSUpdate` | Update all parsers | Normal |

## Emmet (HTML/CSS এর জন্য - Insert Mode এ)
| Command | Description | Mode |
|---------|------------|------|
| `div.container` + `Tab` | `<div class="container"></div>` | Insert |
| `ul>li*3` + `Tab` | 3টি li সহ ul তৈরি | Insert |
| `p{Hello World}` + `Tab` | `<p>Hello World</p>` | Insert |

## Code Running Examples
```bash
# Terminal এ JavaScript রান করা
nvim app.js          # ফাইল খুলুন
# কোড লিখুন (Insert mode এ)
# <Space>t চেপে terminal খুলুন
node app.js          # রান করুন

# HTML ফাইল খুলুন
nvim index.html      # ফাইল খুলুন
# HTML কোড লিখুন
# Browser এ open করুন
```

## Auto Features (Automatic)
- **Auto Save**: টাইপিং বন্ধ করলে বা Insert mode থেকে বের হলে
- **Auto Format**: ফাইল save করলে automatically format হয়
- **Auto Brackets**: `(` টাইপ করলে `()` হয়, cursor মাঝখানে থাকে
- **Auto HTML Tags**: `<div>` টাইপ করলে `<div></div>` হয়
- **TailwindCSS Suggestions**: `bg-` টাইপ করলে সব bg classes দেখাবে

## Installation Commands (Terminal এ)
```bash
# Neovim install
sudo apt install neovim        # Ubuntu/Debian
brew install neovim           # macOS
winget install Neovim.Neovim  # Windows

# Language servers install
npm install -g typescript typescript-language-server vscode-langservers-extracted @tailwindcss/language-server emmet-ls prettier eslint_d
```

## Tips
- সব command Normal Mode এ কাজ করে (যদি না অন্যভাবে বলা হয়)
- Insert Mode এ শুধু টাইপিং এবং auto-completion
- `Esc` চেপে সবসময় Normal Mode এ ফিরুন
- `:` দিয়ে শুরু হওয়া commands টাইপ করে Enter চাপুন
- `<Space>` মানে Spacebar চাপুন