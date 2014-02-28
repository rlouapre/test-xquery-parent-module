xquery version "1.0-ml";

module namespace parent-module = "http://marklogic.com/rlo/parent-module";
declare default function namespace "http://marklogic.com/rlo/parent-module";

import module namespace import = "http://marklogic.com/import"
  at "../node_modules/test-xquery-module/src/test-xquery-module.xqy";
  
declare option xdmp:mapping "false";

declare function greetings(
  $name as xs:string
) as xs:string
{
  "From Parent " || import:greetings($name)
};
