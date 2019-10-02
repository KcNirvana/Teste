.class public Lcom/miui/video/service/update/entity/UpdateResultEntity;
.super Ljava/lang/Object;
.source "UpdateResultEntity.java"


# instance fields
.field private market:Lcom/miui/video/service/update/IAppUpdateMarket;

.field private response:Lcom/xiaomi/market/sdk/UpdateResponse;

.field private statue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarket()Lcom/miui/video/service/update/IAppUpdateMarket;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/entity/UpdateResultEntity;->market:Lcom/miui/video/service/update/IAppUpdateMarket;

    return-object v0
.end method

.method public getResponse()Lcom/xiaomi/market/sdk/UpdateResponse;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/entity/UpdateResultEntity;->response:Lcom/xiaomi/market/sdk/UpdateResponse;

    return-object v0
.end method

.method public getStatue()I
    .locals 1

    iget v0, p0, Lcom/miui/video/service/update/entity/UpdateResultEntity;->statue:I

    return v0
.end method

.method public setMarket(Lcom/miui/video/service/update/IAppUpdateMarket;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/entity/UpdateResultEntity;->market:Lcom/miui/video/service/update/IAppUpdateMarket;

    return-void
.end method

.method public setResponse(Lcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/update/entity/UpdateResultEntity;->response:Lcom/xiaomi/market/sdk/UpdateResponse;

    return-void
.end method

.method public setStatue(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/service/update/entity/UpdateResultEntity;->statue:I

    return-void
.end method
