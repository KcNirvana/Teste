.class public Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;
.super Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;
.source "QuickstartInstallDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected showDialog(Ljava/lang/String;Z)V
    .locals 7

    new-instance v0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;->mContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1b0b0239

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;

    invoke-direct {v6, p0, p1}, Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/QuickstartInstallDialogActivity;Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->show()V

    return-void
.end method
