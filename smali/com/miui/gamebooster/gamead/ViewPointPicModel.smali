.class public Lcom/miui/gamebooster/gamead/ViewPointPicModel;
.super Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.source ""


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mDataType:I

.field private mGameId:J

.field private mPicCount:I

.field private mTraceId:Ljava/lang/String;

.field private mViewPointId:Ljava/lang/String;

.field private mViewPointPicUrl:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iT:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kB(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    return-void
.end method

.method private kB(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 5

    const/4 v4, 0x2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kT()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mDataType:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kQ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mGameId:J

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mTraceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointPicUrl:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Horizontal;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Horizontal;->mu()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->ml()I

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointPicUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->mm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointPicUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mPicCount:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lc()I

    move-result v0

    if-le v0, v4, :cond_7

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lc()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mPicCount:I

    :cond_7
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kX()Lcom/miui/gamebooster/gamead/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kX()Lcom/miui/gamebooster/gamead/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mActivityName:Ljava/lang/String;

    :cond_8
    return-void
.end method


# virtual methods
.method public kA()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointPicUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/e;

    iget-object v0, v0, Lcom/miui/gamebooster/gamead/e;->ky:Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;

    invoke-virtual {v0, p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iT(Lcom/miui/gamebooster/gamead/ViewPointPicModel;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mTraceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gD(Ljava/lang/String;)V

    return-void
.end method

.method public kv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public kw()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mDataType:I

    return v0
.end method

.method public kx()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mPicCount:I

    return v0
.end method

.method public ky()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public kz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->mViewPointId:Ljava/lang/String;

    return-object v0
.end method
