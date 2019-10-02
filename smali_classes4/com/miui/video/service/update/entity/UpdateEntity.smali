.class public Lcom/miui/video/service/update/entity/UpdateEntity;
.super Lcom/miui/video/framework/base/entity/ResponseEntity;
.source "UpdateEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private app_name:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/ResponseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_ver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->app_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->status:I

    return v0
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->app_name:Ljava/lang/String;

    return-void
.end method

.method public setApp_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->app_ver:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/service/update/entity/UpdateEntity;->status:I

    return-void
.end method
