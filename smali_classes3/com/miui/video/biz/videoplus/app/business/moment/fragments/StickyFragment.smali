.class public Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "StickyFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;
    }
.end annotation


# static fields
.field public static final ACTION_CHECK_ALL:Ljava/lang/String; = "action_check_all"

.field public static final ACTION_DETAIL_PAGE:Ljava/lang/String; = "action_detail_page"

.field public static final ACTION_IF_NEED_LONG_CLICK:Ljava/lang/String; = "action_if _need_long_click"

.field public static final ACTION_SHOW_GUIDE_VIEW:Ljava/lang/String; = "action_show_guide_view"

.field public static final ACTION_UNCHECK_ALL:Ljava/lang/String; = "action_uncheck_all"

.field public static final ACTION_ZOOM_IN:Ljava/lang/String; = "action_zoom_in"

.field public static final ACTION_ZOOM_OUT:Ljava/lang/String; = "action_zoom_out"

.field public static final REQUEST_CODE:I = 0x3ed

.field private static final TAG:Ljava/lang/String; = "StickyFragment"


# instance fields
.field private mBackPositionIfVideoTab:I

.field private mDataHasChange:Z

.field private mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

.field private mEmptyView:Landroid/view/View;

.field private mGuideConditionReferee:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;

.field private mHasRegisterBroadcast:Z

.field private mHidden:Z

.field private mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

.field private mLayoutType:I

.field private mLoadingView:Landroid/view/View;

.field private mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

.field private mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

.field private mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

.field private mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

.field private mReportVVStart:Z

.field private mRootView:Landroid/view/View;

.field private mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

.field private mShadowView:Landroid/view/View;

.field private mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

.field private mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

.field private mZoomTime:J

.field private onRefreshClickListener:Landroid/view/View$OnClickListener;

.field private pageName:Ljava/lang/String;

