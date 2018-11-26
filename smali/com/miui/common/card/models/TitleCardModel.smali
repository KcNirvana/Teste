.class public Lcom/miui/common/card/models/TitleCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field public gridFunctionDataList:Ljava/util/List;

.field private id:J

.field private position:I

.field private subCardModelList:Ljava/util/List;

.field private subCardModelTemplate:I

.field private visible:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    iput v1, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelTemplate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/models/TitleCardModel;->visible:Z

    iput v1, p0, Lcom/miui/common/card/models/TitleCardModel;->position:I

    return-void
.end method


# virtual methods
.method public addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/TitleCardModel;->id:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/TitleCardModel;->position:I

    return v0
.end method

.method public getSubCardModelList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    return-object v0
.end method

.method public getSubCardModelTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelTemplate:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/TitleCardModel;->visible:Z

    return v0
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/common/card/models/TitleCardModel;->id:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/TitleCardModel;->position:I

    return-void
.end method

.method public setSubCardModelTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelTemplate:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/TitleCardModel;->visible:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
