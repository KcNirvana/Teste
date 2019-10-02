.class public final synthetic Lio/lindstrom/m3u8/model/MediaPlaylist$-CC;
.super Ljava/lang/Object;
.source "MediaPlaylist.java"


# direct methods
.method public static $default$iFramesOnly(Lio/lindstrom/m3u8/model/MediaPlaylist;)Z
    .locals 1
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$mediaSequence(Lio/lindstrom/m3u8/model/MediaPlaylist;)I
    .locals 1
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$ongoing(Lio/lindstrom/m3u8/model/MediaPlaylist;)Z
    .locals 1
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static builder()Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 1

    new-instance v0, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;-><init>()V

    return-object v0
.end method
