.class public Lcom/kaltura/playkit/player/PKMediaSourceConfig;
.super Ljava/lang/Object;
.source "PKMediaSourceConfig.java"


# instance fields
.field mediaEntryType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

.field mediaSource:Lcom/kaltura/playkit/PKMediaSource;

.field playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

.field private vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/PKMediaSource;Lcom/kaltura/playkit/player/PlayerSettings;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kaltura/playkit/player/PKMediaSourceConfig;-><init>(Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/PKMediaSource;Lcom/kaltura/playkit/player/PlayerSettings;Lcom/kaltura/playkit/player/vr/VRSettings;)V

    return-void
.end method

.method constructor <init>(Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/PKMediaSource;Lcom/kaltura/playkit/player/PlayerSettings;Lcom/kaltura/playkit/player/vr/VRSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaEntry;->getMediaType()Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaEntryType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    iput-object p3, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    iput-object p4, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v2, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    iget-object v3, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKMediaSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v0

    iget-object p1, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method getUrl()Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v1

    new-instance v2, Lcom/kaltura/playkit/PKRequestParams;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/kaltura/playkit/PKRequestParams;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/kaltura/playkit/PKRequestParams$Adapter;->adapt(Lcom/kaltura/playkit/PKRequestParams;)Lcom/kaltura/playkit/PKRequestParams;

    move-result-object v0

    iget-object v0, v0, Lcom/kaltura/playkit/PKRequestParams;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public getVrSettings()Lcom/kaltura/playkit/player/vr/VRSettings;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
