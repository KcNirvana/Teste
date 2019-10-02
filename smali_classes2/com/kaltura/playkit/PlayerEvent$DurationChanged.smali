.class public Lcom/kaltura/playkit/PlayerEvent$DurationChanged;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationChanged"
.end annotation


# instance fields
.field public final duration:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-wide p1, p0, Lcom/kaltura/playkit/PlayerEvent$DurationChanged;->duration:J

    return-void
.end method
