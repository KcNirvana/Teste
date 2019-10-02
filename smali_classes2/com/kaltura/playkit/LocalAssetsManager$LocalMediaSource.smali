.class public Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;
.super Lcom/kaltura/playkit/PKMediaSource;
.source "LocalAssetsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/LocalAssetsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMediaSource"
.end annotation


# instance fields
.field private localDataStore:Lcom/kaltura/playkit/LocalDataStore;

.field private scheme:Lcom/kaltura/playkit/PKDrmParams$Scheme;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalDataStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/PKMediaSource;-><init>()V

    invoke-virtual {p0, p3}, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->setId(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {p0, p2}, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->setUrl(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaSource;

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    invoke-static {p3, p1}, Lcom/kaltura/playkit/LocalAssetsManager;->access$700(Ljava/lang/String;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->scheme:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    return-void
.end method


# virtual methods
.method public getDrmData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKDrmParams;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Lcom/kaltura/playkit/LocalDataStore;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->localDataStore:Lcom/kaltura/playkit/LocalDataStore;

    return-object v0
.end method

.method public hasDrmParams()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;->scheme:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
