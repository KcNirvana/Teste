.class public Lcom/kaltura/playkit/PlayerEvent$PlayheadUpdated;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayheadUpdated"
.end annotation


# instance fields
.field public final duration:J

.field public final position:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-wide p1, p0, Lcom/kaltura/playkit/PlayerEvent$PlayheadUpdated;->position:J

    iput-wide p3, p0, Lcom/kaltura/playkit/PlayerEvent$PlayheadUpdated;->duration:J

    return-void
.end method
