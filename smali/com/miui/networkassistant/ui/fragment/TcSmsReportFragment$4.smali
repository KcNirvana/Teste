.class final Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    check-cast p2, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get10(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->registerSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap6(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    return-void
.end method
