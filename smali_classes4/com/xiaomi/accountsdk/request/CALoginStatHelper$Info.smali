.class Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;
.super Ljava/lang/Object;
.source "CALoginStatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/CALoginStatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field finishTime:Ljava/lang/Long;

.field ip:Ljava/lang/String;

.field result:Ljava/lang/Boolean;

.field startTime:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finishTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method finish(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finishTime:Ljava/lang/Long;

    return-void
.end method

.method resultString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method start(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->ip:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    return-void
.end method

.method timeSpent(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finishTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const-string v0, "%d_%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finishTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const-string v0, "%d_"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finishTime:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string v0, "_%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finishTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
