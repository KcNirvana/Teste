.class public Lcom/miui/networkassistant/ui/dialog/MessageDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x7f070239

    return v0
.end method

.method protected onBuild(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method
