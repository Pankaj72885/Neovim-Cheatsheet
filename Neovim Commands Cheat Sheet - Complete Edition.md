# Neovim Commands Cheat Sheet - Complete Edition

## মোড পরিবর্তন (Mode Switching)
| Command | Description | Mode |
|---------|------------|------|
| `i` | Insert mode এ যাওয়া (কার্সরের আগে) | Normal → Insert |
| `a` | Insert mode এ যাওয়া (কার্সরের পরে) | Normal → Insert |
| `o` | নিচে নতুন লাইন তৈরি করে Insert mode | Normal → Insert |
| `O` | উপরে নতুন লাইন তৈরি করে Insert mode | Normal → Insert |
| `A` | লাইনের শেষে Insert mode | Normal → Insert |
| `I` | লাইনের শুরুতে Insert mode | Normal → Insert |
| `s` | বর্তমান অক্ষর মুছে Insert mode | Normal → Insert |
| `S` | পুরো লাইন মুছে Insert mode | Normal → Insert |
| `c` | Change (মুছে Insert mode) | Normal → Insert |
| `C` | কার্সর থেকে লাইনের শেষ পর্যন্ত change | Normal → Insert |
| `Esc` | Normal mode এ ফিরে যাওয়া | Insert/Visual → Normal |
| `Ctrl+c` | Normal mode এ ফিরে যাওয়া (alternative) | Insert/Visual → Normal |
| `v` | Character-wise Visual mode | Normal → Visual |
| `V` | Line-wise Visual mode | Normal → Visual |
| `Ctrl+v` | Block Visual mode | Normal → Visual |

## নেভিগেশন (Navigation)
| Command | Description | Mode |
|---------|------------|------|
| `h` | বাম দিকে | Normal |
| `j` | নিচে | Normal |
| `k` | উপরে | Normal |
| `l` | ডান দিকে | Normal |
| `w` | পরবর্তী শব্দের শুরুতে | Normal |
| `W` | পরবর্তী WORD এর শুরুতে (whitespace দিয়ে আলাদা) | Normal |
| `b` | পূর্ববর্তী শব্দের শুরুতে | Normal |
| `B` | পূর্ববর্তী WORD এর শুরুতে | Normal |
| `e` | বর্তমান/পরবর্তী শব্দের শেষে | Normal |
| `E` | বর্তমান/পরবর্তী WORD এর শেষে | Normal |
| `0` | লাইনের একদম শুরুতে | Normal |
| `^` | লাইনের প্রথম non-blank character এ | Normal |
| ` | লাইনের শেষে | Normal |
| `g_` | লাইনের শেষ non-blank character এ | Normal |
| `gg` | ফাইলের শুরুতে | Normal |
| `G` | ফাইলের শেষে | Normal |
| `H` | Screen এর top এ | Normal |
| `M` | Screen এর middle এ | Normal |
| `L` | Screen এর bottom এ | Normal |
| `Ctrl+u` | অর্ধেক page উপরে | Normal |
| `Ctrl+d` | অর্ধেক page নিচে | Normal |
| `Ctrl+b` | পুরো page উপরে | Normal |
| `Ctrl+f` | পুরো page নিচে | Normal |
| `{` | পূর্ববর্তী paragraph | Normal |
| `}` | পরবর্তী paragraph | Normal |
| `%` | Matching bracket এ যাওয়া | Normal |
| `*` | বর্তমান শব্দের পরবর্তী occurrence | Normal |
| `#` | বর্তমান শব্দের পূর্ববর্তী occurrence | Normal |

## টেক্সট এডিটিং (Text Editing)
| Command | Description | Mode |
|---------|------------|------|
| `x` | কার্সরের নিচের অক্ষর মুছুন | Normal |
| `X` | কার্সরের আগের অক্ষর মুছুন | Normal |
| `dd` | পুরো লাইন মুছুন | Normal |
| `dw` | একটি শব্দ মুছুন | Normal |
| `dW` | একটি WORD মুছুন | Normal |
| `de` | শব্দের শেষ পর্যন্ত মুছুন | Normal |
| `d বা `D` | কার্সর থেকে লাইনের শেষ পর্যন্ত মুছুন | Normal |
| `d0` | কার্সর থেকে লাইনের শুরু পর্যন্ত মুছুন | Normal |
| `dt<char>` | নির্দিষ্ট character পর্যন্ত মুছুন | Normal |
| `df<char>` | নির্দিষ্ট character সহ মুছুন | Normal |
| `yy` | পুরো লাইন কপি করুন | Normal |
| `yw` | একটি শব্দ কপি করুন | Normal |
| `y | কার্সর থেকে লাইনের শেষ পর্যন্ত কপি | Normal |
| `y0` | কার্সর থেকে লাইনের শুরু পর্যন্ত কপি | Normal |
| `p` | পেস্ট করুন (নিচের লাইনে/পরে) | Normal |
| `P` | পেস্ট করুন (উপরের লাইনে/আগে) | Normal |
| `u` | আন্ডু (পূর্বাবস্থায় ফিরুন) | Normal |
| `Ctrl+r` | রিডু (পুনরায় করুন) | Normal |
| `r<char>` | একটি অক্ষর replace করুন | Normal |
| `R` | Replace mode (overwrite) | Normal → Replace |
| `~` | Case toggle (upper/lower) | Normal |
| `J` | নিচের লাইন বর্তমান লাইনের সাথে জোড়া দিন | Normal |
| `gJ` | নিচের লাইন জোড়া দিন (space ছাড়া) | Normal |

