# 1- vite
npm init @vitejs/app
npm install
npm run dev

# 2 - eslint
npm install -D  eslint \
                eslint-plugin-vue \
                @vue/eslint-config-typescript \
                @typescript-eslint/parser \
                @typescript-eslint/eslint-plugin
npx eslint --init
# override eslintrc.js/extends with appropriate config
# add these 2 scripts in package.json:
#  "lint": "eslint --ext .ts,vue --ignore-path .gitignore .",
#  "lint:fix": "eslint --fix --ext .ts,vue --ignore-path .gitignore ."
# make sure eslint extension is enabled
# reload vscode window

# 3 - husky
npm install -D husky lint-staged
# see npmjs.com/package/lint-staged
# update package.json with:
# {
# "husky": {
#     "hooks": {
#     "pre-commit": "lint-staged"
#     }
# },
# "lint-staged": {
#     "*.{ts,vue}": "eslint --fix"
# }
# }

# 4 - prettier
npm install -D prettier eslint-plugin-prettier @vue/eslint-config-prettier
touch .prettierc
# add some rules
# add prettier config into eslint
# reload vscode window
npx prettier -w -u .
# update lint-staged config in package.json in order to run prettier before each commit
# make sure prettier extension is enabled

# 5 - stylint
npm install -D stylelint stylelint-config-recommended stylelint-config-standard
touch .stylelintrc
# add some rules
# make sure stylelint extension is enabled

# 6 - configure alias