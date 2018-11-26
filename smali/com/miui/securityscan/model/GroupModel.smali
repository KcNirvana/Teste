.class public Lcom/miui/securityscan/model/GroupModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Bk:Ljava/util/List;

.field private curModel:Lcom/miui/securityscan/model/AbsModel;

.field private dangerModelList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addModel(Lcom/miui/securityscan/model/AbsModel;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurModel()Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    return-object v0
.end method

.method public isGroupEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/app/Activity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/model/AbsModel;->setFixed(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    :goto_1
    iput-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->Bk:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
