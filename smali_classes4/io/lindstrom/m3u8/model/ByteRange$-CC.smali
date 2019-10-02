.class public final synthetic Lio/lindstrom/m3u8/model/ByteRange$-CC;
.super Ljava/lang/Object;
.source "ByteRange.java"


# direct methods
.method public static builder()Lio/lindstrom/m3u8/model/ByteRange$Builder;
    .locals 1

    new-instance v0, Lio/lindstrom/m3u8/model/ByteRange$Builder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/model/ByteRange$Builder;-><init>()V

    return-object v0
.end method

.method public static of(J)Lio/lindstrom/m3u8/model/ByteRange;
    .locals 1

    invoke-static {}, Lio/lindstrom/m3u8/model/ByteRange$-CC;->builder()Lio/lindstrom/m3u8/model/ByteRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->length(J)Lio/lindstrom/m3u8/model/ByteRange$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->build()Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p0

    return-object p0
.end method

.method public static of(JJ)Lio/lindstrom/m3u8/model/ByteRange;
    .locals 1

    invoke-static {}, Lio/lindstrom/m3u8/model/ByteRange$-CC;->builder()Lio/lindstrom/m3u8/model/ByteRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->length(J)Lio/lindstrom/m3u8/model/ByteRange$Builder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->offset(J)Lio/lindstrom/m3u8/model/ByteRange$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->build()Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p0

    return-object p0
.end method
