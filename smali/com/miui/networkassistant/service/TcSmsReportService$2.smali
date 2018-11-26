.class final Lcom/miui/networkassistant/service/TcSmsReportService$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/TcSmsReportService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$2;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/TcSmsReportService$2;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$2;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->-wrap1(Lcom/miui/networkassistant/service/TcSmsReportService;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
