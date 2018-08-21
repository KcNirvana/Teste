.class public Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;
.super Ljava/lang/Object;
.source "QuerySingleResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/bean/QuerySingleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public companyCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "cpCode"
        }
    .end annotation
.end field

.field public companyName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "name"
        }
    .end annotation
.end field

.field public details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;"
        }
    .end annotation
.end field

.field public hasItem:Z

.field public openLocker:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "openGui"
        }
    .end annotation
.end field

.field public orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "mailNo"
        }
    .end annotation
.end field

.field public phone:Ljava/lang/String;

.field public pickupCode:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "boxCode"
        }
    .end annotation
.end field

.field public schedule:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "scheduleDelivery"
        }
    .end annotation
.end field

.field public stateFlag:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "stateNum"
        }
    .end annotation
.end field

.field public stateMessage:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "state"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateFlag:I

    return-void
.end method


# virtual methods
.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->companyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    return-object v0
.end method

.method public getLatestContext()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/DetailEntry;

    iget-object v0, v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->desc:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatestTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/DetailEntry;

    iget-object v0, v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->time:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getStateFlag()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateFlag:I

    return v0
.end method

.method public getStateMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isHasItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->hasItem:Z

    return v0
.end method

.method public isOpenLocker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->openLocker:Z

    return v0
.end method

.method public isPickupCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->pickupCode:Z

    return v0
.end method

.method public isSchedule()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->schedule:Z

    return v0
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->companyCode:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    return-void
.end method

.method public setHasItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->hasItem:Z

    return-void
.end method

.method public setOpenLocker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->openLocker:Z

    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->orderNumber:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPickupCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->pickupCode:Z

    return-void
.end method

.method public setSchedule(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->schedule:Z

    return-void
.end method

.method public setStateFlag(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateFlag:I

    return-void
.end method

.method public setStateMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Info{orderNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->orderNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", companyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->companyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", companyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stateMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stateFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->stateFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->details:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->hasItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pickupCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->pickupCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openLocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->openLocker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", schedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;->schedule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
