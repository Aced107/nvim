return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require "luasnip"
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    local qwik_city_snippets = {
      s("qonRequest", {
        t("export const onRequest: RequestHandler = (request) => {"),
        t({ "", "  " }), i(1), t({ "", "};" }),
      }),
      s("qloader$", {
        t("export const "), i(1, "loader"), t(" = routeLoader$(() => {"),
        t({ "", "  " }), i(2), t({ "", "});" }),
      }),
      s("qaction$", {
        t("export const "), i(1, "action"), t(" = routeAction$((data) => {"),
        t({ "", "  " }), i(2), t({ "", "});" }),
      }),
      s("qpage", {
        t({ "import { component$ } from '@builder.io/qwik';", "" }),
        t({ "export default component$(() => {", "  " }),
        i(1), t({ "", "});" }),
      }),
    }

    local qwik_snippets = {
      s("qcomponent$", {
        t("export const "), i(1, "${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/}}"), t(" = component$(() => {"),
        t({ "", "  return <${2:div}>$4</$2>" }), t({ "", "});" }),
      }),
      s("qcomponent$ + props", {
        t("export interface "), i(1, "${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/}}"), t("Props {"),
        t({ "", "  " }), i(2), t({ "", "}" }),
        t({ "", "" }),
        t("export const "), i(1), t(" = component$<$1Props>((props) => {"),
        t({ "", "  const ${2:count} = useSignal(0);" }),
        t({ "", "  return (" }),
        t({ "", "    <${3:div} on${4:Click}$={(ev) => {$5}}>" }),
        t({ "", "      $6" }),
        t({ "", "    </${3}>" }),
        t({ "", "  );" }),
        t({ "", "});" }),
      }),
      s("quseSignal", {
        t("const "), i(1, "foo"), t(" = useSignal($2);"), t("$0"),
      }),
      s("quseStore", {
        t("const "), i(1, "state"), t(" = useStore({"),
        t({ "", "  " }), i(2), t({ "", "});" }), t("$0"),
      }),
      s("q$", {
        t("$(() => {"),
        t({ "", "  " }), i(1), t({ "", "});" }),
      }),
      s("quseVisibleTask", {
        t("useVisibleTask$(({ track }) => {"),
        t({ "", "  " }), i(1), t({ "", "});" }),
      }),
      s("quseTask$", {
        t("useTask$(({ track }) => {"),
        t({ "", "  track(() => $1);" }), t({ "", "  $0" }),
        t({ "", "});" }),
      }),
      s("quseResource$", {
        t("const "), i(1), t(" = useResource$(({ track, cleanup }) => {"),
        t({ "", "  " }), i(2), t({ "", "});" }),
      }),
    }

    ls.add_snippets("javascriptreact", qwik_city_snippets)
    ls.add_snippets("typescriptreact", qwik_city_snippets)
    ls.add_snippets("javascriptreact", qwik_snippets)
    ls.add_snippets("typescriptreact", qwik_snippets)
  end,
}


