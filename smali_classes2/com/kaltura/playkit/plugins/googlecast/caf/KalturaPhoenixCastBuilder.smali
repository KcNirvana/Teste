.class public Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
.super Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.source "KalturaPhoenixCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder<",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public setAssetReferenceType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setAssetReferenceType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setContextType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setContextType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setFileIds(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setFileIds(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setFormats(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setFormats(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setMediaType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setMediaType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setProtocol(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setProtocol(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method
