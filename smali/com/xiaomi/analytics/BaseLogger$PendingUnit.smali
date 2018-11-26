.class Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
.super Ljava/lang/Object;
.source ""


# instance fields
.field bpc:Lcom/xiaomi/analytics/LogEvent;

.field bpd:Ljava/lang/String;

.field bpe:Ljava/lang/String;

.field bpf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpd:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpe:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpc:Lcom/xiaomi/analytics/LogEvent;

    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->bpf:Ljava/lang/String;

    return-void
.end method
