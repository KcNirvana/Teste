.class final Lcom/miui/networkassistant/service/TcSmsReportService$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/TcSmsReportService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$3;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "+86"

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->removePhoneNumPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/service/TcSmsReportService$3;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/TcSmsReportService;->-get8(Lcom/miui/networkassistant/service/TcSmsReportService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/TcSmsReportService$3;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-wrap0(Lcom/miui/networkassistant/service/TcSmsReportService;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/TcSmsReportService$3;->abortBroadcast()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$3;->setResultCode(I)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
