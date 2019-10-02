.class public Lcom/kaltura/playkit/plugins/ads/AdEvent;
.super Ljava/lang/Object;
.source "AdEvent.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferEnd;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferStart;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdSkippedEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPausedEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;,
        Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;
    }
.end annotation


# instance fields
.field public type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent;->type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    return-void
.end method


# virtual methods
.method public eventType()Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent;->type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    return-object v0
.end method
