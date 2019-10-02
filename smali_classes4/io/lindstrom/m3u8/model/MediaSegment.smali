.class public interface abstract Lio/lindstrom/m3u8/model/MediaSegment;
.super Ljava/lang/Object;
.source "MediaSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    }
.end annotation

.annotation build Lorg/immutables/value/Value$Immutable;
.end annotation


# virtual methods
.method public abstract byteRange()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/ByteRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discontinuity()Z
    .annotation build Lorg/immutables/value/Value$Default;
    .end annotation
.end method

.method public abstract duration()D
.end method

.method public abstract programDateTime()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/time/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentKey()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/SegmentKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentMap()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/SegmentMap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract title()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract uri()Ljava/lang/String;
.end method
