.class public Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public packageName:Ljava/lang/CharSequence;

.field public totalTraffic:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    return-void
.end method


# virtual methods
.method public addTraffic(J)V
    .locals 3

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    return-void
.end method
