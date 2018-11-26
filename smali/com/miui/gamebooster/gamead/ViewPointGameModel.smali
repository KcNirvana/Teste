.class public Lcom/miui/gamebooster/gamead/ViewPointGameModel;
.super Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.source ""


# instance fields
.field private mActivityAction:Ljava/lang/String;

.field private mActivityName:Ljava/lang/String;

.field private mCornerIcon:Ljava/lang/String;

.field private mGameName:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mRelObjId:J

.field private mRelObjType:I

.field private mTopicId:I

.field private mTopicName:Ljava/lang/String;

.field private mTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/gamead/ViewPointViewType;->je:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mk(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    return-void
.end method

.method private mk(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mCommentId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mTrace:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kX()Lcom/miui/gamebooster/gamead/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ActivityInfo;->kC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mActivityName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lb()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mTopicName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;->kD()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mTopicId:I

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lj()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mRelObjType:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kW()Lcom/miui/gamebooster/gamead/GameInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/GameInfo;->lT()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mRelObjId:J

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/GameInfo;->lP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mGameName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/GameInfo;->lR()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mIcon:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/gamead/GameInfo;->lS(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mCornerIcon:Ljava/lang/String;

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mRelObjId:J

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->li()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mGameName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mIcon:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public mg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mGameName:Ljava/lang/String;

    return-object v0
.end method

.method public mh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mCornerIcon:Ljava/lang/String;

    return-object v0
.end method

.method public mi()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mRelObjType:I

    return v0
.end method

.method public mj()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mRelObjId:J

    return-wide v0
.end method
