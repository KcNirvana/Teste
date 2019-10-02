.class public Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;
.super Ljava/lang/Object;
.source "KalturaPlaybackRequestAdapter.java"

# interfaces
.implements Lcom/kaltura/playkit/PKRequestParams$Adapter;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private playSessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/kaltura/playkit/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->updateParams(Lcom/kaltura/playkit/Player;)V

    return-void
.end method

.method public static install(Lcom/kaltura/playkit/Player;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object v0

    instance-of v0, v0, Lcom/kaltura/playkit/player/PlayerSettings;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object p1

    check-cast p1, Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/PKRequestParams$Adapter;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;

    invoke-direct {v0, p1, p0}, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;-><init>(Ljava/lang/String;Lcom/kaltura/playkit/Player;)V

    invoke-interface {p0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/kaltura/playkit/Player$Settings;->setContentRequestAdapter(Lcom/kaltura/playkit/PKRequestParams$Adapter;)Lcom/kaltura/playkit/Player$Settings;

    return-void
.end method


# virtual methods
.method public adapt(Lcom/kaltura/playkit/PKRequestParams;)Lcom/kaltura/playkit/PKRequestParams;
    .locals 3

    iget-object v0, p1, Lcom/kaltura/playkit/PKRequestParams;->url:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/playManifest/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "clientTag"

    const-string v2, "playkit/android-vootdev"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playSessionId"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->playSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->applicationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "referrer"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->applicationName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/kaltura/playkit/Utils;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    iget-object v1, p1, Lcom/kaltura/playkit/PKRequestParams;->url:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/kaltura/playkit/PKRequestParams;

    iget-object p1, p1, Lcom/kaltura/playkit/PKRequestParams;->headers:Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lcom/kaltura/playkit/PKRequestParams;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public updateParams(Lcom/kaltura/playkit/Player;)V
    .locals 0

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->playSessionId:Ljava/lang/String;

    return-void
.end method
