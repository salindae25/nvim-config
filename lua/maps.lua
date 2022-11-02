local keymap = vim.keymap

--keymap.set('n','x','_x')
-- Goto normal mode

keymap.set('i','jk','<Esc>')
keymap.set('i','kj','<Esc>')

keymap.set('v','q','<Esc>')
--quit window
keymap.set('n',';q',':q<Return>')

-- Save file
keymap.set('',';s',':w<Return>')

-- select all
keymap.set('n', '<C-a>','gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>')
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n','<Tab>',':tabnext<Return>')

keymap.set('n','s<left>','<C-w>h')
keymap.set('n','s<up>','<C-w>k')
keymap.set('n','s<down>','<C-w>j')
keymap.set('n','s<right>','<C-w>l')

keymap.set('n','sh','<C-w>h')
keymap.set('n','sk','<C-w>k')
keymap.set('n','sj','<C-w>j')
keymap.set('n','sl','<C-w>l')

-- terminal
keymap.set('t','jk','<C-\\><C-n>')

keymap.set('n',';e',':NvimTreeToggle<Return>')

