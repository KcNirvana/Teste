.class public Lcom/miui/gamebooster/gamead/ViewPointVideoModel;
.super Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.source ""


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDataType:I

.field private mGameId:J

.field private mIsEssence:Z

.field private mTitle:Ljava/lang/String;

.field private mTotalCount:I

.field private mTraceId:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;

.field private mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

.field private mViewVideoItem:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iV:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->lz(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    return-void
.end method

.method private lz(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 5

    const/4 v4, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mCommentId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kQ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mGameId:J

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kT()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mDataType:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mIsEssence:Z

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTraceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kT()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ll()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->la()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTotalCount:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mContent:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Horizontal;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Horizontal;->mu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->ml()I

    move-result v3

    if-ne v3, v4, :cond_6

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->mn()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    goto :goto_0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/f;

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/f;->kz:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    check-cast p3, Landroid/app/Activity;

    iget-object v2, p4, Lcom/miui/gamebooster/gamead/a;->km:Lcom/miui/common/d/f;

    invoke-virtual {v1, p3, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iV(Landroid/app/Activity;Lcom/miui/common/d/f;)V

    iget-object v0, v0, Lcom/miui/gamebooster/gamead/f;->kz:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iW(Lcom/miui/gamebooster/gamead/ViewPointVideoModel;IZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gH(Ljava/lang/String;)V

    return-void
.end method

.method public lA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mIsEssence:Z

    return v0
.end method

.method public lt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public lu()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mDataType:I

    return v0
.end method

.method public lv()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTotalCount:I

    return v0
.end method

.method public lw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public lx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public ly()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;->mVideoInfo:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    return-object v0
.end method
