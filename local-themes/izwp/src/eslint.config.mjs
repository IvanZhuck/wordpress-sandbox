import globals from "globals";
import standard from 'eslint-config-standard'
import pluginJs from "@eslint/js";
import pluginN from 'eslint-plugin-n'
import pluginPromise from 'eslint-plugin-promise'
import pluginImport from 'eslint-plugin-import'

export default [
  {
    files: ["js/**/*.js"],
    languageOptions: {
      globals: {
        ...globals.browser
      }
    },
    rules: {
      ...pluginJs.configs.recommended.rules,
      ...standard.rules,
      "no-unused-vars": "warn",
      "no-undef": "warn",
      "semi": ["warn", "always"]
    },
    plugins: {
      n: pluginN,
      import: pluginImport,
      promise: pluginPromise
    }
  }
];