## Visual Mode Commands
| Command | Description | Mode |
|---------|------------|------|
| `y` | Selection copy করুন | Visual |
| `d` | Selection মুছুন | Visual |
| `c` | Selection মুছে Insert mode | Visual |
| `>` | Selection indent করুন | Visual |
| `<` | Selection unindent করুন | Visual |
| `=` | Selection auto-indent করুন | Visual |
| `u` | Selection lowercase করুন | Visual |
| `U` | Selection uppercase করুন | Visual |
| `o` | Selection এর opposite end এ cursor নিয়ে যান | Visual |

## সংখ্যার সাথে কমান্ড (Commands with Numbers)
| Command | Description | Mode |
|---------|------------|------|
| `5dd` | ৫টি লাইন মুছুন | Normal |
| `3yy` | ৩টি লাইন কপি করুন | Normal |
| `10j` | ১০ লাইন নিচে যান | Normal |
| `2w` | ২টি শব্দ এগিয়ে যান | Normal |
| `4x` | ৪টি অক্ষর মুছুন | Normal |
| `15G` | ১৫ নম্বর লাইনে যান | Normal |
| `3p` | ৩ বার পেস্ট করুন | Normal |

## ফাইল অপারেশন (File Operations)
| Command | Description | Mode |
|---------|------------|------|
| `:w` | ফাইল সেভ করুন | Normal |
| `:w filename` | নতুন নামে সেভ করুন | Normal |
| `:wa` | সব open file সেভ করুন | Normal |
| `:q` | Neovim বন্ধ করুন | Normal |
| `:q!` | সেভ না করে বন্ধ করুন (force quit) | Normal |
| `:wq` বা `:x` | সেভ করে বন্ধ করুন | Normal |
| `:qa` | সব window বন্ধ করুন | Normal |
| `:qa!` | সব window force বন্ধ করুন | Normal |
| `:e filename` | নতুন ফাইল খুলুন | Normal |
| `:e!` | ফাইল reload করুন (unsaved changes হারিয়ে যাবে) | Normal |
| `:r filename` | অন্য ফাইল insert করুন | Normal |
| `:r !command` | Command output insert করুন | Normal |

## সার্চ ও রিপ্লেস (Search & Replace)
| Command | Description | Mode |
|---------|------------|------|
| `/pattern` | Forward search | Normal |
| `?pattern` | Backward search | Normal |
| `n` | পরবর্তী ম্যাচ | Normal |
| `N` | পূর্ববর্তী ম্যাচ | Normal |
| `:noh` | Search highlight বন্ধ করুন | Normal |
| `:s/old/new` | প্রথম occurrence replace করুন | Normal |
| `:s/old/new/g` | বর্তমান লাইনে সব replace করুন | Normal |
| `:s/old/new/gc` | বর্তমান লাইনে confirm সহ replace | Normal |
| `:%s/old/new/g` | পুরো ফাইলে সব replace করুন | Normal |
| `:%s/old/new/gc` | পুরো ফাইলে confirm সহ replace | Normal |
| `:5,10s/old/new/g` | ৫-১০ লাইনে replace করুন | Normal |

## Window ও Buffer Management
| Command | Description | Mode |
|---------|------------|------|
| `:split` বা `:sp` | Horizontal split | Normal |
| `:vsplit` বা `:vsp` | Vertical split | Normal |
| `Ctrl+w h` | বাম window এ যান | Normal |
| `Ctrl+w j` | নিচের window এ যান | Normal |
| `Ctrl+w k` | উপরের window এ যান | Normal |
| `Ctrl+w l` | ডান window এ যান | Normal |
| `Ctrl+w w` | পরবর্তী window এ যান | Normal |
| `Ctrl+w q` | বর্তমান window বন্ধ করুন | Normal |
| `Ctrl+w =` | সব window সমান আকার করুন | Normal |
| `Ctrl+w +` | Window height বাড়ান | Normal |
| `Ctrl+w -` | Window height কমান | Normal |
| `Ctrl+w >` | Window width বাড়ান | Normal |
| `Ctrl+w <` | Window width কমান | Normal |
| `:bn` | পরবর্তী buffer | Normal |
| `:bp` | পূর্ববর্তী buffer | Normal |
| `:bd` | Buffer delete করুন | Normal |
| `:ls` | সব buffer list দেখুন | Normal |

