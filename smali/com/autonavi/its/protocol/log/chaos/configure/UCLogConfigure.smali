.class public Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;
.super Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
.source "UCLogConfigure.java"


# instance fields
.field private upload_enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uc_download_install"

    return-object v0
.end method

.method public isUpload_enable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;->upload_enable:Z

    return v0
.end method

.method public parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;->upload_enable:Z

    return-object p0
.end method
