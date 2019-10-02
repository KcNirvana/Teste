.class public Lcom/kaltura/playkit/PlayerEvent$PlaybackRateChanged;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackRateChanged"
.end annotation


# instance fields
.field public final rate:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_RATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput p1, p0, Lcom/kaltura/playkit/PlayerEvent$PlaybackRateChanged;->rate:F

    return-void
.end method