## Tab Management
| Command | Description | Mode |
|---------|------------|------|
| `:tabnew` | নতুন tab খুলুন | Normal |
| `:tabc` | বর্তমান tab বন্ধ করুন | Normal |
| `:tabo` | শুধু বর্তমান tab রাখুন | Normal |
| `gt` | পরবর্তী tab | Normal |
| `gT` | পূর্ববর্তী tab | Normal |
| `1gt` | প্রথম tab এ যান | Normal |
| `2gt` | দ্বিতীয় tab এ যান | Normal |

## Marks ও Jumps
| Command | Description | Mode |
|---------|------------|------|
| `ma` | Mark 'a' set করুন | Normal |
| `'a` | Mark 'a' তে যান (লাইনের শুরুতে) | Normal |
| `` `a`` | Mark 'a' তে যান (exact position) | Normal |
| `''` | পূর্ববর্তী position এ ফিরুন | Normal |
| `Ctrl+o` | Jump list এ পিছনে যান | Normal |
| `Ctrl+i` | Jump list এ সামনে যান | Normal |
| `:marks` | সব marks দেখুন | Normal |

## Folding
| Command | Description | Mode |
|---------|------------|------|
| `zf` | Fold তৈরি করুন | Visual |
| `zo` | Fold খুলুন | Normal |
| `zc` | Fold বন্ধ করুন | Normal |
| `za` | Fold toggle করুন | Normal |
| `zR` | সব fold খুলুন | Normal |
| `zM` | সব fold বন্ধ করুন | Normal |

## Macros
| Command | Description | Mode |
|---------|------------|------|
| `qa` | Macro recording শুরু করুন (register 'a' তে) | Normal |
| `q` | Macro recording বন্ধ করুন | Normal |
| `@a` | Macro 'a' চালান | Normal |
| `@@` | শেষ macro আবার চালান | Normal |
| `5@a` | Macro 'a' পাঁচ বার চালান | Normal |

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
| `gD` | Go to declaration | Normal |
| `gr` | Go to references | Normal |
| `gi` | Go to implementation | Normal |
| `K` | Hover documentation | Normal |
| `Ctrl+\` | Terminal toggle | Any |

## Auto Completion (Insert Mode এ)
| Command | Description | Mode |
|---------|------------|------|
| `Tab` | Next suggestion | Insert |
| `Shift+Tab` | Previous suggestion | Insert |
| `Enter` | Confirm selection | Insert |
| `Ctrl+Space` | Manual trigger completion | Insert |
| `Ctrl+n` | Next completion | Insert |
| `Ctrl+p` | Previous completion | Insert |
| `Ctrl+y` | Accept completion | Insert |
| `Ctrl+e` | Cancel completion | Insert |

## Insert Mode Special Commands
| Command | Description | Mode |
|---------|------------|------|
| `Ctrl+w` | Delete previous word | Insert |
| `Ctrl+u` | Delete to beginning of line | Insert |
| `Ctrl+t` | Indent current line | Insert |
| `Ctrl+d` | Un-indent current line | Insert |
| `Ctrl+r a` | Insert register 'a' content | Insert |
| `Ctrl+o` | Execute one Normal command | Insert |

## Command Line Commands
| Command | Description | Mode |
|---------|------------|------|
| `:help keyword` | Help দেখুন | Normal |
| `:set number` | Line numbers on করুন | Normal |
| `:set nonumber` | Line numbers off করুন | Normal |
| `:set relativenumber` | Relative line numbers | Normal |
| `:set wrap` | Line wrapping on | Normal |
| `:set nowrap` | Line wrapping off | Normal |
| `:syntax on` | Syntax highlighting on | Normal |
| `:colorscheme name` | Color scheme change করুন | Normal |
| `:pwd` | Current directory দেখুন | Normal |
| `:cd path` | Directory change করুন | Normal |
| `:!command` | External command চালান | Normal |
| `:sh` | Shell এ যান | Normal |
| `:source %` | Current file reload করুন | Normal |

## Terminal Commands (Terminal Mode এ)
| Command | Description | Mode |
|---------|------------|------|
| `node filename.js` | JavaScript ফাইল রান করুন | Terminal |
| `python filename.py` | Python ফাইল রান করুন | Terminal |
| `npm start` | Project start করুন | Terminal |
| `npm install` | Dependencies install করুন | Terminal |
| `git status` | Git status দেখুন | Terminal |
| `ls` | Files list দেখুন | Terminal |
| `cd directory` | Directory change করুন | Terminal |
| `clear` | Terminal clear করুন | Terminal |
| `exit` | Terminal exit করুন | Terminal |
| `Ctrl+\` | Terminal বন্ধ করুন | Terminal |

## Plugin Management
| Command | Description | Mode |
|---------|------------|------|
| `:Lazy` | Plugin manager খুলুন | Normal |
| `:Lazy sync` | Plugins update/install | Normal |
| `:Lazy clean` | Unused plugins remove | Normal |
| `:Lazy update` | Update all plugins | Normal |
| `:TSInstall language` | Treesitter parser install | Normal |
| `:TSUpdate` | Update all parsers | Normal |
| `:TSUninstall language` | Uninstall parser | Normal |
| `:checkhealth` | Neovim health check | Normal |

## LSP Commands
| Command | Description | Mode |
|---------|------------|------|
| `:LspInfo` | LSP information দেখুন | Normal |
| `:LspRestart` | LSP restart করুন | Normal |
| `:LspLog` | LSP logs দেখুন | Normal |

## Git Integration (যদি Git plugin থাকে)
| Command | Description | Mode |
|---------|------------|------|
| `:Git add .` | সব changes add করুন | Normal |
| `:Git commit` | Commit করুন | Normal |
| `:Git push` | Push করুন | Normal |
| `:Git pull` | Pull করুন | Normal |
| `:Git status` | Git status দেখুন | Normal |

## Emmet (HTML/CSS এর জন্য - Insert Mode এ)
| Command | Description | Mode |
|---------|------------|------|
| `!` + `Tab` | HTML5 boilerplate | Insert |
| `div.container` + `Tab` | `<div class="container"></div>` | Insert |
| `div#header` + `Tab` | `<div id="header"></div>` | Insert |
| `ul>li*3` + `Tab` | 3টি li সহ ul তৈরি | Insert |
| `div.row>div.col*4` + `Tab` | 4টি column div | Insert |
| `p{Hello World}` + `Tab` | `<p>Hello World</p>` | Insert |
| `a[href="#"]` + `Tab` | `<a href="#"></a>` | Insert |

