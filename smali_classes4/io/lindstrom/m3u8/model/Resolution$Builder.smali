.class public Lio/lindstrom/m3u8/model/Resolution$Builder;
.super Lio/lindstrom/m3u8/model/ResolutionBuilder;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/ResolutionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/lindstrom/m3u8/model/Resolution;
    .locals 1

    invoke-super {p0}, Lio/lindstrom/m3u8/model/ResolutionBuilder;->build()Lio/lindstrom/m3u8/model/Resolution;

    move-result-object v0

    return-object v0
.end method
