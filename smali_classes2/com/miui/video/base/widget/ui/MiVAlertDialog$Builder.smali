.class public Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
.super Ljava/lang/Object;
.source "MiVAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/widget/ui/MiVAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mContext:Landroid/content/Context;

.field private mCustomizedView:Landroid/view/View;

.field private mMessageText:Ljava/lang/String;

.field private mNegativeButtonText:Ljava/lang/String;

.field private mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonText:Ljava/lang/String;

.field private mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mTitleText:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mMessageText:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveButtonText:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeButtonText:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCustomizedView:Landroid/view/View;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCancelable:Z

    iput-boolean v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCanceledOnTouchOutside:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mBuilder:Landroid/app/AlertDialog$Builder;

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/miui/video/base/widget/ui/MiVAlertDialog;
    .locals 4

    new-instance v0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->access$000(Lcom/miui/video/base/widget/ui/MiVAlertDialog;Landroid/app/AlertDialog;)V

    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mTitleText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mMessageText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mMessageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setMessage(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCustomizedView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCustomizedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveButtonText:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveButtonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeButtonText:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeButtonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    iget-boolean v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setCancelable(Z)V

    iget-boolean v1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCanceledOnTouchOutside:Z

    invoke-virtual {v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setCanceledOnTouchOutsize(Z)V

    return-object v0
.end method

.method public setCancelable(Z)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mMessageText:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->mCustomizedView:Landroid/view/View;

    return-object p0
.end method
