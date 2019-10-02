.class public interface abstract Lio/lindstrom/m3u8/model/SegmentMap;
.super Ljava/lang/Object;
.source "SegmentMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/SegmentMap$Builder;
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

.method public abstract uri()Ljava/lang/String;
.end method
