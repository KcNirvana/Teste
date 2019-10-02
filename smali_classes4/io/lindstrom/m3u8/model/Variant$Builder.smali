.class public Lio/lindstrom/m3u8/model/Variant$Builder;
.super Lio/lindstrom/m3u8/model/VariantBuilder;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/Variant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/VariantBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/lindstrom/m3u8/model/Variant;
    .locals 1

    invoke-super {p0}, Lio/lindstrom/m3u8/model/VariantBuilder;->build()Lio/lindstrom/m3u8/model/Variant;

    move-result-object v0

    return-object v0
.end method

.method public resolution(II)Lio/lindstrom/m3u8/model/Variant$Builder;
    .locals 0

    invoke-static {p1, p2}, Lio/lindstrom/m3u8/model/Resolution$-CC;->of(II)Lio/lindstrom/m3u8/model/Resolution;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/Variant$Builder;->resolution(Lio/lindstrom/m3u8/model/Resolution;)Lio/lindstrom/m3u8/model/Variant$Builder;

    move-result-object p1

    return-object p1
.end method
