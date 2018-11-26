.class public Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.super Lcom/miui/gamebooster/gamead/BaseModel;
.source ""


# instance fields
.field protected mCommentId:Ljava/lang/String;

.field protected mOwner:I

.field protected mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    sget-object v1, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iS:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f030199

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    sget-object v1, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iT:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    if-ne v0, v1, :cond_1

    const v0, 0x7f03019c

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    sget-object v1, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iV:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    if-ne v0, v1, :cond_2

    const v0, 0x7f03019a

    return v0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    sget-object v1, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iW:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    if-ne v0, v1, :cond_3

    const v0, 0x7f03019b

    return v0

    :cond_3
    const v0, 0x7f030182

    return v0
.end method

.method public lY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public mf()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->mOwner:I

    return v0
.end method
