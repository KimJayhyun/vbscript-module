Sub Summarize_CSV(csvPath)
    Set objExcel = CreateObject("Excel.Application")

    Set objworkbook = objExcel.Workbooks.Open(csvPath) 
    Set objWorksheet = objWorkbook.Worksheets(1)

    objExcel.DisplayAlerts = False

    xlCSV = 6

    objExcel.ActiveWorkBook.SaveAs csvPath, xlCSV
    objExcel.ActiveWorkBook.Close False
    objExcel.quit

    MsgBox "Finish"

End Sub



csvPath = "C:\Users\ISPark\Desktop\test\result.csv"

call Summarize_CSV(csvPath)