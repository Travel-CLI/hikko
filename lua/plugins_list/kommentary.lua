-- Comments
return {
  unpack = function(use)
    use {
      'b3nj5m1n/kommentary',
      config = function()
        require('kommentary.config').configure_language("typescript", {
          single_line_comment_string = "//",
          multi_line_comment_strings = { "/*", "*/" },
        })
      end,
    }
  end
}
