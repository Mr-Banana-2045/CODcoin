Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object Windows.Forms.Form
$form.Text = "CODcoin"
$form.Size = New-Object Drawing.Size(500, 800)
$form.BackColor = '#000000'
$form.Icon = New-Object system.drawing.icon("C:\Users\hooma\Desktop\COD.ico")
$form.MaximizeBox = $false
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle   

$label = New-Object Windows.Forms.Label
$label.Text = "CODcoin"
$label.AutoSize = $true
$label.ForeColor = "White"
$label.Location = New-Object System.Drawing.Point(170, 20)
$label.Font = New-Object Drawing.Font("Microsoft Sans Serif", 24, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label)

$label3 = New-Object Windows.Forms.Label
$label3.Text = "COIN : "
$label3.ForeColor = "Gray"
$label3.AutoSize = $true
$label3.Location = New-Object System.Drawing.Point(200, 68)
$label3.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label3)

$label2 = New-Object Windows.Forms.Label
$label2.Text = $script:count
$label2.ForeColor = "Gray"
$label2.AutoSize = $true
$label2.Location = New-Object System.Drawing.Point(250, 68)
$label2.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label2)

$label4 = New-Object Windows.Forms.Label
$label4.Text = "OUTPUT : "
$label4.ForeColor = "Gray"
$label4.AutoSize = $true
$label4.Location = New-Object System.Drawing.Point(100, 320)
$label4.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label4)

$label5 = New-Object Windows.Forms.Label
$label5.ForeColor = "Green"
$label5.AutoSize = $true
$label5.Location = New-Object System.Drawing.Point(150, 350)
$label5.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label5)

$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(145,430)
$Button2.Size = New-Object System.Drawing.Size(200,60)
$Button2.Padding = New-Object System.Windows.Forms.Padding(5)
$Button2.Text = "Get Coin"
$Button2.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
$Button2.ForeColor = "white"
$Button2.Add_Click({
    if (-not (Test-Path "moz.txt")) {
        New-Item -Path "moz.txt" -ItemType File
        msg
    }
})
function msg {
    $form1 = New-Object System.Windows.Forms.Form
    $form1.Size = New-Object Drawing.Size(500, 300)
    $form1.Text = "Password CODcoin"
    $form1.Icon = New-Object system.drawing.icon("C:\Users\hooma\Desktop\COD.ico")
    $form1.MaximizeBox = $false
    $form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
   
    $label40 = New-Object Windows.Forms.Label
    $label40.Text = "password : "
    $label40.ForeColor = "black"
    $label40.AutoSize = $true
    $label40.Location = New-Object System.Drawing.Point(140, 70)
    $label40.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
    $form1.Controls.Add($label40)

    $label = New-Object Windows.Forms.Label
    $label.Text = "CODcoin PASS"
    $label.AutoSize = $true
    $label.ForeColor = "Black"
    $label.Location = New-Object System.Drawing.Point(130, 20)
    $label.Font = New-Object Drawing.Font("Microsoft Sans Serif", 24, [Drawing.FontStyle]::Bold)
    $form1.Controls.Add($label)

    $passwordBox = New-Object System.Windows.Forms.TextBox
    $passwordBox.Location = New-Object System.Drawing.Point(140,100)
    $passwordBox.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
    $passwordBox.Size = New-Object System.Drawing.Size(200,20)
    $passwordBox.UseSystemPasswordChar = $true
    $form1.Controls.Add($passwordBox)

    $Button00 = New-Object System.Windows.Forms.Button
    $Button00.Location = New-Object System.Drawing.Size(140,150)
    $Button00.Size = New-Object System.Drawing.Size(200,50)
    $Button00.Padding = New-Object System.Windows.Forms.Padding(5)
    $Button00.Text = "Get"
    $Button00.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
    $Button00.ForeColor = "Black"
    $Button00.Add_Click({
        if ($passwordBox.Text -eq "CODmoz") {
            $script:count++ + 50
            $label2.Text = $script:count + 50
            [System.Windows.Forms.MessageBox]::Show("Coins were increased", "Success", "OK", [System.Windows.Forms.MessageBoxIcon]::Information)
            $form1.close()
        } else {
            [System.Windows.Forms.MessageBox]::Show("ٍERROR", "Error", "OK", [System.Windows.Forms.MessageBoxIcon]::Error)
        }
    })
    $form1.Controls.Add($Button00)
    $form1.ShowDialog()
}
$form.Controls.Add($Button2)

$Button3 = New-Object System.Windows.Forms.Button
$Button3.Location = New-Object System.Drawing.Size(145,500)
$Button3.Size = New-Object System.Drawing.Size(200,60)
$Button3.Padding = New-Object System.Windows.Forms.Padding(5)
$Button3.Text = "Help"
$Button3.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
$Button3.ForeColor = "white"
$Button3.Add_Click({
    $ie = New-Object -ComObject InternetExplorer.Application
    $ie.Visible = $true
    $ie.Navigate("https://github.com/Mr-Banana-2045")
})
$form.Controls.Add($Button3)

$script:count = $script:count -as [int]
if (-not $script:count) {
    $script:count = 0
}

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(145,100)
$Button.Size = New-Object System.Drawing.Size(200,200)
$Button.Padding = New-Object System.Windows.Forms.Padding(5)
$image = [System.Drawing.Image]::FromFile("C:\Users\hooma\Desktop\coin1.png")
$Button.BackgroundImage = $image
$Button.FlatStyle = "Flat"
$Button.BackgroundImageLayout = "Stretch"
$form.Controls.Add($Button)
$Button.Add_Click({
    $script:count++
    $label2.Text = $script:count
    if ($script:count -eq 50) {
        $label5.Text = "Javascript : `nconsole.log('hello');"
    } elseif ($script:count -eq 70) {
        $label5.Text = "Python : `nprint('hello')"
    } elseif ($script:count -eq 100) {
        $label5.Text = "Powershell : `nWrite-Host 'hello'"
    } elseif ($script:count -eq 150) {
        $label5.Text = "Php : `necho 'hello';"
    } elseif ($script:count -eq 170) {
        $label5.Text = "Bash Script : `nechp 'hello'"
    } elseif ($script:count -eq 200) {
        $label5.Text = "Vbscript : `nMsgBox('hello','hello')"
    } elseif ($script:count -eq 250) {
        $label5.Text = "C++ : `ncout << 'hello';"
    } elseif ($script:count -eq 270) {
        $label5.Text = "Fortran : `nprint *,'hello'"
    } elseif ($script:count -eq 300) {
        $label5.Text = "Java : `nSystem.out.println('hello');"
    } elseif ($script:count -eq 350) {
        $label5.Text = "Tcl Script : `nputs 'hello'"
    } elseif ($script:count -eq 370) {
        $label5.Text = "Html : `n<p>hello</p>"
    } 
})

$form.Add_Closing({
    $script:count | Out-String
})

$form.ShowDialog() | Out-Null
