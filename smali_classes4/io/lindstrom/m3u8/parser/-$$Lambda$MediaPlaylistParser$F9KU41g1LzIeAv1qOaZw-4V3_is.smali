.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lio/lindstrom/m3u8/parser/MediaPlaylistParser;

.field private final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;->f$0:Lio/lindstrom/m3u8/parser/MediaPlaylistParser;

    iput-object p2, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;->f$0:Lio/lindstrom/m3u8/parser/MediaPlaylistParser;

    iget-object v1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v0, v1, p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->lambda$writeMediaSegment$4(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/ByteRange;)V

    return-void
.end method
