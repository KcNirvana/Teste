.class public interface abstract Lio/lindstrom/m3u8/model/MasterPlaylist;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/Playlist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    }
.end annotation

.annotation build Lorg/immutables/value/Value$Immutable;
.end annotation


# virtual methods
.method public abstract alternativeRenditions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract iFrameVariants()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/IFrameVariant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract variants()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/lindstrom/m3u8/model/Variant;",
            ">;"
        }
    .end annotation
.end method
