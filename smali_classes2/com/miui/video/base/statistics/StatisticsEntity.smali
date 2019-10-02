.class public Lcom/miui/video/base/statistics/StatisticsEntity;
.super Ljava/lang/Object;
.source "StatisticsEntity.java"


# instance fields
.field private entity:Lcom/miui/video/base/common/entity/BaseEntity;

.field private eventKey:Ljava/lang/String;

.field private formPage:Ljava/lang/String;

.field private formRef:Ljava/lang/String;

.field private link:Lcom/miui/video/framework/uri/LinkEntity;

.field private linkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;"
        }
    .end annotation
.end field

.field private module:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private targetAddition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearParams()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getEntity()Lcom/miui/video/base/common/entity/BaseEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->entity:Lcom/miui/video/base/common/entity/BaseEntity;

    return-object v0
.end method

.method public getEventKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->eventKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFormPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->formPage:Ljava/lang/String;

    return-object v0
.end method

.method public getFormRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->formRef:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Lcom/miui/video/framework/uri/LinkEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->link:Lcom/miui/video/framework/uri/LinkEntity;

    return-object v0
.end method

.method public getLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->linkList:Ljava/util/List;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->type:I

    return v0
.end method

.method public setEntity(Lcom/miui/video/base/common/entity/BaseEntity;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->entity:Lcom/miui/video/base/common/entity/BaseEntity;

    return-object p0
.end method

.method public setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->eventKey:Ljava/lang/String;

    return-object p0
.end method

.method public setFormPage(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->formPage:Ljava/lang/String;

    return-object p0
.end method

.method public setFormRef(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->formRef:Ljava/lang/String;

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->module:Ljava/lang/String;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/video/base/statistics/StatisticsEntity;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->source:Ljava/lang/String;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 1

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->target:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-direct {v0, p1}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->link:Lcom/miui/video/framework/uri/LinkEntity;

    return-object p0
.end method

.method public setTargetAddition(Ljava/util/List;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/video/base/statistics/StatisticsEntity;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->targetAddition:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->linkList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->linkList:Ljava/util/List;

    new-instance v2, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-direct {v2, v0}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setType(I)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iput p1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->type:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "targetAddition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->targetAddition:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->link:Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "linkList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->linkList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "formPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->formPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "formRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->formRef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->entity:Lcom/miui/video/base/common/entity/BaseEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eventKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->eventKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/StatisticsEntity;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
