return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("refactoring").setup({})

        -- The UI Menu (The easiest way to use it)
        vim.keymap.set({ "n", "x" }, "<leader>rr", function()
            require("refactoring").select_refactor()
        end, { desc = "Open Refactor Menu" })

        -- Direct Keybinds for speed
        -- Extract block (Normal mode)
        vim.keymap.set("n", "<leader>rb", ":Refactor extract_block<CR>", { desc = "Extract Block" })

        -- Extract function (Visual mode)
        vim.keymap.set("x", "<leader>re", ":Refactor extract<CR>", { desc = "Extract Function" })
        vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file<CR>", { desc = "Extract to File" })

        -- Variables (Visual mode)
        vim.keymap.set("x", "<leader>rv", ":Refactor extract_var<CR>", { desc = "Extract Variable" })
        vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var<CR>", { desc = "Inline Variable" })
    end,
}
