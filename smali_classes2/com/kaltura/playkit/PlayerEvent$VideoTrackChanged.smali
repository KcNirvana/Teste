.class public Lcom/kaltura/playkit/PlayerEvent$VideoTrackChanged;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoTrackChanged"
.end annotation


# instance fields
.field public final newTrack:Lcom/kaltura/playkit/player/VideoTrack;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/player/VideoTrack;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->VIDEO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerEvent$VideoTrackChanged;->newTrack:Lcom/kaltura/playkit/player/VideoTrack;

    return-void
.end method
