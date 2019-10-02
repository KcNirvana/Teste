.class public Lcom/miui/video/common/library/widget/UIOkCancelDialog;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIOkCancelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;,
        Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UIOkCancelDialog"


# instance fields
.field private mTimeFinishListener:Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

.field private mTimer:Landroid/os/CountDownTimer;

.field private vCheck:Landroid/widget/CheckBox;

.field private vInfo:Landroid/widget/TextView;

.field private vLine:Landroid/view/View;

.field private vLinearLayout:Landroid/widget/LinearLayout;

.field private vTimer:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;

.field private vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimer:Landroid/os/CountDownTimer;

    iput-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimeFinishListener:Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTimer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/library/widget/UIOkCancelDialog;)Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimeFinishListener:Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

    return-object p0
.end method

.method public static synthetic lambda$setViews$0(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;->onLeftClick(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setViews$1(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;->onRightClick(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setViews$2(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;->onLeftClick(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setViews$3(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;->onRightClick(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/library/R$layout;->ui_okcancel_dialog:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->inflateView(I)V

    sget v0, Lcom/miui/video/common/library/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/library/R$id;->v_info:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v0, Lcom/miui/video/common/library/R$id;->v_timer:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTimer:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/library/R$id;->v_check:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    sget v0, Lcom/miui/video/common/library/R$id;->v_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    sget v0, Lcom/miui/video/common/library/R$id;->v_linearlayout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLinearLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/common/library/R$id;->ui_okcancelbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/UIOkCancelBar;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->releaseTimer()V

    return-void
.end method

.method public releaseTimer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimer:Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimeFinishListener:Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

    :cond_0
    return-void
.end method

.method public setCancelBackgroundDrawableRes(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setCancelBackgroundDrawableRes(I)V

    :cond_0
    return-void
.end method

.method public setCancelColorRes(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setCancelColorRes(I)V

    :cond_0
    return-void
.end method

.method public setCustomView(ILandroid/view/View;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLinearLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setViews(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInfoColorRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setInfoContainLink(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    return-void
.end method

.method public setLineColorRes(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setLineRes(I)V

    :cond_1
    return-void
.end method

.method public setOkBackgroundDrawableRes(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setOkBackgroundDrawableRes(I)V

    :cond_0
    return-void
.end method

.method public setOkColorRes(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setOkColorRes(I)V

    :cond_0
    return-void
.end method

.method public setShowTimer(II)V
    .locals 9

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTimer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTimer:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    if-le p2, v3, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->releaseTimer()V

    new-instance v0, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/miui/video/common/library/widget/UIOkCancelDialog$1;-><init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;JJI)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimer:Landroid/os/CountDownTimer;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTimer:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setTimeFinishListener(Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->mTimeFinishListener:Lcom/miui/video/common/library/widget/UIOkCancelDialog$ITimeFinishListener;

    return-void
.end method

.method public setTitleColorRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitleGravity(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setViews(IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViews(IILjava/lang/String;ZIILcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance p1, Lcom/miui/video/common/library/widget/ext/SpanText;

    iget-object p2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/common/library/widget/ext/SpanText;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/library/R$color;->c_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->hideUnderline(III)Lcom/miui/video/common/library/widget/ext/SpanText;

    iget-object p2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    new-instance p2, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$cEB6jiQo0HjW07JlPWNg7ou_zl4;

    invoke-direct {p2, p0, p7}, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$cEB6jiQo0HjW07JlPWNg7ou_zl4;-><init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V

    new-instance p3, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$KdhCIYxGiWMR5tG73Lv9yO8iOXE;

    invoke-direct {p3, p0, p7}, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$KdhCIYxGiWMR5tG73Lv9yO8iOXE;-><init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V

    invoke-virtual {p1, p5, p6, p2, p3}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setViews(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    sget p2, Lcom/miui/video/common/library/R$color;->c_black:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setCancelColorRes(I)V

    return-void
.end method

.method public setViews(Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setViews(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/miui/video/common/library/widget/ext/SpanText;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/common/library/widget/ext/SpanText;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/library/R$color;->c_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v2, p2, v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->hideUnderline(III)Lcom/miui/video/common/library/widget/ext/SpanText;

    iget-object p2, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelDialog;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    new-instance p2, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$GhldA9SN2mUo77YkITIQGhYAnHs;

    invoke-direct {p2, p0, p7}, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$GhldA9SN2mUo77YkITIQGhYAnHs;-><init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V

    new-instance p3, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$vUIHkmkMCn9tJgRd56SI3d-3cq4;

    invoke-direct {p3, p0, p7}, Lcom/miui/video/common/library/widget/-$$Lambda$UIOkCancelDialog$vUIHkmkMCn9tJgRd56SI3d-3cq4;-><init>(Lcom/miui/video/common/library/widget/UIOkCancelDialog;Lcom/miui/video/common/library/widget/UIOkCancelDialog$IOkCancelCheckListener;)V

    invoke-virtual {p1, p5, p6, p2, p3}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setViews(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method