.field private pageNameFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mReportVVStart:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLayoutType:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mBackPositionIfVideoTab:I

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$4;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$6;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->onRefreshClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;)[I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->findPositionInner(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mBackPositionIfVideoTab:I

    return p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mBackPositionIfVideoTab:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reload()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataHasChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    return-object p0
.end method

.method private enterEditMode()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getPageName()Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getChannelTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordTimeLineEnterEditMode(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->enableEditMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    const-string v3, "KEY_EDIT_MODE_OPEN"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;->uiRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setEditMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->enableGesture(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->updateEditMode()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private existEditMode()V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->enableEditMode(Z)V

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setEditMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->enableGesture(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->cancel()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getDecoration()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;->updateEditMode()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    const-string v2, "KEY_EDIT_MODE_EXIT"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;->uiRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->reset()V

    return-void
.end method

.method private findPositionInner(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;)[I
    .locals 7

    const/4 v0, 0x2

    if-nez p2, :cond_0

    new-array p1, v0, [I

    fill-array-data p1, :array_0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array p1, v0, [I

    fill-array-data p1, :array_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array p1, v0, [I

    aput v2, p1, v1

    const/4 p2, 0x1

    aput v4, p1, p2

    return-object p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-array p1, v0, [I

    fill-array-data p1, :array_2

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getChannelTab(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v1, "recorded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v1, "whatsapp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "2"

    goto :goto_0

    :cond_2
    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "3"

    goto :goto_0

    :cond_3
    const-string v1, "instagram"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "4"

    :cond_4
    :goto_0
    return-object v0
.end method

.method private isFromVideoDetailBack()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mBackPositionIfVideoTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onUIRefresh$61(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->start()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$runAction$57(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->zoomIn()Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;->loadData()V

    return-void
.end method

.method public static synthetic lambda$runAction$58(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->zoomOut()Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ILocalDataProvider;->loadData()V

    return-void
.end method

.method public static synthetic lambda$runAction$59(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->clear()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->existEditMode()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reload()V

    return-void
.end method

.method public static synthetic lambda$runAnim$60(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mShadowView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mShadowView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private loadData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->setListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->loadData()V

    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHasRegisterBroadcast:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->registerObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    return-void
.end method

.method private reload()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->setPosition(II)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->loadData()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataHasChange:Z

    return-void
.end method

.method private reportVV(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mReportVVStart:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mReportVVStart:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mReportVVStart:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mReportVVStart:Z

    :goto_0
    return-void
.end method

.method private runAnim(Ljava/lang/Runnable;Z)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private unregisterObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHasRegisterBroadcast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLocalMediaObserver:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHasRegisterBroadcast:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-nez v0, :cond_0

    const-string v0, "StickyFragment"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;

    if-eqz v0, :cond_1

    const-string v0, "all"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;

    if-eqz v0, :cond_2

    const-string v0, "_image"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getTypeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->CAMERA:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "recorded"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getTypeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WECHAT:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_wechat"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getTypeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WHATSAPP:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "whatsapp"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getTypeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->FACEBOOK:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "facebook"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "4"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;->getTypeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->INSTAGRAM:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "instagram"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/WeChatDataLoader;

    if-eqz v0, :cond_8

    const-string v0, "_wechat"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageNameFrom:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/SinaDataLoader;

    if-eqz v0, :cond_9

    const-string v0, "_sina"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/QQDataLoader;

    if-eqz v0, :cond_a

    const-string v0, "_qq"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    :cond_b
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StickyFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasScrollToTop()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->hasScrollToTop()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_recyclerView:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->setActionListener(Lcom/miui/video/framework/impl/IActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mGuideConditionReferee:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/miui/video/framework/impl/IActionListener;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mGuideConditionReferee:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;

    :cond_1
    :goto_0
    new-instance v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_loading:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLoadingView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->shadow:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mShadowView:Landroid/view/View;

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v1, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v1, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->onRefreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->setOnClickListener(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataHasChange:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reload()V

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_SET_VALUE"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->loadData()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3ed

    if-ne p1, p2, :cond_0

    const-string p1, "KEY_EDIT_MODE_EXIT"

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->enableStatistics(Z)V

    new-instance v0, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRootView:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->existEditMode()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reportVV(Z)V

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->stop()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$5;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataHasChange:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reload()V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->pause()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reportVV(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->registerObserver()V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataHasChange:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->existEditMode()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reload()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->isFromVideoDetailBack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->resume()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->reportVV(Z)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string v0, "ACTION_SET_VALUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p3, :cond_a

    instance-of v0, p3, Lcom/miui/video/framework/base/entity/PageEntity;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v0, p3

    check-cast v0, Lcom/miui/video/framework/base/entity/PageEntity;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->isLoadCompleted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->EMPTY_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object p2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->stop()V

    :cond_4
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mViewSwitcher:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    sget-object v2, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->MAIN_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLayoutType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    iget v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLayoutType:I

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->setTitleLayoutType(I)V

    :cond_5
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    const-string v3, "ACTION_SET_VALUE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;->uiRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->needCalculatePosition()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/entity/PageEntity;->getList()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getTimeDimension()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->calculatePosition(Ljava/util/List;I)V

    :cond_7
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->getPosition()I

    move-result p1

    const/4 p2, 0x0

    if-eq p1, v2, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->getOffset()I

    move-result p1

    if-eq p1, v2, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    const-string p3, "action_scroll_to_position"

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->getPosition()I

    move-result v0

    invoke-virtual {p1, p3, v0, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->clear()V

    :cond_8
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mShadowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0, p2, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->runAnim(Ljava/lang/Runnable;Z)V

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$X3VC03bOlgQFb-9LOEmUdfd_TRA;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$X3VC03bOlgQFb-9LOEmUdfd_TRA;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_a
    :goto_1
    return-void

    :cond_b
    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->scrollToTop()V

    :cond_c
    :goto_2
    return-void

    :cond_d
    :goto_3
    return-void
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->unregisterObserver()V

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    const-string p2, "action_zoom_in"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mZoomTime:J

    sub-long/2addr p1, v4

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mZoomTime:J

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->isTopLevel()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_START_ACTIVITY:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p3, p1, v3, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->canZoomIn()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;

    move-result-object p1

    const-string p2, "show_guide_view"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->getMomentItemEntity()Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->setLocationEntity(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    goto :goto_0

    :cond_3
    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->setLocationEntity(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    :cond_4
    :goto_0
    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$pJ_l7KD34SG1FyrSRD7oHtpUlRE;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$pJ_l7KD34SG1FyrSRD7oHtpUlRE;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    invoke-direct {p0, p1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->runAnim(Ljava/lang/Runnable;Z)V

    goto/16 :goto_4

    :cond_5
    const-string p2, "action_zoom_out"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mZoomTime:J

    sub-long/2addr p1, v3

    cmp-long p1, p1, v0

    if-gez p1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mZoomTime:J

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->isBottomLevel()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->canZoomOut()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;

    move-result-object p1

    const-string p2, "show_guide_view"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_9

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    if-eqz p1, :cond_8

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->getMomentItemEntity()Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->setLocationEntity(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    goto :goto_1

    :cond_8
    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mScrollPositionRecorder:Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/ScrollPositionRecorder;->setLocationEntity(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    :cond_9
    :goto_1
    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$ciyed39AkRmFG-LSAhenYKiF4lo;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$ciyed39AkRmFG-LSAhenYKiF4lo;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    invoke-direct {p0, p1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->runAnim(Ljava/lang/Runnable;Z)V

    goto/16 :goto_4

    :cond_a
    :goto_2
    return-void

    :cond_b
    const-string p2, "action_detail_page"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setPositionProvider(Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;)V

    goto/16 :goto_4

    :cond_c
    const-string p2, "action_setting_padding"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-eqz p3, :cond_f

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-eqz p1, :cond_1d

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->isBottomLevel()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "action_setting_padding"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, v3, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    const-string p1, "action_setting_padding"

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, v3, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_f
    :goto_3
    return-void

    :cond_10
    const-string p2, "action_check_all"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getAdapter()Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->checkInTx(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getAdapter()Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_11
    const-string p2, "action_uncheck_all"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->uncheckInTx(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getAdapter()Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_12
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->stop()V

    :cond_14
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->isTopLevel()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->enterEditMode()V

    goto/16 :goto_4

    :cond_15
    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->existEditMode()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mInlineManager:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    if-eqz p1, :cond_1d

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    const-wide/16 p2, 0xc8

    invoke-static {p1, p2, p3}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    :cond_16
    const-string p2, "KEY_EDIT_EVENT_DELETE"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_19

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mHidden:Z

    if-eqz p1, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    sget-object p1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->sCurrentTab:Ljava/lang/String;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordTimeLineEnterDelete(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->plus_deleting_wait:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$zTNwQJ0zulE-t4RxPD5vzI59mxY;

    invoke-direct {p3, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$zTNwQJ0zulE-t4RxPD5vzI59mxY;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->delete(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;)V

    goto/16 :goto_4

    :cond_19
    const-string p2, "action_if _need_long_click"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1b

    check-cast p3, Lcom/miui/video/framework/impl/IUIListener;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->isTopLevel()Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_SET_CLICK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p3, p1, v3, p2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_1a
    sget-object p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_SET_CLICK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p3, p1, v3, p2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_1b
    const-string p2, "action_show_guide_view"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_1c
    const-string p2, "KEY_EDIT_EVENT_SHARE"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->pageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->getChannelTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordTimeLineEnterShare(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mPositionProvider:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setPositionProvider(Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->share(Landroid/support/v4/app/Fragment;)V

    :cond_1d
    :goto_4
    return-void
.end method

.method public scrollToTop()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mRecyclerView:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    const-string v1, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_content:I

    return v0
.end method

.method public setLoader(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mDataLoader:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    return-void
.end method

.method public setTitleLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mLayoutType:I

    return-void
.end method

.method public setUIRefreshListener(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->mUIRefreshListener:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    return-void
.end method
