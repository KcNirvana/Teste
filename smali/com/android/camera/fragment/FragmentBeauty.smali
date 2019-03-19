.class public Lcom/android/camera/fragment/FragmentBeauty;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;
.implements Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;,
        Lcom/android/camera/fragment/FragmentBeauty$SubTab;,
        Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;,
        Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;
    }
.end annotation


# static fields
.field private static TAB_INFOS:[Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;


# instance fields
.field private mBackButton:Landroid/widget/ImageView;

.field private mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mPendingShowTipsView:Z

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/FragmentBeauty$SubTab;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Lcom/android/camera/ui/BeautyTitleView;

.field private mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/BeautyTitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/FragmentBeauty;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->animateExpanding(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const v7, 0x90f02b2

    const v5, 0x90f02b1

    const/4 v4, 0x1

    const/4 v0, 0x7

    new-array v6, v0, [Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v2, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;

    const-string/jumbo v3, "beauty_level_button"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v2, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;

    const-string/jumbo v3, "beauty_makeup_button"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    aput-object v0, v6, v4

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v2, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    const-string/jumbo v3, "beauty_level_button"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v2, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    const-string/jumbo v3, "beauty_makeup_button"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v2, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    const-string/jumbo v3, "beauty_level_button"

    const v5, 0x90f02b3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v2, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    const-string/jumbo v3, "beauty_makeup_button"

    const v5, 0x90f02b4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v6, v1

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v3, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    const-string/jumbo v5, "beauty_3d_makeup_button"

    const v2, 0x90f02b5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;ZLjava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v6, v1

    sput-object v6, Lcom/android/camera/fragment/FragmentBeauty;->TAB_INFOS:[Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    return-void
.end method

.method private animateExpanding(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView;->expand()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView;->shrink()V

    goto :goto_0
.end method

.method private hideAdvance()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$9;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$9;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initBeautyTitleViews(Lcom/android/camera/ui/BeautyTitleView;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBeauty$4;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/BeautyTitleView;->setAdapter(Lcom/android/camera/ui/BeautyTitleView$Adapter;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/BeautyTitleView;->setTitleClickListener(Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautySwitch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->hideAdvance()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    goto :goto_0
.end method

.method private initTabs()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    :goto_0
    sget-object v2, Lcom/android/camera/fragment/FragmentBeauty;->TAB_INFOS:[Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    invoke-static {v2}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$5;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/fragment/FragmentBeauty$5;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/FragmentBeauty$6;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$6;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->onlyShowMainTab()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    :cond_0
    new-instance v2, Lcom/android/camera/fragment/FragmentBeauty$7;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/FragmentBeauty$7;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupport3DFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    goto :goto_0
.end method

.method private onlyShowMainTab()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->supportAdvanceBeautyFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeFragmentBeauty()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_0

    return v3

    :cond_0
    const v1, 0x90a00f4

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xfb

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    iput-boolean v4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mPendingShowTipsView:Z

    return v4
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xfb

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x9040009

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initTabs()V

    const v0, 0x90a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    sget v0, Lcom/android/camera/Util;->sNavigationBarHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x90a0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/NoScrollViewPager;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$2;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/NoScrollViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$3;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/NoScrollViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x90a002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BeautyTitleView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->initBeautyTitleViews(Lcom/android/camera/ui/BeautyTitleView;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x90f0146

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$1;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onBackEvent(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->removeFragmentBeauty()Z

    move-result v0

    return v0
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDetach()V

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mPendingShowTipsView:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mPendingShowTipsView:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onPause()V

    return-void
.end method

.method public onTitleClick(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget-boolean v1, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->isNew:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->titleId:I

    const v2, 0x90f02b5

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeauty3DMakeUpClicked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "counter"

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget-object v1, v1, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->statisticKey:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->setBeauty3DMakeupClicked()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v1}, Lcom/android/camera/ui/BeautyTitleView;->notifyDataChange()V

    goto :goto_0
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 4

    const/16 v1, 0xa7

    const/16 v2, 0xa1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 4

    const/16 v1, 0xa8

    const/16 v2, 0xa2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public refreshBottomBeauty(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBeauty$8;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBeauty;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc1

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBeauty;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc1

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
