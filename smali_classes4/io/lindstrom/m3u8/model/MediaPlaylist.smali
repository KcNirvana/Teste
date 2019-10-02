.class public interface abstract Lio/lindstrom/m3u8/model/MediaPlaylist;
.super Ljava/lang/Object;
.source "MediaPlaylist.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/Playlist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    }
.end annotation

.annotation build Lorg/immutables/value/Value$Immutable;
.end annotation


# virtual methods
.method public abstract iFramesOnly()Z
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation
.end method

.method public abstract mediaSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/MediaSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mediaSequence()I
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation
.end method

.method public abstract ongoing()Z
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation
.end method

.method public abstract playlistType()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/PlaylistType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract targetDuration()I
.end method
