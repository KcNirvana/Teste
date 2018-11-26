.class public Lcom/miui/common/card/models/AdvListTitleCardModel;
.super Lcom/miui/common/card/models/TitleCardModel;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvListTitleCardModel"


# instance fields
.field private usePosition:I


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/AdvListTitleCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel;->usePosition:I

    return v0
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x7f030043

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/TitleCardModel;-><init>(I)V

    iput p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel;->usePosition:I

    return-void
.end method

.method private closeNormalAd(Lcom/miui/securityscan/MainActivity;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x80000000

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    new-instance v2, Lcom/miui/common/card/models/AdvListTitleCardModel$1;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$1;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const v4, 0x7f090021

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aget v4, v2, v6

    sub-int v0, v4, v0

    aget v2, v2, v7

    sub-int v1, v2, v1

    invoke-virtual {v3, p2, v6, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private closeNormalAdNewStyle(Lcom/miui/securityscan/MainActivity;)V
    .locals 7

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$2;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getEx()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.miui.securitycenter_scanresult"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aek(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.miui.securitycenter_scanresult"

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AdvListTitleCardModel"

    const-string/jumbo v1, "showDislikeWindow failed,maybe method showDislikeWindow() does not match or exits "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "AdvListTitleCardModel"

    const-string/jumbo v1, "connect failed,maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public isLocal()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->isLocal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->closeNormalAdNewStyle(Lcom/miui/securityscan/MainActivity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->closeNormalAd(Lcom/miui/securityscan/MainActivity;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a011f
        :pswitch_0
    .end packed-switch
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
