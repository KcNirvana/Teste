.class final Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmsReceived()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07030f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSmsSentFailure()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method public onTimeOut()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/a/b/b;)V

    return-void
.end method
