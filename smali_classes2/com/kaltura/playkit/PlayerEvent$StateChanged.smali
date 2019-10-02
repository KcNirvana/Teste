.class public Lcom/kaltura/playkit/PlayerEvent$StateChanged;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateChanged"
.end annotation


# instance fields
.field public final newState:Lcom/kaltura/playkit/PlayerState;

.field public final oldState:Lcom/kaltura/playkit/PlayerState;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/PlayerState;Lcom/kaltura/playkit/PlayerState;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerEvent$StateChanged;->newState:Lcom/kaltura/playkit/PlayerState;

    iput-object p2, p0, Lcom/kaltura/playkit/PlayerEvent$StateChanged;->oldState:Lcom/kaltura/playkit/PlayerState;

    return-void
.end method
