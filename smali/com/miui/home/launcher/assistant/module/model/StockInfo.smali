.class public Lcom/miui/home/launcher/assistant/module/model/StockInfo;
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
.field private currency:Ljava/lang/String;

.field private formatChange:Ljava/lang/String;

.field private formatChangeRate:Ljava/lang/String;

.field private formatPrice:Ljava/lang/String;

.field private id:J

.field private market:Ljava/lang/String;

.field private nameCN:Ljava/lang/String;

.field private symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatChange:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatChangeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->id:J

    return-wide v0
.end method

.method public getLatestPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->nameCN:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public setChange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatChange:Ljava/lang/String;

    return-void
.end method

.method public setChangeRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatChangeRate:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->currency:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->id:J

    return-void
.end method

.method public setLatestPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatPrice:Ljava/lang/String;

    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->market:Ljava/lang/String;

    return-void
.end method

.method public setNameCN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->nameCN:Ljava/lang/String;

    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->symbol:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"change\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatChange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"changeRate\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatChangeRate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"currency\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"latestPrice\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->formatPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"market\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->market:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"nameCN\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->nameCN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"symbol\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
