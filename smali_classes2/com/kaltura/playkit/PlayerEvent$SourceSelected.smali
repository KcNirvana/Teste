.class public Lcom/kaltura/playkit/PlayerEvent$SourceSelected;
.super Lcom/kaltura/playkit/PlayerEvent;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceSelected"
.end annotation


# instance fields
.field public final source:Lcom/kaltura/playkit/PKMediaSource;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/PKMediaSource;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/PlayerEvent;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;->source:Lcom/kaltura/playkit/PKMediaSource;

    return-void
.end method
