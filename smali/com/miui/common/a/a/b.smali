.class public abstract Lcom/miui/common/a/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mBaseDialogClickListener:Lcom/miui/common/a/a/c;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsWeakReferenceEnabled:Z

.field private mMessage:Ljava/lang/String;

.field private mNagetiveText:Ljava/lang/String;

.field private mPostiveText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/a/a/b;->mIsWeakReferenceEnabled:Z

    iput-object p1, p0, Lcom/miui/common/a/a/b;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected clearDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected abstract getNegativeButtonText()I
.end method

.method protected getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mBaseDialogClickListener:Lcom/miui/common/a/a/c;

    return-object v0
.end method

.method protected abstract getPositiveButtonText()I
.end method

.method protected abstract onBuild(Landroid/app/AlertDialog;)V
.end method

.method protected abstract onClick(Landroid/content/DialogInterface;I)V
.end method

.method protected onPrepareBuild(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected abstract onShow(Landroid/app/AlertDialog;)V
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/a/a/b;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setNagetiveText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/a/a/b;->mNagetiveText:Ljava/lang/String;

    return-void
.end method

.method public setPostiveText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/a/a/b;->mPostiveText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/a/a/b;->mTitle:Ljava/lang/String;

    return-void
.end method

.method protected setWeakReferenceEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/a/a/b;->mIsWeakReferenceEnabled:Z

    return-void
.end method

.method protected showDialog()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_6

    new-instance v0, Lcom/miui/common/a/a/c;

    iget-boolean v1, p0, Lcom/miui/common/a/a/b;->mIsWeakReferenceEnabled:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/common/a/a/c;-><init>(Lcom/miui/common/a/a/b;ZLcom/miui/common/a/a/c;)V

    iput-object v0, p0, Lcom/miui/common/a/a/b;->mBaseDialogClickListener:Lcom/miui/common/a/a/c;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/a/a/b;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/b;->onPrepareBuild(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/common/a/a/b;->getPositiveButtonText()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/miui/common/a/a/b;->mPostiveText:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/a/a/b;->mPostiveText:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/miui/common/a/a/b;->getNegativeButtonText()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/miui/common/a/a/b;->mNagetiveText:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/b;->mNagetiveText:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/miui/common/a/a/b;->mPostiveText:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/common/a/a/b;->mPostiveText:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/common/a/a/b;->mBaseDialogClickListener:Lcom/miui/common/a/a/c;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/common/a/a/b;->mNagetiveText:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/common/a/a/b;->mNagetiveText:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/common/a/a/b;->mBaseDialogClickListener:Lcom/miui/common/a/a/c;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/b;->onBuild(Landroid/app/AlertDialog;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/common/a/a/b;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/common/a/a/b;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/common/a/a/b;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/b;->onShow(Landroid/app/AlertDialog;)V

    return-void
.end method
