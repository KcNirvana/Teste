.class public Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;
.super Lcom/kaltura/playkit/plugins/ads/AdEvent;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public final error:Lcom/kaltura/playkit/PKError;


# direct methods
.method public constructor <init>(Lcom/kaltura/playkit/PKError;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ERROR:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    return-void
.end method
