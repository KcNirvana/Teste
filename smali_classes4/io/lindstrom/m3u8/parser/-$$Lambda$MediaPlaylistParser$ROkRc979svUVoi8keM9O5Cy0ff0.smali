.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ROkRc979svUVoi8keM9O5Cy0ff0;
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

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ROkRc979svUVoi8keM9O5Cy0ff0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ROkRc979svUVoi8keM9O5Cy0ff0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/time/OffsetDateTime;

    invoke-static {v0, p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->lambda$writeMediaSegment$2(Ljava/lang/StringBuilder;Ljava/time/OffsetDateTime;)V

    return-void
.end method
