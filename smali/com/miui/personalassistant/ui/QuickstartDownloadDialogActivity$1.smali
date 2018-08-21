.class Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;
.super Ljava/lang/Object;
.source "QuickstartDownloadDialogActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->showDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

.field final synthetic val$isDual:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    iput-boolean p2, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->val$isDual:Z

    iput-object p3, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->finish()V

    return-void
.end method

.method public onNegativeBtnClick()V
    .locals 0

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    const-class v2, Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onReTipBtnClick()V
    .locals 4

    iget-boolean v2, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->val$isDual:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycore"

    const-string/jumbo v3, "com.miui.xspace.ui.activity.XSpaceSettingActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->finish()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
