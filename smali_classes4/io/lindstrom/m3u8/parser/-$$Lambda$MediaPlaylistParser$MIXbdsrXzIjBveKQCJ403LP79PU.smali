.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$MIXbdsrXzIjBveKQCJ403LP79PU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$MIXbdsrXzIjBveKQCJ403LP79PU;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$MIXbdsrXzIjBveKQCJ403LP79PU;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lio/lindstrom/m3u8/model/PlaylistType;

    invoke-static {v0, p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->lambda$write$0(Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/PlaylistType;)V

    return-void
.end method
