class Thorax.Views.MeasuresAdminView extends Thorax.View
  template: JST['admin/measures']
  initialize: ->

  importMeasure: (event) ->
    importMeasureView = new Thorax.Views.ImportMeasure(firstMeasure: true)
    importMeasureView.appendTo(@$el)
    importMeasureView.display()


  measures: ->
   _measures = []
   for cat in PopHealth.categories
     for mes in cat.measures
        _measures.push mes
   _measures

  handleDelete: (e)->
    $.ajax(url: "/api/measures/"+e.target.id,
    type: 'delete',
    beforeSend: -> 
      console.log("before send")
    ,
    success: (res)-> 
      console.log("success")
      location.reload(true)
    ,
    error: (res)-> 
      console.log("error")
      alert("error")
    ,
    cache: false,
    contentType: false,
    processData: false
    )
