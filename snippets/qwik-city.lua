return {
  -- Globally for all filetypes
  all = {
    -- Simple page component snippet
    ls.parser.parse_snippet("qpage", 
      "import { component$ } from '@builder.io/qwik';\n\nexport default component$(() => {\n  $0\n});"
    ),

    -- Action snippet for route action
    ls.parser.parse_snippet("qaction$", 
      "export const $1 = routeAction$((data) => {\n  $0\n});"
    ),

    -- Loader snippet for route loader
    ls.parser.parse_snippet("qloader$", 
      "export const $1 = routeLoader$(() => {\n  $0\n});"
    ),

    -- onRequest function for a route index
    ls.parser.parse_snippet("qonRequest", 
      "export const onRequest: RequestHandler = (request) => {\n  $0\n};"
    ),
  },
}



