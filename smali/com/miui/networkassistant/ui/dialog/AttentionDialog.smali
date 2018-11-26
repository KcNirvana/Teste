.class public Lcom/miui/networkassistant/ui/dialog/AttentionDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# instance fields
.field private mListener:Lcom/miui/networkassistant/ui/dialog/AttentionDialog$AttentionDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/AttentionDialog$AttentionDialogListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/AttentionDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/AttentionDialog$AttentionDialogListener;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/AttentionDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/AttentionDialog$AttentionDialogListener;

    return-void
.end method


# virtual methods
.method public buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/AttentionDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/AttentionDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/AttentionDialog;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x7f0703d0

    return v0
.end method

.method protected onBuild(Landroid/app/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/AttentionDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/AttentionDialog$AttentionDialogListener;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/ui/dialog/AttentionDialog$AttentionDialogListener;->onAttentionChanged(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method
