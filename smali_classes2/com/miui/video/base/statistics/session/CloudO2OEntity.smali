.class public Lcom/miui/video/base/statistics/session/CloudO2OEntity;
.super Ljava/lang/Object;
.source "CloudO2OEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity;
    }
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public eid:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public rc_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public token_auth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRc_items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->rc_items:Ljava/util/List;

    return-object v0
.end method

.method public getToken_auth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->token_auth:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->host:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setRc_items(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/session/CloudO2OEntity$RcItemsEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->rc_items:Ljava/util/List;

    return-void
.end method

.method public setToken_auth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudO2OEntity;->token_auth:Ljava/lang/String;

    return-void
.end method
