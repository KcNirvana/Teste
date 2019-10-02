.class public Lcom/miui/video/base/widget/ui/MiVAlertDialog;
.super Ljava/lang/Object;
.source "MiVAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG_NEGATIVE_BUTTON:I = 0xc9

.field private static final TAG_POSITIVE_BUTTON:I = 0xca


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCustomizedViewAnchor:Landroid/view/ViewGroup;

.field private mMessage:Landroid/widget/TextView;

.field private mNegativeButton:Landroid/widget/TextView;

.field private mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButton:Landroid/widget/TextView;

.field private mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/widget/ui/MiVAlertDialog;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setAlertDialog(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/video/base/R$layout;->miv_alert_dialog_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    sget v1, Lcom/miui/video/base/R$id;->dlg_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    sget v1, Lcom/miui/video/base/R$id;->dlg_org_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    sget v1, Lcom/miui/video/base/R$id;->dlg_customized_view_anchor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mCustomizedViewAnchor:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    sget v1, Lcom/miui/video/base/R$id;->dlg_btn_negative:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    sget v1, Lcom/miui/video/base/R$id;->dlg_btn_positive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveButton:Landroid/widget/TextView;

    return-void
.end method

.method private setAlertDialog(Landroid/app/AlertDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x1

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->dismiss()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveButton:Landroid/widget/TextView;

    const/16 p3, 0xca

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeButton:Landroid/widget/TextView;

    const/16 p3, 0xc9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutsize(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mMessage:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mCustomizedViewAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
