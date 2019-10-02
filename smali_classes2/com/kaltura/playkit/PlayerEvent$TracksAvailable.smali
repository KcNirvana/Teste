.class public Lcom/kaltura/playkit/PlayerEvent$TracksAvailable;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TracksAvailable"
.end annotation


# instance fields
.field public final tracksInfo:Lcom/kaltura/playkit/player/PKTracks;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/player/PKTracks;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACKS_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerEvent$TracksAvailable;->tracksInfo:Lcom/kaltura/playkit/player/PKTracks;

    return-void
.end method
