.class public Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "UIRefreshHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field private finishAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:Landroid/widget/ImageView;

.field private refreshingAnimator:Landroid/animation/ObjectAnimator;

.field private releaseAnimator:Landroid/animation/ObjectAnimator;

.field private set:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->finishAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    return-object p0
.end method

.method private init()V
    .locals 10

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/ugc/R$layout;->refresh_header:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/ugc/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#01ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->setBackgroundColor(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->setVisibility(I)V

    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v3, v1, [F

    iget-object v4, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v4

    const/high16 v5, 0x43160000    # 150.0f

    add-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v4, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v3, "rotation"

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    new-array v6, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v2

    aput-object v3, v6, v5

    invoke-static {v4, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->releaseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->releaseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->releaseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    const-string v6, "rotation"

    new-array v7, v1, [F

    iget-object v8, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRotation()F

    move-result v8

    aput v8, v7, v2

    iget-object v8, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRotation()F

    move-result v8

    const v9, 0x48afc800    # 360000.0f

    add-float/2addr v8, v9

    aput v8, v7, v5

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->refreshingAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->refreshingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/32 v6, 0xc3500

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->refreshingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "rotation"

    new-array v6, v1, [F

    iget-object v7, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRotation()F

    move-result v7

    const/high16 v8, 0x42480000    # 50.0f

    add-float/2addr v7, v8

    aput v7, v6, v2

    iget-object v7, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRotation()F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    add-float/2addr v7, v8

    aput v7, v6, v5

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v6, "scaleX"

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v7, "scaleY"

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->mProgress:Landroid/widget/ImageView;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v9, v2

    aput-object v6, v9, v5

    aput-object v7, v9, v1

    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->finishAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->finishAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->finishAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public isSupportHorizontalDrag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->finishAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;-><init>(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    return p1
.end method

.method public onHorizontalDrag(FII)V
    .locals 0

    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 1
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->setVisibility(I)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->set:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->set:Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->releaseAnimator:Landroid/animation/ObjectAnimator;

    aput-object v0, p3, p1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->refreshingAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->set:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$1;-><init>(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$3;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "onStateChanged RefreshReleased"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "onStateChanged RefreshFinish"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "onStateChanged PullDownToRefresh"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "onStateChanged ReleaseToRefresh"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "onStateChanged Refreshing"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs setPrimaryColors([I)V
    .locals 0

    return-void
.end method
