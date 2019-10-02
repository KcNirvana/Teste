.class public Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;
.super Lcom/kaltura/playkit/plugins/youbora/YouboraEvent;
.source "YouboraEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/youbora/YouboraEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YouboraReport"
.end annotation


# instance fields
.field public final reportedEventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;->reportedEventName:Ljava/lang/String;

    return-void
.end method
