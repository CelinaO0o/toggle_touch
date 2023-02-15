$device = Get-PnpDevice | Where-Object {$_.FriendlyName -like '*touch screen*'}
if ($device) {
    switch ($device.Status) {
        'OK'    { $device | Disable-PnpDevice -Confirm:$false; break }
        'Error' { $device | Enable-PnpDevice -Confirm:$false }
    }
}