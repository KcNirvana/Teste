.class public Lcom/miui/powercenter/quickoptimize/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDw:Z

.field private aDx:I

.field private mItems:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/i;->aDw:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/i;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public aOE(Lcom/miui/powercenter/quickoptimize/v;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/i;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aOF()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/quickoptimize/i;->aDx:I

    return v0
.end method

.method public aOG(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/quickoptimize/i;->aDx:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/i;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/powercenter/quickoptimize/v;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/i;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    return-object v0
.end method

.method public isFixed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/i;->aDw:Z

    return v0
.end method

.method public setFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/quickoptimize/i;->aDw:Z

    return-void
.end method
