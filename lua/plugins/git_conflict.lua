local function config()
  require'git-conflict'.setup {
    default_mappings = {
      ours = 'o',
      theirs = 't',
      none = '0',
      both = 'b',
      next = 'n',
      prev = 'p',
    },
  }

  -- Git-config будет показывать уведомление, когда нашел конфликты
  vim.api.nvim_create_autocommand('User', {
    pattern = 'GitConflictDetected',
    callback = function()
      vim.notify('Conflict detected in '..vim.fn.expand('<afile>'))
      vim.keymap.set('n', 'cww', function()
        engage.conflict_buster()
        create_buffer_local_mappings()
      end)
    end
  })
end

return {
  unpack = function(use)
    use {
      'akinsho/git-conflict.nvim',
      tag = "*",
      config = config
    }
  end
}

