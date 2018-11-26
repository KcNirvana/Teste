.class public Lcom/miui/networkassistant/ui/dialog/CommonDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# instance fields
.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getNegativeButtonText()I
    .locals 1

    const/high16 v0, 0x1040000

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x104000a

    return v0
.end method

.method protected onBuild(Landroid/app/AlertDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->mView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->showDialog()V

    return-void
.end method
