param(
  [Parameter(Mandatory=$true)]
  [string] $path
)

process {
  & $PSScriptRoot\Sort-XmlFiles.ps1 `
    -path "$path/*.xml" `
    -orderedNodeQueries @(
      "/AppModuleSiteMap/SiteMap",
      "/AppModuleSiteMap/SiteMap/Area",
      "/AppModuleSiteMap/SiteMap/Area/Group",

      "/forms/systemform/form/tabs",
      "/forms/systemform/form/tabs/tab/columns",
      "/forms/systemform/form/tabs/tab/columns/column/sections",
      "/forms/systemform/form/tabs/tab/columns/column/sections/section/rows",
      "/forms/systemform/form/tabs/tab/columns/column/sections/section/rows/cell",
      "/forms/systemform/form/header/rows",
      "/forms/systemform/form/header/rows/row",
      "/forms/systemform/form/clientresources/internalresources/clientincludes",
      "/forms/systemform/form/events/event/InternalHandlers",
      "/forms/systemform/form/events/event/Handlers",
      "/forms/systemform/form/Navigation/NavBar",
      "/forms/systemform/form/Navigation/NavBarAreas",
      "/forms/systemform/form/formLibraries",

      "/savedqueries/savedquery/layoutxml/grid/row",

      "/InteractionCentricDashboard/FormXml/forms/form/tabs",
      "/InteractionCentricDashboard/FormXml/forms/form/tabs/tab/columns",
      "/InteractionCentricDashboard/FormXml/forms/form/tabs/tab/columns/column/sections",
      "/InteractionCentricDashboard/FormXml/forms/form/tabs/tab/columns/column/sections/section/rows",
      "/InteractionCentricDashboard/FormXml/forms/form/tabs/tab/columns/column/sections/section/rows/row",

      "optionset/options"
    )
}