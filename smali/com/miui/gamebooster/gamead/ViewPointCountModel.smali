.class public Lcom/miui/gamebooster/gamead/ViewPointCountModel;
.super Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.source ""


# instance fields
.field private isFirstComment:Z

.field private isLike:Z

.field private mCommentId:Ljava/lang/String;

.field private mDataType:I

.field private mGameId:J

.field private mHasPic:Z

.field private mId:Ljava/lang/String;

.field private mLikeCount:I

.field private mName:Ljava/lang/String;

.field private mReadCount:I

.field private mReplyCount:I

.field private mTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iX:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mb(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    return-void
.end method

.method private mb(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mCommentId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->le()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mLikeCount:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lk()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mReplyCount:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kT()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mDataType:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kQ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mGameId:J

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mTrace:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mHasPic:Z

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ll()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lm()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mReadCount:I

    :goto_0
    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mDataType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kW()Lcom/miui/gamebooster/gamead/GameInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/GameInfo;->lP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/GameInfo;->lT()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mId:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lq()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->isLike:Z

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->isFirstComment:Z

    return-void

    :cond_2
    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mDataType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ll()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->mr()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mReadCount:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lm()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kX()Lcom/miui/gamebooster/gamead/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public lV()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mReadCount:I

    return v0
.end method

.method public lW()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mReplyCount:I

    return v0
.end method

.method public lX()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mDataType:I

    return v0
.end method

.method public lY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public lZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mHasPic:Z

    return v0
.end method

.method public ma()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->mTrace:Ljava/lang/String;

    return-object v0
.end method
