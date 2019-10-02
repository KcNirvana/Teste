.class public Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "TimeFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IStatusBarChangeListener;


# static fields
.field private static final ACTION_SHOW_FRAGMENT:Ljava/lang/String; = "ACTION_SHOW_FRAGMENT"

.field private static final REQUEST_CODE_EDIT:I = 0xa

.field private static final REQUEST_CODE_OPEN_GALLERY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TimeFragment"


# instance fields
.field private defaultPosition:I

.field private isFirstInit:Z

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

.field private mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

.field private mHasRegisterBroadcast:Z

.field private mHideUIPageIndex:D

.field private mIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLastPageIndex:I

.field private mLayoutPoster:Landroid/view/View;

.field private mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

.field private mMomentUIListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

.field private mNewPosterFileName:Ljava/lang/String;

.field private mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

.field private mOnOffsetChangedListener:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageGeneratorCallback:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

.field private mRootView:Landroid/view/View;

.field private mToolBarWidth:I

.field private mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

.field private mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;",
            ">;"
        }
    .end annotation
.end field

.field private vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

.field private vCover:Landroid/view/View;

.field private vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

.field private vIndicatorContainer:Landroid/view/View;

.field private vPoster:Landroid/widget/ImageView;

.field private vPosterTitle:Landroid/widget/TextView;

.field private vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

.field private vToolbarContainer:Landroid/view/View;

.field private vTopLayoutEndColor:I

.field private vTopLayoutStartColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutStartColor:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutEndColor:I

    sget-object v0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isFirstInit:Z

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnOffsetChangedListener:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPageGeneratorCallback:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/support/design/widget/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->setViewsState(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutStartColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutEndColor:I

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCover:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mToolBarWidth:I

    return p0
.end method

.method static synthetic access$1900(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPageGeneratorCallback:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mMomentUIListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->editModeExit(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->openAlbum()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLastPageIndex:I

    return p0
.end method

.method static synthetic access$602(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLastPageIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPageList:Ljava/util/List;

    return-object p0
.end method

.method private createChildFragment()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mMomentUIListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;-><init>()V

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getTitleLayoutType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setTitleLayoutType(I)V

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getProvider()Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setLoader(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mMomentUIListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setUIRefreshListener(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private editModeExit(Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result p1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string v2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$9;

    invoke-direct {v8, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$9;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    invoke-static/range {v3 .. v8}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    invoke-virtual {p1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->unregisterCheckListener(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/video/framework/impl/IUIListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/impl/IUIListener;

    const-string v2, "KEY_EDIT_MODE_EXIT"

    invoke-interface {p1, v2, v1, v0}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private initCover()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "cover_path"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPoster:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onActivityResult$77(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.miui.localvideoplayer.shareprovider"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->startPhotoZoom(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$openAlbum$75(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordPosterSetting(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->startGalleryPick()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method public static synthetic lambda$openAlbum$76(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordPosterSetting(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    const-string v0, "cover_path"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPoster:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_default_poster:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordPosterSettingSucc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method private notifyMediaChange()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->DELETE:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method private openAlbum()V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordPosterClicked()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v1

    const-string v2, "cover_path"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$pxmVmsUznEr7APVhdJ7qUst_9kM;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$pxmVmsUznEr7APVhdJ7qUst_9kM;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    new-instance v3, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$hch3wIpnL6JP1LQPSJrYF_WiYZo;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$hch3wIpnL6JP1LQPSJrYF_WiYZo;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showPosterChooseDialog(Landroid/content/Context;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method private registerObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mHasRegisterBroadcast:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->registerObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    return-void
.end method

.method private releaseSubFragment()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setViewsState(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->setStateOfAppBar(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setAppBarLayoutState(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V

    sget-object v0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_more_white:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setMoreImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_search_white:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setSearchViewImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_history_white:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setHistoryViewImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_more_close_white:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setCloseImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$color;->c_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->setFixable(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCover:Landroid/view/View;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutEndColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolbarContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_titlebar_postertop_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicatorContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_titlebar_posterbottom_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_more_black:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setMoreImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_search_black:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setSearchViewImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_history_black:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setHistoryViewImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_more_close_black:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setCloseImageSrc(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->shape_plus_searchbar_bg_white:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->setFixable(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCover:Landroid/view/View;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutStartColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolbarContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$color;->c_transparent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicatorContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$color;->c_transparent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private startGalleryPick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.gallery"

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mHasRegisterBroadcast:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89c6\u9891+\u65f6\u523b"

    return-object v0
.end method

.method public initFindViews()V
    .locals 5

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_appbar_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_toolbar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolbarContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_coordinator_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->layout_poster:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLayoutPoster:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_tool_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setFrom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_cover:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCover:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_poster:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPoster:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_poster_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPosterTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPosterTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_indicator_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicatorContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicatorContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->setFixable(Z)V

    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-direct {v0, v1, v3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit_topbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public initViewsEvent()V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "tab_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "TimeFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v2, "channel_position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPoster:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$3;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnOffsetChangedListener:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setStatusBarChangeListener(Lcom/miui/video/biz/videoplus/app/interfaces/IStatusBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->notifyDataSetChanged()V

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isFirstInit:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordChannelTabClickLocal(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isFirstInit:Z

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->defaultPosition:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->setViewsState(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->initCover()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$4;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setCancelListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->registerObserver()V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->home_toolbar_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mToolBarWidth:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutStartColor:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->color_mainbar_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutStartColor:I

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutEndColor:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$color;->c_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vTopLayoutEndColor:I

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v1, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->generate(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mPageList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->createChildFragment()V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/app/utils/UriPathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/video/framework/FrameworkConfig;->getImagePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "plusposter_"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    new-instance p3, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$DdcUiltYHOAGOApAgSLyk2pBWx0;

    invoke-direct {p3, p0}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$DdcUiltYHOAGOApAgSLyk2pBWx0;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V

    invoke-static {p1, p2, p3}, Lcom/miui/video/framework/utils/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/framework/impl/IApkCopyListener;)V

    goto :goto_1

    :cond_1
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordPosterSettingSucc(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    const-string p2, "cover_path"

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vPoster:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mNewPosterFileName:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/video/framework/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->startGalleryPick()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mRootView:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isFirstInit:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->unregisterObserver()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->releaseSubFragment()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLastPageIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mLastPageIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onStart()V

    const-string v0, "ACTION_SHOW_FRAGMENT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onStop()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "channel_position"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->editModeExit(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mEditTopBar:Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    const-string p2, "KEY_EDIT_EVENT_DELETE"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->notifyMediaChange()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p2, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p2, "KEY_EDIT_EVENT_SHARE"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p2, "KEY_EDIT_EVENT_SHARE"

    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public resetStatusBarDarkMode()V
    .locals 3

    const-string v0, "ACTION_SHOW_FRAGMENT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "ACTION_SHOW_FRAGMENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnOffsetChangedListener:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnOffsetChangedListener:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->onExpand()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mOnOffsetChangedListener:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->onCollapsed()V

    goto :goto_0

    :cond_1
    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mUIViewPager:Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object p3, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;->hasScrollToTop()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_time:I

    return v0
.end method

.method public setStatusBarDarkMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->vCoordinatorLayout:Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->requestLayout()V

    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.gallery"

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "aspectX"

    const/16 v3, 0x438

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "outputFormat"

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "noFaceDetection"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "return-data"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
