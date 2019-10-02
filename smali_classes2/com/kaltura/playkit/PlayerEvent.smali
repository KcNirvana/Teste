.class public Lcom/kaltura/playkit/PlayerEvent;
.super Ljava/lang/Object;
.source "PlayerEvent.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/PlayerEvent$Listener;,
        Lcom/kaltura/playkit/PlayerEvent$Type;,
        Lcom/kaltura/playkit/PlayerEvent$PlaybackRateChanged;,
        Lcom/kaltura/playkit/PlayerEvent$TextTrackChanged;,
        Lcom/kaltura/playkit/PlayerEvent$AudioTrackChanged;,
        Lcom/kaltura/playkit/PlayerEvent$VideoTrackChanged;,
        Lcom/kaltura/playkit/PlayerEvent$Seeking;,
        Lcom/kaltura/playkit/PlayerEvent$Error;,
        Lcom/kaltura/playkit/PlayerEvent$PlayheadUpdated;,
        Lcom/kaltura/playkit/PlayerEvent$SourceSelected;,
        Lcom/kaltura/playkit/PlayerEvent$MetadataAvailable;,
        Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;,
        Lcom/kaltura/playkit/PlayerEvent$VolumeChanged;,
        Lcom/kaltura/playkit/PlayerEvent$TracksAvailable;,
        Lcom/kaltura/playkit/PlayerEvent$DurationChanged;,
        Lcom/kaltura/playkit/PlayerEvent$StateChanged;,
        Lcom/kaltura/playkit/PlayerEvent$Generic;
    }
.end annotation


# instance fields
.field public final type:Lcom/kaltura/playkit/PlayerEvent$Type;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerEvent;->type:Lcom/kaltura/playkit/PlayerEvent$Type;

    return-void
.end method


# virtual methods
.method public eventType()Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerEvent;->type:Lcom/kaltura/playkit/PlayerEvent$Type;

    return-object v0
.end method
