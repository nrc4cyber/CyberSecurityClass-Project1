# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms

#-----------[Variables]-----------------

# $cst_info = catt info

#-----------[selbairaV]-----------------

#-----------[Functions]-----------------

function ctt_info {
    catt status
}

function ctt_info_nice {
    $i = catt status
    Write-Output $i
}

function ctt_play_toggle {
    catt play_toggle
    Write-Output "UwU"
}

function ctt_stop {
    catt stop
}

#-----------[‏‏snoitonuF]-----------------


# Create a new form
$main_form                    = New-Object System.Windows.Forms.Form

# Define the size, title and background color
$main_form.ClientSize         = '500,300'
$main_form.text               = "Cast All The Things"
$main_form.BackColor          = "#ffffff"
$main_form.AutoSize           = $false
# $main_form.AutoSize           = $true

#-----------[Lable]-----------------

$label1 = New-Object System.Windows.Forms.Label
$label1.text = "OwO"
# $label1.text = ""
$label1.location = New-Object System.Drawing.Point(255,5)
$label1.size = New-Object System.Drawing.Size(240,290)
$label1.AutoSize = $true
$main_form.Controls.Add($label1)

#-----------[elbaL]-----------------

#-----------------------[Buttons]-----------------------
#-----------[Play Pause Toggle Button]-----------------

$btn_play_toggle          = New-Object System.Windows.Forms.Button
$btn_play_toggle.BackColor = "#a4ba67"
$btn_play_toggle.text     = "Play/Pause"
$btn_play_toggle.location = New-Object System.Drawing.Point(5,5)
$btn_play_toggle.size     = New-Object System.Drawing.Size(130,70)
$btn_play_toggle.BackColor = "#C7C7C7"
$btn_play_toggle.Add_Click({ ctt_play_toggle })
$btn_play_toggle.Add_Click({ $label1.text = ctt_info })
$main_form.controls.Add($btn_play_toggle)

#-----------[nottuB elggoT seuaP yalP]-----------------


#-----------[Stop Casting Button]-----------------

$btn_stop_cast          = New-Object System.Windows.Forms.Button
$btn_stop_cast.BackColor = "#a4ba67"
$btn_stop_cast.text     = "Stop Casting"
$btn_stop_cast.location = New-Object System.Drawing.Point(5,85)
$btn_stop_cast.size     = New-Object System.Drawing.Size(130,70)
$btn_stop_cast.BackColor = "#C7C7C7"
$btn_stop_cast.Add_Click({ ctt_stop })
$btn_stop_cast.Add_Click({ $label1.text = ctt_info })
$main_form.controls.Add($btn_stop_cast)

#-----------[nottuB gintsaC potS]-----------------

#-----------[Button 1]-----------------

$btn_1          = New-Object System.Windows.Forms.Button
$btn_1.BackColor = "#a4ba67"
$btn_1.text     = "Button 1"
$btn_1.location = New-Object System.Drawing.Point(185,115)
$btn_1.size     = New-Object System.Drawing.Size(130,70)
$btn_1.BackColor = "#C7C7C7"
$btn_1.Add_Click({})
$btn_1.Add_Click({ $label1.text = ctt_info })
$main_form.controls.Add($btn_1)

#-----------[1 nottuB]-----------------

#-----------[Button 2]-----------------

# $btn_2          = New-Object System.Windows.Forms.Button
# $btn_2.BackColor = "#a4ba67"
# $btn_2.text     = "Button 2"
# $btn_2.location = New-Object System.Drawing.Point(185,115)
# $btn_2.size     = New-Object System.Drawing.Size(130,70)
# $btn_2.BackColor = "#C7C7C7"
# $btn_2.Add_Click({})
# $btn_2.Add_Click({ $label1.text = ctt_info })
# $main_form.controls.Add($btn_2)

#-----------[2 nottuB]-----------------

#-----------[Button 3]-----------------

# $btn_3          = New-Object System.Windows.Forms.Button
# $btn_3.BackColor = "#a4ba67"
# $btn_3.text     = "Button 3"
# $btn_3.location = New-Object System.Drawing.Point(185,115)
# $btn_3.size     = New-Object System.Drawing.Size(130,70)
# $btn_3.BackColor = "#C7C7C7"
# $btn_3.Add_Click({})
# $btn_3.Add_Click({ $label1.text = ctt_info })
# $main_form.controls.Add($btn_3)

#-----------[3 nottuB]-----------------
#-----------------------[snottuB]-----------------------



# ==>ADD OTHER ELEMENTS ABOVE HERE<==

# Display the form
$main_form.ShowDialog()
