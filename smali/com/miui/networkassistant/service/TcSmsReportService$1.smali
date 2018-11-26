.class final Lcom/miui/networkassistant/service/TcSmsReportService$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/TcSmsReportService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/TcSmsReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/TcSmsReportService$1;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/TcSmsReportService$1;->this$0:Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService;->stopSelf()V

    return-void
.end method
