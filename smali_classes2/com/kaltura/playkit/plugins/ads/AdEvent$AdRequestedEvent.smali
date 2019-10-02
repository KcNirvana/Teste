.class public Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;
.super Lcom/kaltura/playkit/plugins/ads/AdEvent;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdRequestedEvent"
.end annotation


# instance fields
.field public final adTagUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;->adTagUrl:Ljava/lang/String;

    return-void
.end method
