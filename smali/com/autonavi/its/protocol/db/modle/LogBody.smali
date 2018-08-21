.class public Lcom/autonavi/its/protocol/db/modle/LogBody;
.super Ljava/lang/Object;
.source "LogBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Ljava/lang/String;

.field private id:J

.field private time:J

.field private time_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->id:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->time:J

    return-wide v0
.end method

.method public getTime_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->time_text:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->id:J

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->time:J

    return-void
.end method

.method public setTime_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/db/modle/LogBody;->time_text:Ljava/lang/String;

    return-void
.end method
