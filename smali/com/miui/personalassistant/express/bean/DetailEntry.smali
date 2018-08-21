.class public Lcom/miui/personalassistant/express/bean/DetailEntry;
.super Ljava/lang/Object;
.source "DetailEntry.java"


# static fields
.field private static sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;


# instance fields
.field public desc:Ljava/lang/String;

.field private isFirst:Z

.field private isLast:Z

.field private stateFlag:I

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->desc:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->time:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->isFirst:Z

    iput-boolean p4, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->isLast:Z

    iput p5, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->stateFlag:I

    return-void
.end method

.method public static buildEntries(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    if-nez v6, :cond_0

    move v3, v8

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_1

    move v4, v8

    :goto_2
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/DetailEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/DetailEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getTime()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/miui/personalassistant/express/bean/DetailEntry;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/personalassistant/express/bean/DetailEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v3, v9

    goto :goto_1

    :cond_1
    move v4, v9

    goto :goto_2

    :cond_2
    return-object v7
.end method

.method public static getOrderCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOrderNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getPhone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isBoxCode()Z
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isPickupCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenGui()Z
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isOpenLocker()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScheduleDelivery()Z
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static linkToSummaryEntry(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 0

    sput-object p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->sExpressEntry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getStateFlag()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->stateFlag:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->isFirst:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->isLast:Z

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->desc:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->time:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DetailEntry{desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/DetailEntry;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
