.class public final synthetic Lio/lindstrom/m3u8/model/SegmentMap$-CC;
.super Ljava/lang/Object;
.source "SegmentMap.java"


# direct methods
.method public static builder()Lio/lindstrom/m3u8/model/SegmentMap$Builder;
    .locals 1

    new-instance v0, Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentMap;
    .locals 1

    invoke-static {}, Lio/lindstrom/m3u8/model/SegmentMap$-CC;->builder()Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->build()Lio/lindstrom/m3u8/model/SegmentMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Lio/lindstrom/m3u8/model/ByteRange;)Lio/lindstrom/m3u8/model/SegmentMap;
    .locals 1

    invoke-static {}, Lio/lindstrom/m3u8/model/SegmentMap$-CC;->builder()Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->byteRange(Lio/lindstrom/m3u8/model/ByteRange;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->build()Lio/lindstrom/m3u8/model/SegmentMap;

    move-result-object p0

    return-object p0
.end method
