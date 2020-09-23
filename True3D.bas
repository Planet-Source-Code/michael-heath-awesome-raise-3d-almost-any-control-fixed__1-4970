Attribute VB_Name = "True3D"

Public TopLn As Line
Public tIndex As Integer
Public BottomLn As Line
Public bIndex As Integer
Public RightLn As Line
Public rIndex As Integer
Public LeftLn As Line
Public lIndex As Integer
Public AIndex As Integer


Sub T3D(vForm As Form, T3DObject As Control)
AIndex = AIndex + 1

tIndex = vForm.TopLine.Count
Set TopLn = vForm.TopLine(AIndex)
  With TopLn
    .BorderWidth = 3
    .BorderColor = &H80000009
    .Visible = True
    .X1 = T3DObject.Left - 75
    .X2 = T3DObject.Left + T3DObject.Width + 75
    .Y1 = T3DObject.Top - 75
    .Y2 = T3DObject.Top - 75
    End With
    'Set TopLn = Nothing

bIndex = vForm.BottomLine.Count
Set BottomLn = vForm.BottomLine(AIndex)
  With BottomLn
    .BorderWidth = 3
    .BorderColor = &H80000008
    .Visible = True
    .X1 = T3DObject.Left - 75
    .X2 = T3DObject.Left + T3DObject.Width + 75
    .Y1 = T3DObject.Top + T3DObject.Height + 75
    .Y2 = T3DObject.Top + T3DObject.Height + 75
    End With
    'Set BottomLn = Nothing

rIndex = vForm.SideLine2.Count
'Load SideLine(AIndex)
Set RightLn = vForm.SideLine2(AIndex)
  With RightLn
    .BorderWidth = 3
    .BorderColor = &H80000008
    .Visible = True
    .X1 = T3DObject.Left + T3DObject.Width + 75
    .X2 = T3DObject.Left + T3DObject.Width + 75
    .Y1 = T3DObject.Top - 75
    .Y2 = T3DObject.Top + T3DObject.Height + 75
    End With
    'Set RightLn = Nothing
    
lIndex = vForm.SideLine.Count
Set LeftLn = vForm.SideLine(AIndex)
  With LeftLn
    .BorderWidth = 3
    .BorderColor = &H80000009
    .Visible = True
    .X1 = T3DObject.Left - 75
    .X2 = T3DObject.Left - 75
    .Y1 = T3DObject.Top - 75
    .Y2 = T3DObject.Top + T3DObject.Height + 75
    End With
    'Set LeftLn = Nothing
    

End Sub


