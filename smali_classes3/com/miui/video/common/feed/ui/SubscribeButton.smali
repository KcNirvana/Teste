.class public Lcom/miui/video/common/feed/ui/SubscribeButton;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SubscribeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;
    }
.end annotation


# instance fields
.field private lastClickTime:J

.field private listener:Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

.field private subscribed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->subscribed:Z

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->subscribed:Z

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->subscribed:Z

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setTextSize(IF)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setGravity(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setPadding(IIII)V

    new-instance v0, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$kgQnXH2mPryqXWN1R6oG6C1e7Fo;

    invoke-direct {v0, p0}, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$kgQnXH2mPryqXWN1R6oG6C1e7Fo;-><init>(Lcom/miui/video/common/feed/ui/SubscribeButton;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/miui/video/common/feed/ui/SubscribeButton;Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2bc

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->lastClickTime:J

    iget-boolean p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->subscribed:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->showCancelDialog()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->listener:Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->listener:Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;->onSubscribe(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$showCancelDialog$1(Lcom/miui/video/common/feed/ui/SubscribeButton;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->listener:Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->listener:Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;->onSubscribe(Z)V

    :cond_0
    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic lambda$showCancelDialog$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method private showCancelDialog()V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$string;->cancel_subscribe_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$string;->ok:I

    sget v4, Lcom/miui/video/common/feed/R$string;->cancel:I

    new-instance v5, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;

    invoke-direct {v5, p0, v0}, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;-><init>(Lcom/miui/video/common/feed/ui/SubscribeButton;Landroid/content/Context;)V

    new-instance v6, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$gVcBib1di3t89B5KznzkTkCHKsI;

    invoke-direct {v6, v0}, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$gVcBib1di3t89B5KznzkTkCHKsI;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method public setListener(Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->listener:Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

    return-void
.end method

.method public updateSubscribe(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/SubscribeButton;->subscribed:Z

    if-eqz p1, :cond_0

    sget v0, Lcom/miui/video/common/feed/R$string;->subscribed:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/video/common/feed/R$string;->subscribe:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setText(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$color;->c_black_60:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/feed/R$color;->c_white:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setTextColor(I)V

    if-eqz p1, :cond_2

    sget p1, Lcom/miui/video/common/feed/R$drawable;->ui_btn_subscribe_shape_bg_corners_white:I

    goto :goto_3

    :cond_2
    sget p1, Lcom/miui/video/common/feed/R$drawable;->ui_btn_subscribe_shape_bg_corners_blue:I

    :goto_3
    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setBackgroundResource(I)V

    return-void
.end method
