.class public final synthetic Lio/lindstrom/m3u8/model/Resolution$-CC;
.super Ljava/lang/Object;
.source "Resolution.java"


# direct methods
.method public static builder()Lio/lindstrom/m3u8/model/Resolution$Builder;
    .locals 1

    new-instance v0, Lio/lindstrom/m3u8/model/Resolution$Builder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/model/Resolution$Builder;-><init>()V

    return-object v0
.end method

.method public static of(II)Lio/lindstrom/m3u8/model/Resolution;
    .locals 1

    invoke-static {}, Lio/lindstrom/m3u8/model/Resolution$-CC;->builder()Lio/lindstrom/m3u8/model/Resolution$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/lindstrom/m3u8/model/Resolution$Builder;->width(I)Lio/lindstrom/m3u8/model/Resolution$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/Resolution$Builder;->height(I)Lio/lindstrom/m3u8/model/Resolution$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/lindstrom/m3u8/model/Resolution$Builder;->build()Lio/lindstrom/m3u8/model/Resolution;

    move-result-object p0

    return-object p0
.end method
