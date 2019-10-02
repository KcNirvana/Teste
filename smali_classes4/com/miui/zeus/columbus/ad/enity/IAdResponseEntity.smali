.class public interface abstract Lcom/miui/zeus/columbus/ad/enity/IAdResponseEntity;
.super Ljava/lang/Object;
.source "IAdResponseEntity.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;


# virtual methods
.method public abstract getAdInfo(I)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;",
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
            "Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract hasAdInfos()Z
.end method
