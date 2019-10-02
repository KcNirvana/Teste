.class public abstract Lcom/miui/zeus/columbus/ad/enity/AdResponseEntityBase;
.super Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;
.source "AdResponseEntityBase.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/enity/IAdResponseEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;",
        ">",
        "Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;",
        "Lcom/miui/zeus/columbus/ad/enity/IAdResponseEntity;"
    }
.end annotation


# instance fields
.field private adInfos:Ljava/util/List;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        alternate = {
            "adInfoList"
        }
        value = "adInfos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdInfo(I)Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/miui/zeus/columbus/util/b;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;

    return-object p1
.end method

.method public bridge synthetic getAdInfo(I)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/ad/enity/AdResponseEntityBase;->getAdInfo(I)Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;

    move-result-object p1

    return-object p1
.end method

.method public final getAdInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->a(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final getAdInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasAdInfos()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/b;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
