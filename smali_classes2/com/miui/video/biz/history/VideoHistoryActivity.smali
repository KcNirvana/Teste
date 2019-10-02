.class public Lcom/miui/video/biz/history/VideoHistoryActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "VideoHistoryActivity.java"

# interfaces
.implements Lcom/miui/video/biz/history/view/HistoryView;
.implements Lcom/miui/video/framework/impl/IActionListener;
.implements Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;


# static fields
.field private static final PAGE_LOCAL:I = 0x1

.field private static final PAGE_ONLINE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoHistoryActivity"


# instance fields
.field private eventOnPageChange:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

.field private mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

.field private mIsTabClicked:Z

.field private mLastPage:I

.field private mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

.field private mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

.field private mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

.field private mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

.field private mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/common/library/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private vContainer:Landroid/widget/RelativeLayout;

.field private vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

.field private vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

.field private vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mIsTabClicked:Z

    new-instance v0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/history/VideoHistoryActivity$3;-><init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V

    iput-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->eventOnPageChange:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/history/VideoHistoryActivity;Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/history/VideoHistoryActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mIsTabClicked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/history/VideoHistoryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mIsTabClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/common/library/widget/viewpager/UIViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/history/VideoHistoryActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLastPage:I

    return p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/history/VideoHistoryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLastPage:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    return-object p0
.end method

.method private refreshUIFragment(Z)V
    .locals 4

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v0, "com.miui.video.KEY_SET_DATA"

    invoke-virtual {p1, v0, v3, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    new-instance v2, Lcom/miui/video/biz/history/VideoHistoryActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/history/VideoHistoryActivity$4;-><init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v0, "com.miui.video.KEY_SET_DATA"

    invoke-virtual {p1, v0, v3, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    new-instance v2, Lcom/miui/video/biz/history/VideoHistoryActivity$5;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/history/VideoHistoryActivity$5;-><init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    return-object v0
.end method

.method public getAllHistoryFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAllHistorySuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getLocalHistoryFail(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->refreshUIFragment(Z)V

    :cond_0
    return-void
.end method

.method public getLocalHistorySuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/LocalVideoHistoryData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/service/common/data/VideoListEntity;->setList(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->refreshUIFragment(Z)V

    :cond_1
    return-void
.end method

.method public getOnlineHistoryFail(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->refreshUIFragment(Z)V

    :cond_0
    return-void
.end method

.method public getOnlineHistorySuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/OVHistoryEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    invoke-virtual {p1}, Lcom/miui/video/service/common/data/OnlineVideoHistoryData;->getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/service/common/data/VideoListEntity;->setList(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->refreshUIFragment(Z)V

    :cond_2
    return-void
.end method

.method public initFindViews()V
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/miui/video/biz/history/R$id;->ui_title_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/widget/ui/UITitleBar;

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    iget-object v2, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v3, Lcom/miui/video/biz/history/R$drawable;->ic_action_bar_back_black:I

    sget v4, Lcom/miui/video/biz/history/R$string;->lv_history:I

    new-instance v9, Lcom/miui/video/biz/history/VideoHistoryActivity$2;

    invoke-direct {v9, v0}, Lcom/miui/video/biz/history/VideoHistoryActivity$2;-><init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/miui/video/service/widget/ui/UITitleBar;->setLeftView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object v10

    sget v11, Lcom/miui/video/service/R$drawable;->edit_video_list:I

    new-instance v1, Lcom/miui/video/biz/history/VideoHistoryActivity$1;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/history/VideoHistoryActivity$1;-><init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Lcom/miui/video/service/widget/ui/UITitleBar;->setRightView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v1, Lcom/miui/video/biz/history/R$id;->v_indicator:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    sget v1, Lcom/miui/video/biz/history/R$id;->ui_viewpager:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    new-instance v1, Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    invoke-direct {v1}, Lcom/miui/video/service/common/data/LocalVideoHistoryData;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    new-instance v1, Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {v1}, Lcom/miui/video/service/fragment/VideoListFragment;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v2, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v3, Lcom/miui/video/biz/history/R$string;->lv_history:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitleBar(Lcom/miui/video/service/widget/ui/UITitleBar;I)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/history/R$string;->history_local_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v2, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    const-string v1, "IN"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "ID"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setVisibility(I)V

    sget v1, Lcom/miui/video/biz/history/R$id;->v_container:I

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    sget-object v4, Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/miui/video/biz/history/VideoHistoryActivity;->runFragment(ILandroid/support/v4/app/Fragment;Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;Z)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    :cond_2
    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    new-instance v1, Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    invoke-direct {v1}, Lcom/miui/video/service/common/data/OnlineVideoHistoryData;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    new-instance v1, Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {v1}, Lcom/miui/video/service/fragment/VideoListFragment;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vUITitleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v4, Lcom/miui/video/biz/history/R$string;->lv_history:I

    invoke-virtual {v1, v3, v4}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitleBar(Lcom/miui/video/service/widget/ui/UITitleBar;I)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/history/R$string;->history_online_video:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/service/fragment/VideoListFragment;->setTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    invoke-virtual {v1, v3, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mViews:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mViews:Landroid/util/SparseArray;

    :cond_3
    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mViews:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mViews:Landroid/util/SparseArray;

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->eventOnPageChange:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setOnTabChangeClickListener(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mPagerAdapter:Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;

    iget-object v3, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/widget/viewpager/adapter/FragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    iget-object v1, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->vIndicator:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    iput v2, v0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLastPage:I

    :goto_1
    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getHistory(Z)V

    const-string v0, "IN"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ID"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getHistory(Z)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mCurrentFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->cannotBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->getVideoListData()Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    invoke-direct {v0}, Lcom/miui/video/service/common/data/LocalVideoHistoryData;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mLocalVideoHistoryData:Lcom/miui/video/service/common/data/LocalVideoHistoryData;

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->getVideoListData()Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    invoke-direct {v0}, Lcom/miui/video/service/common/data/OnlineVideoHistoryData;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnLineHistoryFragment:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mOnlineVideoHistoryData:Lcom/miui/video/service/common/data/OnlineVideoHistoryData;

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/service/fragment/VideoListFragment;->setData(Lcom/miui/video/service/common/data/IVideoListData;Lcom/miui/video/framework/impl/IActionListener;)V

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "play_history"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "play_history_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method

.method public onTabChangeClick(I)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mIsTabClicked:Z

    const-string p1, "VideoHistoryActivity"

    const-string v0, "onTabChangeClick"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p3, "com.miui.video.KEY_INIT_DATA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getHistory(Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/history/VideoHistoryActivity;->mHistoryPresenter:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getHistory(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/history/R$layout;->activity_video_history:I

    return v0
.end method
