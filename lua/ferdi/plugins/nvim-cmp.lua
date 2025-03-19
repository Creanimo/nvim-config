return {
  'hrsh7th/nvim-cmp',
  dependencies = { 'roginfarrer/cmp-css-variables' },
  config = function()
    require'cmp'.setup {
      sources = {
        { name = 'css-variables' }
      }
    }
  end
}
