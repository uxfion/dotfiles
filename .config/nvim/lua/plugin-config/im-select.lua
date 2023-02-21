-- 自动选择输入法
local status, im_select = pcall(require, "im_select")
if not status then
    vim.notify("没有找到 im_select")
    return
end

im_select.setup()
