.class public Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;
.super Lcom/kaltura/playkit/plugins/ads/AdEvent;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdCuePointsUpdateEvent"
.end annotation


# instance fields
.field public final cuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;->cuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    return-void
.end method
