.class public Lcom/miui/personalassistant/stock/model/StockInfo;
.super Ljava/lang/Object;
.source "StockInfo.java"


# static fields
.field public static final CHANGE:Ljava/lang/String; = "change"

.field public static final CHANGERATE:Ljava/lang/String; = "changeRate"

.field public static final CREATETIME:Ljava/lang/String; = "createTime"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final EXCHANGE:Ljava/lang/String; = "exchange"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LATESTPRICE:Ljava/lang/String; = "latestPrice"

.field public static final MARKET:Ljava/lang/String; = "market"

.field public static final NAMECN:Ljava/lang/String; = "nameCN"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPDATETIME:Ljava/lang/String; = "updateTime"


# instance fields
.field private change:D

.field private changeRate:Ljava/lang/String;

.field private createTime:J

.field private currency:Ljava/lang/String;

.field private exchange:Ljava/lang/String;

.field private id:J

.field private latestPrice:D

.field private market:Ljava/lang/String;

.field private nameCN:Ljava/lang/String;

.field private symbol:Ljava/lang/String;

.field private timestamp:J

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChange()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->change:D

    return-wide v0
.end method

.method public getChangeRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->changeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->createTime:J

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatChange()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->change:D

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/utils/NumberFormatUtils;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormatChangeRate(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0403

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->changeRate:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormatLatestPrice()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->latestPrice:D

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/utils/NumberFormatUtils;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->id:J

    return-wide v0
.end method

.method public getLatestPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->latestPrice:D

    return-wide v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->nameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->timestamp:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->updateTime:J

    return-wide v0
.end method

.method public setChange(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->change:D

    return-void
.end method

.method public setChangeRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->changeRate:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->createTime:J

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->currency:Ljava/lang/String;

    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->exchange:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->id:J

    return-void
.end method

.method public setLatestPrice(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->latestPrice:D

    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->market:Ljava/lang/String;

    return-void
.end method

.method public setNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->nameCN:Ljava/lang/String;

    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->symbol:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->timestamp:J

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->updateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"change\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->change:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"changeRate\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->changeRate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"createTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"currency\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"exchange\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->exchange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"latestPrice\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->latestPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"market\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->market:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"nameCN\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->nameCN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"symbol\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"timestamp\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"updateTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/personalassistant/stock/model/StockInfo;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
