.class public Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferStart;
.super Lcom/kaltura/playkit/plugins/ads/AdEvent;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdBufferStart"
.end annotation


# instance fields
.field public final adPosition:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    iput-wide p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferStart;->adPosition:J

    return-void
.end method
