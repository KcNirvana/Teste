.class public Lcom/npaw/youbora/youboralib/utils/Chrono;
.super Ljava/lang/Object;
.source "Chrono.java"


# instance fields
.field private startTime:Ljava/lang/Long;

.field private stopTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeltaMsec(JJ)J
    .locals 0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public static getNow()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDeltaTime()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeltaTime(Z)J
    .locals 4

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStopTime()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->stop()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getNow()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaMsec(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStopTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaMsec(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Chrono;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getStopTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Chrono;->stopTime:Ljava/lang/Long;

    return-object v0
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/utils/Chrono;->startTime:Ljava/lang/Long;

    return-void
.end method

.method public setStopTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/utils/Chrono;->stopTime:Ljava/lang/Long;

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getNow()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStartTime(Ljava/lang/Long;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStopTime(Ljava/lang/Long;)V

    return-void
.end method

.method public stop()J
    .locals 2

    invoke-static {}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getNow()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStopTime(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method
