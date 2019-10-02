.class public Lcom/kaltura/playkit/plugins/youbora/YouboraEvent;
.super Ljava/lang/Object;
.source "YouboraEvent.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;,
        Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventType()Ljava/lang/Enum;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$Type;->REPORT_SENT:Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$Type;

    return-object v0
.end method
