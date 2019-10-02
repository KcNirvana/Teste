.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;
.super Ljava/lang/Object;
.source "InlineManager.java"


# static fields
.field public static final VIDEO_VIEW_ID:I = 0x6f


# instance fields
.field private defalutVolumn:Z

.field private isInlineplayStart:Z

.field private mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

.field private mAnim:Landroid/view/ViewPropertyAnimator;

.field private mCoverLayout:Landroid/widget/RelativeLayout;

.field private mCurrPlayPos:I

.field private mDuration:J

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

.field private mVideoViewLayout:Landroid/widget/RelativeLayout;

.field private mVolumnButton:Landroid/widget/ImageView;

.field private final miAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCurrPlayPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->defalutVolumn:Z

    new-instance v1, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v1}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mDuration:J

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->isInlineplayStart:Z

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->miAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->calculatePosForVideoStart()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCurrPlayPos:I

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAnim:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAnim:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCurrPlayPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCoverLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->startInternal(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->defalutVolumn:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->miAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->hideCover()V

    return-void
.end method

.method static synthetic access$902(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->isInlineplayStart:Z

    return p1
.end method

.method private calculatePosForVideoStart()I
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    if-eq v0, v1, :cond_a

    if-ne v2, v1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x1

    if-gt v0, v3, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_5

    move v4, v2

    :goto_0
    if-lt v4, v0, :cond_5

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    sget v6, Lcom/miui/video/biz/videoplus/R$id;->video_view_layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    return v4

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v5, v2, 0x1

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    sget v6, Lcom/miui/video/biz/videoplus/R$id;->video_view_layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int v5, v5, v6

    if-gt v5, v4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v0

    move v4, v5

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v1

    :cond_a
    :goto_4
    return v1
.end method

.method private hideCover()V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "volumn_switch"

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->defalutVolumn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->miAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setVolume(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_inline_volumn_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setVolume(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->miAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_inline_volumn_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCoverLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCoverLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startInternal(I)V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/miui/video/biz/videoplus/R$id;->volumn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->cover_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCoverLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v1, Lcom/miui/video/biz/videoplus/R$id;->video_view_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoViewLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    if-nez v1, :cond_3

    new-instance v1, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setId(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setInline()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->requestFocus()Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$4;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoViewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAdapter:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$5;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$5;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setInlineDuration(J)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mDuration:J

    return-void

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->isInPipMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCurrPlayPos:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->start(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->start(I)V

    return-void
.end method

.method public start(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->startInternal(I)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->miAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCoverLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCoverLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVolumnButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->isInlineplayStart:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mDuration:J

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setMediaDuration(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setEndTime(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "play_end_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "video_play_duration"

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->getPlayDurationTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "video_duration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "error"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->close()V

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->isInlineplayStart:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->mCurrPlayPos:I

    :cond_3
    return-void
.end method