## Advanced Text Objects
| Command | Description | Mode |
|---------|------------|------|
| `diw` | Delete inner word | Normal |
| `daw` | Delete around word | Normal |
| `di"` | Delete inside quotes | Normal |
| `da"` | Delete around quotes | Normal |
| `di(` | Delete inside parentheses | Normal |
| `da(` | Delete around parentheses | Normal |
| `dit` | Delete inside HTML tag | Normal |
| `dat` | Delete around HTML tag | Normal |
| `dip` | Delete inner paragraph | Normal |
| `dap` | Delete around paragraph | Normal |

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

# Multiple files একসাথে খুলুন
nvim file1.js file2.css file3.html

# Split window এ কাজ করুন
:vsp                 # Vertical split
:e another_file.js   # অন্য ফাইল খুলুন
```

## Auto Features (Automatic)
- **Auto Save**: টাইপিং বন্ধ করলে বা Insert mode থেকে বের হলে
- **Auto Format**: ফাইল save করলে automatically format হয়
- **Auto Brackets**: `(` টাইপ করলে `()` হয়, cursor মাঝখানে থাকে
- **Auto HTML Tags**: `<div>` টাইপ করলে `<div></div>` হয়
- **TailwindCSS Suggestions**: `bg-` টাইপ করলে সব bg classes দেখাবে
- **Auto Completion**: টাইপ করার সময় suggestions আসবে
- **Error Highlighting**: Code এ error থাকলে highlight হবে

## Installation Commands (Terminal এ)
```bash
# Neovim install
sudo apt install neovim        # Ubuntu/Debian
brew install neovim           # macOS
winget install Neovim.Neovim  # Windows

# Language servers install
npm install -g typescript typescript-language-server vscode-langservers-extracted @tailwindcss/language-server emmet-ls prettier eslint_d

# Python support
pip install pynvim

# Additional tools
npm install -g live-server     # HTML live preview
npm install -g nodemon         # Auto-restart Node.js apps
```

## Tips & Tricks
- সব command Normal Mode এ কাজ করে (যদি না অন্যভাবে বলা হয়)
- Insert Mode এ শুধু টাইপিং এবং auto-completion
- `Esc` চেপে সবসময় Normal Mode এ ফিরুন
- `:` দিয়ে শুরু হওয়া commands টাইপ করে Enter চাপুন
- `<Space>` মানে Spacebar চাপুন
- Numbers দিয়ে commands repeat করতে পারেন (যেমন: `5dd`)
- `.` চেপে শেষ command repeat করতে পারেন
- `Ctrl+g` চেপে current position দেখতে পারেন
- `:set spell` চেপে spell checking on করতে পারেন

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