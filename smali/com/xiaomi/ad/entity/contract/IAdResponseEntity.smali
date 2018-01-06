.class public interface abstract Lcom/xiaomi/ad/entity/contract/IAdResponseEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/ad/entity/contract/IResponseEntity;


# virtual methods
.method public abstract getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IGsonEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/ad/entity/contract/IGsonEntity;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract getAdInfoCount()I
.end method

.method public abstract getAdInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/ad/entity/contract/IGsonEntity;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract hasAdInfos()Z
.end method
