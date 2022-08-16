# Simple Toast
Param([String]$Message = "Notification");
$toast = [Windows.UI.Notifications.ToastNotificationManager,Windows.UI.Notifications,ContentType=WindowsRuntime]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType,Windows.UI.Notifications,ContentType=WindowsRuntime]::ToastText01);
$toast.GetElementsByTagName("text").Item(0).InnerText = $Message;
[Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier("Microsoft.Windows.Computer").Show($toast);
