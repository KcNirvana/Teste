.class public Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfoUpdated"
.end annotation


# instance fields
.field public final playbackInfo:Lcom/kaltura/playkit/PlaybackInfo;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/PlaybackInfo;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;->playbackInfo:Lcom/kaltura/playkit/PlaybackInfo;

    return-void
.end method
