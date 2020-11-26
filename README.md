# vim-bujo

Plug in to define sintax highlighting for bullet journal.
Despite bullet journaling should be done with pen and paper, I tried to standarize a format to do it digitally.

I hope other people could found usefull my job here.

## Installing
### Vim8
I suggest to clone this repo in your vim configuration folder to make easy update or customize it.

Assuming your vim configuration folder is `~/.vim/`
```
cd ~/.vim/
mkdir -p pack/plugins/start/
git clone https://github.com/realirocco/vim-bujo.git pack/plugins/start/vim-bujo
```
## Command

| Command                    | List                                                                                                        |
| ---                        | ---                                                                                                         |
| `:BjSearchTag [TAGNAME]`   | execute a vimgrep in current folder to find tag passed as argument. Require the argument is a used tag      |


## Mappings

|VIM mode | Mapping             | Description                                                         |
|---       | ---                | ---                                                                 |
|normal    | `,s`               | call `:BjSearchTag` for                                             |
|normal    | `X`                | Set an iten as done                                                 |
|insert    | `<c-T>`            | insert current time (format HH:mm)                                  |
|insert    | `<c-D>`            | insert current date (format "day of week" "day of month" "month")   |
