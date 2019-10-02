.class public Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;
.super Landroid/widget/FrameLayout;
.source "PortraitSpeedPlayLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;
    }
.end annotation


# instance fields
.field private currentAsyncSpeed:F

.field private mChangeSpeedListener:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

.field private mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

.field private speedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private vSpeedsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->currentAsyncSpeed:F

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->currentAsyncSpeed:F

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->currentAsyncSpeed:F

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->currentAsyncSpeed:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->refreshDataAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mChangeSpeedListener:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/player/online/R$layout;->vp_portrait_speed_play:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/miui/video/biz/player/online/R$id;->v_container_speeds:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshData()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlaySpeed()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/player/online/R$layout;->lp_item_speed:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/miui/video/biz/player/online/R$id;->v_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v0, v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/video/biz/player/online/R$drawable;->shape_corner_solid_c5_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v6, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;

    invoke-direct {v6, p0, v0, v3}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;-><init>(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;FLjava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshDataAsync()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getRatioText(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/player/online/R$layout;->lp_item_speed:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/miui/video/biz/player/online/R$id;->v_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->currentAsyncSpeed:F

    invoke-static {v3}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/video/biz/player/online/R$drawable;->shape_corner_solid_c5_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v6, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;-><init>(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;Ljava/lang/String;F)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getCurrentCp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ytb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSupportedSpeed()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSupportedSpeed()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->speedList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->refreshDataAsync()V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getCurrentSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->refreshData()V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mChangeSpeedListener:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    invoke-interface {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;->onClose()V

    return-void
.end method

.method public setChangeSpeedListener(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mChangeSpeedListener:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    return-void
.end method

.method public setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->showView()V

    return-void
.end method
