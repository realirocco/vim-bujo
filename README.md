# vim-bujo

Plug in to define syntax highlighting for bullet journal.
Despite bullet journaling should be done with pen and paper, I tried to standardize a format to do it digitally.

I hope other people could found useful my job here.

Here you are a screenshot
![vim-bujo screenshot](https://github.com/realirocco/vim-bujo/blob/main/screenshot.png)

## Installing
### Vim8
I suggest cloning this repo in your vim configuration folder to update or customize it easier.

Assuming your vim configuration folder is `~/.vim/`
```
cd ~/.vim/
mkdir -p pack/plugins/start/
git clone https://github.com/realirocco/vim-bujo.git pack/plugins/start/vim-bujo
```
## Command

| Command                    | List                                                                                                        |
| ---                        | ---                                                                                                         |
| `:BjSearchTag [TAGNAME]`   | execute a vimgrep in the current folder to find a tag passed as an argument. Require the argument is a used tag      |


## Mappings

|VIM mode | Mapping             | Description                                                         |
|---       | ---                | ---                                                                 |
|normal    | `,s`               | call `:BjSearchTag` for                                             |
|normal    | `X`                | Set an iten as done                                                 |
|insert    | `<c-T>`            | insert current time (format HH:mm)                                  |
|insert    | `<c-D>`            | insert current date (format "day of week" "day of month" "month")   |
