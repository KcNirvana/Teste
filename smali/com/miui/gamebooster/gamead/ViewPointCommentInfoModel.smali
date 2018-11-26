.class public Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;
.super Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.source ""


# instance fields
.field private mComment:Ljava/lang/String;

.field public mDataType:I

.field private mGameId:Ljava/lang/String;

.field private mGameName:Ljava/lang/String;

.field private mHasPic:Z

.field private mIsEssence:Z

.field private mIsTopViewPoint:Z

.field private mShortComment:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;

.field private mTopicId:I

.field private mTrace:Ljava/lang/String;

.field private mWordCount:I


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iS:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->ks(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;-><init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    iput-boolean p2, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mIsTopViewPoint:Z

    return-void
.end method

.method private ks(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mShortComment:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kQ()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mGameId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mTrace:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mCommentId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kT()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mDataType:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mIsEssence:Z

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mHasPic:Z

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mDataType:I

    if-ne v0, v8, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kW()Lcom/miui/gamebooster/gamead/GameInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/GameInfo;->lP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mGameName:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kY()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mOwner:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Horizontal;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Horizontal;->mu()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kX()Lcom/miui/gamebooster/gamead/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mGameName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->ml()I

    move-result v0

    if-ne v0, v8, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->mm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    :cond_8
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->la()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mWordCount:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lb()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mTopic:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;->kD()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mTopicId:I

    :cond_9
    return-void
.end method


# virtual methods
.method public kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/c;

    iget-object v0, v0, Lcom/miui/gamebooster/gamead/c;->kw:Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->iG(Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;IZ)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mHasPic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mTrace:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gB(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public km()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public kn()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mDataType:I

    return v0
.end method

.method public ko()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mGameName:Ljava/lang/String;

    return-object v0
.end method

.method public kp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mShortComment:Ljava/lang/String;

    return-object v0
.end method

.method public kq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mTrace:Ljava/lang/String;

    return-object v0
.end method

.method public kr()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mWordCount:I

    return v0
.end method

.method public kt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mIsEssence:Z

    return v0
.end method

.method public ku()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mIsTopViewPoint:Z

    return v0
.end method
