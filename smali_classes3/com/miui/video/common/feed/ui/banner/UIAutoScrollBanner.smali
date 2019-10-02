.class public Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIAutoScrollBanner.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x1388L

.field private static final FEEDROW_EXTRA_KEY_VIDEO:Ljava/lang/String; = "FEEDROW_EXTRA_KEY_VIDEO"

.field private static final TAG:Ljava/lang/String; = "com.miui.video.common.feed.ui.banner.UIAutoScrollBanner"

.field private static final VIEW_PAGE_LIMIT:I = 0x2


# instance fields
.field private mBannerAdapter:Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;

.field private mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private mOnAutoScroll:Z

.field private mScrollPageRunnable:Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;

.field private mTinyCardEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCount:I

.field private vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_autoscroll_banner:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mOnAutoScroll:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    new-instance p1, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;-><init>(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mScrollPageRunnable:Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mOnAutoScroll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Lcom/miui/video/common/feed/ui/UIBannerViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    return-object p0
.end method

.method private logItem(ILcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;)V
    .locals 3

    iget v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mTinyCardEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setShowPercent(I)V

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private notifyCarouselStartScroll()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mIsShowing:Z

    iget v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    rem-int/2addr v0, v1

    sget-object v1, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_SHOW:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->logItem(ILcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->startAutoScroll()V

    return-void
.end method

.method private setCarouselData(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mTinyCardEntityList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mTinyCardEntityList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mTinyCardEntityList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mTinyCardEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    new-instance p1, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mBannerAdapter:Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mBannerAdapter:Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mTinyCardEntityList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mBannerAdapter:Lcom/miui/video/common/feed/ui/banner/UIBannerAdapter;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    invoke-virtual {p1, p0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    const p1, 0x3fffffff    # 1.9999999f

    iget v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    rem-int v1, p1, v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    invoke-virtual {v1, p1, v0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    invoke-virtual {p1, v0, v0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->setCurrentItem(IZ)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public initFindViews()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vView:Landroid/view/View;

    sget v1, Lcom/miui/video/common/feed/R$id;->v_viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->vViewPager:Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->stopAutoScroll()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mIsShowing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->startAutoScroll()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UIBannerAdapter"

    const-string v1, "onPageSelected"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    rem-int/2addr p1, v0

    sget-object v0, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_SHOW:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->logItem(ILcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->startAutoScroll()V

    return-void
.end method

.method public onUIAttached()V
    .locals 0

    return-void
.end method

.method public onUIDetached()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->stopAutoScroll()V

    return-void
.end method

.method public onUIHide()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->stopAutoScroll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mIsShowing:Z

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p3, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->setCarouselData(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    :cond_0
    return-void
.end method

.method public onUIShow()V
    .locals 2

    sget-object v0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->TAG:Ljava/lang/String;

    const-string v1, "onUIShow"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->notifyCarouselStartScroll()V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mFeedRowEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->setCarouselData(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    :cond_0
    return-void
.end method

.method public startAutoScroll()V
    .locals 4

    iget v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mViewCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->stopAutoScroll()V

    iget-boolean v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mOnAutoScroll:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mOnAutoScroll:Z

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mScrollPageRunnable:Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mOnAutoScroll:Z

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->mScrollPageRunnable:Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
