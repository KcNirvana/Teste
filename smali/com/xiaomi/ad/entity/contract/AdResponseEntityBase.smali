.class public abstract Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;
.super Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/ad/entity/contract/IAdResponseEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;",
        ">",
        "Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;",
        "Lcom/xiaomi/ad/entity/contract/IAdResponseEntity;"
    }
.end annotation


# instance fields
.field private adInfos:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "adInfos"
        alternate = {
            "adInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;

    return-object v0
.end method

.method public bridge synthetic getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IGsonEntity;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public final getAdInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->getSize(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final getAdInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->avoidNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasAdInfos()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
