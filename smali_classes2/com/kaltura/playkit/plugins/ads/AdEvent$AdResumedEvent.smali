.class public Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;
.super Lcom/kaltura/playkit/plugins/ads/AdEvent;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdResumedEvent"
.end annotation


# instance fields
.field public final adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->RESUMED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-void
.end method
