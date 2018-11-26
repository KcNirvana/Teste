.class final Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;
.super Lcom/miui/common/a/b/b;
.source ""


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;->this$1:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;

    invoke-direct {p0, p2}, Lcom/miui/common/a/b/b;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;->this$1:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f070316

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070319

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5$2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
