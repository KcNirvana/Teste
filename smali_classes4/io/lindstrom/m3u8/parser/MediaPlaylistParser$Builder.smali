.class Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;
.super Ljava/lang/Object;
.source "MediaPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/parser/MediaPlaylistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final playlistBuilder:Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

.field private segmentBuilder:Lio/lindstrom/m3u8/model/MediaSegment$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/lindstrom/m3u8/model/MediaPlaylist$-CC;->builder()Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->playlistBuilder:Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-static {}, Lio/lindstrom/m3u8/model/MediaSegment$-CC;->builder()Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->segmentBuilder:Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-void
.end method

.method static synthetic access$000(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->playlistBuilder:Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->segmentBuilder:Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p0
.end method

.method static synthetic access$102(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;Lio/lindstrom/m3u8/model/MediaSegment$Builder;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 0

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->segmentBuilder:Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method
