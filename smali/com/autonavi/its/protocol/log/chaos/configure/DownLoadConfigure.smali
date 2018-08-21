.class public Lcom/autonavi/its/protocol/log/chaos/configure/DownLoadConfigure;
.super Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
.source "DownLoadConfigure.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "downloadconfigure"

    return-object v0
.end method

.method public parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
    .locals 0

    return-object p0
.end method
