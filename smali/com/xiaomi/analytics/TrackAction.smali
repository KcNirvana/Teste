.class public Lcom/xiaomi/analytics/TrackAction;
.super Lcom/xiaomi/analytics/Action;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string/jumbo v0, "_action_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->bMX(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string/jumbo v0, "_category_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->bMX(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string/jumbo v0, "_label_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->bMX(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setValue(J)Lcom/xiaomi/analytics/TrackAction;
    .locals 3

    const-string/jumbo v0, "_value_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/analytics/TrackAction;->bMX(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
