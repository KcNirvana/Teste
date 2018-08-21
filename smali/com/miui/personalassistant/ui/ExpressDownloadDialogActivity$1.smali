.class Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;
.super Ljava/lang/Object;
.source "ExpressDownloadDialogActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->finish()V

    return-void
.end method

.method public onNegativeBtnClick()V
    .locals 0

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->finish()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onReTipBtnClick()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_update_express"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
