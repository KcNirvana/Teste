.class public abstract Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
.super Ljava/lang/Object;
.source "BasicCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MOCK_DATA:Ljava/lang/String; = "MOCK_DATA"

.field private static final TAG:Ljava/lang/String; = "BasicCastBuilder"


# instance fields
.field castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    return-void
.end method

.method private getMediaInfo(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->validate(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->getCastHelper()Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->getCustomData(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/MediaInfo$Builder;

    const-string v2, "MOCK_DATA"

    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "MOCK_DATA"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->setStreamType(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->setOptionalData(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    return-object p1
.end method

.method private setOptionalData(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    :cond_0
    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    :cond_1
    return-void
.end method

.method private setStreamType(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getStreamType()Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;

    move-result-object p2

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$1;->$SwitchMap$com$kaltura$playkit$plugins$googlecast$BasicCastBuilder$StreamType:[I

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->getMediaInfo(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCastHelper()Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;
.end method

.method public setAdTagUrl(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setAdTagUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public setDefaultTextLanguageLabel(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setDefaultTextLangaugeLabel(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediaEntryId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setMediaEntryId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Lcom/google/android/gms/cast/MediaMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)V

    return-object p0
.end method

.method public setMwEmbedUrl(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setMwEmbedUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPartnerId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setPartnerId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setStreamType(Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setStreamType(Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;)V

    return-object p0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Lcom/google/android/gms/cast/TextTrackStyle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V

    return-object p0
.end method

.method public setUiConfId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setUiConfId(Ljava/lang/String;)V

    return-object p0
.end method

.method protected validate(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getUiConfId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->TAG:Ljava/lang/String;

    const-string v1, "you should set the uiConfId using the CastBuilder or via the google cast console"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getMediaEntryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getStreamType()Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder$StreamType;

    move-result-object p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
