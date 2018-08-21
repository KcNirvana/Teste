.class Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;
.super Ljava/lang/Object;
.source "QuickstartInstallDialogActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;->showDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;->finish()V

    return-void
.end method

.method public onNegativeBtnClick()V
    .locals 0

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;->finish()V

    return-void
.end method

.method public onReTipBtnClick()V
    .locals 0

    return-void
.end method
