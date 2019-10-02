.class public Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
.super Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;
.source "MasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/MasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/lindstrom/m3u8/model/MasterPlaylist;
    .locals 1

    invoke-super {p0}, Lio/lindstrom/m3u8/model/MasterPlaylistBuilder;->build()Lio/lindstrom/m3u8/model/MasterPlaylist;

    move-result-object v0

    return-object v0
.end method
