.class public Lcom/miui/video/player/service/recommend/RecommendVideoContainer;
.super Landroid/widget/RelativeLayout;
.source "RecommendVideoContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;
    }
.end annotation


# static fields
.field public static final FROM_FILEMANAGER:Ljava/lang/String; = "filemanager"

.field public static final FROM_GALLERY:Ljava/lang/String; = "gallery"

.field public static final FROM_MIVIDEO:Ljava/lang/String; = "mivideo"

.field public static final TAG:Ljava/lang/String; = "RecommendVideoContainer"


# instance fields
.field private mAdapter:Lcom/miui/video/player/service/recommend/RecommendAdapter;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mImagePost:Landroid/widget/ImageView;

.field private mIsFromGallery:Z

.field private mIsRecommenedVideoClicked:Z

.field private mRecommendLayout:Landroid/widget/RelativeLayout;

.field private mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mStatusBarView:Landroid/view/View;

.field private vBackButton:Landroid/widget/ImageView;

.field private vCloseBtn:Landroid/widget/ImageView;

.field private vNOData:Landroid/widget/TextView;

.field private vReplayLayout:Landroid/widget/LinearLayout;

.field private vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

.field private vVideoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsFromGallery:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsRecommenedVideoClicked:Z

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsFromGallery:Z

    iput-boolean p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsRecommenedVideoClicked:Z

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsFromGallery:Z

    iput-boolean p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsRecommenedVideoClicked:Z

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsFromGallery:Z

    iput-boolean p2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsRecommenedVideoClicked:Z

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$layout;->fragment_recommend_video:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$id;->root_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRootView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->ui_recycler_listview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerView;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget v0, Lcom/miui/video/player/service/R$id;->title_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vBackButton:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/player/service/R$id;->title_top_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vVideoTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->status_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mStatusBarView:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->iv_post:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mImagePost:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/player/service/R$id;->recommend_container_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRecommendLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->no_recommend_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vNOData:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->replay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vReplayLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->close_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vCloseBtn:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vReplayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vBackButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vVideoTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance v1, Lcom/miui/video/player/service/recommend/RecommendAdapter;

    iget-object v2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/video/player/service/recommend/RecommendAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mAdapter:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mAdapter:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    new-instance v2, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$1;-><init>(Lcom/miui/video/player/service/recommend/RecommendVideoContainer;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/recommend/RecommendAdapter;->setOnItemClickListener(Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mAdapter:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;

    iget-object v2, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$dimen;->dp_13_3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;-><init>(IZ)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public static isOpenRecommendPage(Z)Z
    .locals 11

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v2, "recommend_online_switch_key"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "RecommendVideoContainer"

    const-string v0, "\u63a8\u8350\u89c6\u9891\u672c\u5730\u5f00\u5173\u5df2\u5173\u95ed "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v0, Lcom/miui/video/framework/utils/FormatUtils;->DATE_12:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recommend_page_daily_show_times_for_gallery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recommend_page_daily_show_times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    const/4 v4, 0x5

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v5

    const-string v6, "recommend_page_control_show_times_for_gallery"

    invoke-virtual {v5, v6, v4}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v5

    const-string v6, "recommend_page_control_show_times"

    invoke-virtual {v5, v6, v4}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v4

    :goto_1
    if-lt v2, v4, :cond_4

    const-string p0, "RecommendVideoContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u5929\u63a8\u8350\u9875\u9762\u5c55\u793a\u6b21\u6570\u8d85\u9650 dailyShowTimes == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  controlShowTimes ==  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    sget v2, Lcom/miui/video/base/common/data/SettingsSPConstans;->RECOMMEND_VIDEO_MAX_SHOW_TIMES_WITHOUT_CLICK:I

    if-nez v2, :cond_5

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v4, "recommend_page_max_show_times_without_click"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/video/base/common/data/SettingsSPConstans;->RECOMMEND_VIDEO_MAX_SHOW_TIMES_WITHOUT_CLICK:I

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v4, "recommend_page_max_show_times_without_click_for_gallery"

    invoke-virtual {v2, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/video/base/common/data/SettingsSPConstans;->RECOMMEND_VIDEO_MAX_SHOW_TIMES_WITHOUT_CLICK_FOR_GALLERY:I

    :cond_5
    const-wide/16 v4, 0x0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v6, "CLICK_RECOMMEND_VIDEO_TIME_for_gallery"

    invoke-virtual {v2, v6, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v6, "CLICK_RECOMMEND_VIDEO_TIME"

    invoke-virtual {v2, v6, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_2
    sget v2, Lcom/miui/video/base/common/data/SettingsSPConstans;->RECOMMEND_VIDEO_MAX_SHOW_TIMES_WITHOUT_CLICK:I

    if-eqz p0, :cond_7

    sget v2, Lcom/miui/video/base/common/data/SettingsSPConstans;->RECOMMEND_VIDEO_MAX_SHOW_TIMES_WITHOUT_CLICK_FOR_GALLERY:I

    :cond_7
    if-eqz p0, :cond_8

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recommend_page_daily_show_times_without_click_for_gallery"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recommend_page_daily_show_times_without_click"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    sget-object v8, Lcom/miui/video/framework/utils/FormatUtils;->DATE_12:Ljava/text/SimpleDateFormat;

    invoke-static {v8, v6, v7}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    if-lt v0, v2, :cond_9

    const-string v3, "RecommendVideoContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpenRecommendPage: isFromGallery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " dailyShowTimesWithoutClick = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " maxShowTimesWithoutClick = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "RecommendVideoContainer"

    const-string v0, "\u5f53\u5929\u63a8\u8350\u9875\u9762\u5c55\u793a\uff12\u6b21 \u4f46\u662f\u7528\u6237\u6ca1\u6709\u70b9\u51fb\u63a8\u8350\u7684\u89c6\u9891 "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    sget-wide v6, Lcom/miui/video/base/common/data/SettingsSPConstans;->VIDEO_SHOW_TIMES_INTERVAL:J

    cmp-long p0, v4, v6

    if-nez p0, :cond_a

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p0

    const-string v0, "recommend_show_times_interval"

    invoke-virtual {p0, v0, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/miui/video/base/common/data/SettingsSPConstans;->VIDEO_SHOW_TIMES_INTERVAL:J

    :cond_a
    sget-wide v6, Lcom/miui/video/base/common/data/SettingsSPConstans;->VIDEO_SHOW_TIMES_INTERVAL:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_b

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p0

    const-string v0, "LAST_RECOMMEND_VIDEO_SHOW_TIME"

    invoke-virtual {p0, v0, v4, v5}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-lez p0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/miui/video/base/common/data/SettingsSPConstans;->VIDEO_SHOW_TIMES_INTERVAL:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long p0, v4, v6

    if-gez p0, :cond_b

    return v1

    :cond_b
    return v3
.end method

.method private setImageBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mImagePost:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setImageBackground(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mImagePost:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRootView:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mImagePost:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setStatusBarHeight()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vBackButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_1

    const-string p1, "RecommendVideoContainer"

    const-string v0, "onClick  vBackButton2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->onBack()Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vReplayLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    const-string p1, "RecommendVideoContainer"

    const-string v0, "onClick  vReplayLayout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->onReplay()Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vCloseBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    const-string p1, "RecommendVideoContainer"

    const-string v0, "onClick  vCloseBtn"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/player/service/recommend/RecommendReport;->reportLocalDiversionCardClose()V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRecommendLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_show_recommend_close"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$string;->recommend_switch_alert:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(II)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_show_recommend_close"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public showRecommendView(Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    const-string p1, "gallery"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsFromGallery:Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setImageBackground(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mImagePost:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRootView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iput-object p4, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vVideoTitle:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {p4}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->getVideoTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mAdapter:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    iget-object p4, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    invoke-virtual {p1, p4}, Lcom/miui/video/player/service/recommend/RecommendAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vNOData:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRecommendLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/UIRecyclerView;->setVisibility(I)V

    invoke-static {p2}, Lcom/miui/video/player/service/recommend/RecommendReport;->reportLocalDiversionExpose(Ljava/lang/String;)V

    return-void
.end method

.method public showRecommendView(Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    const-string p1, "gallery"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mIsFromGallery:Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setImageBackground(Ljava/lang/String;)V

    :cond_1
    iput-object p4, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vVideoTitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mReplayCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {p3}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->getVideoTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mAdapter:Lcom/miui/video/player/service/recommend/RecommendAdapter;

    iget-object p3, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mDataList:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/miui/video/player/service/recommend/RecommendAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vNOData:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->mRecommendLayout:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->vUIRecyclerView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {p1, p3}, Lcom/miui/video/common/feed/UIRecyclerView;->setVisibility(I)V

    invoke-static {p2}, Lcom/miui/video/player/service/recommend/RecommendReport;->reportLocalDiversionExpose(Ljava/lang/String;)V

    return-void
.end method
