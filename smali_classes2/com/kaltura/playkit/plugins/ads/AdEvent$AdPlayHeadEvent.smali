.class public Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;
.super Lcom/kaltura/playkit/plugins/ads/AdEvent;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdPlayHeadEvent"
.end annotation


# instance fields
.field public final adPlayHead:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PLAY_HEAD_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    iput-wide p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;->adPlayHead:J

    return-void
.end method
