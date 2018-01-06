.class public final Lcom/miui/weather2/structures/DataUsageDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public monthTotal:J

.field public monthUsed:J

.field public monthWarning:J

.field public todayUsed:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/weather2/structures/DataUsageDetail;->monthTotal:J

    iput-wide p3, p0, Lcom/miui/weather2/structures/DataUsageDetail;->monthUsed:J

    iput-wide p5, p0, Lcom/miui/weather2/structures/DataUsageDetail;->monthWarning:J

    iput-wide p7, p0, Lcom/miui/weather2/structures/DataUsageDetail;->todayUsed:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "monthTotal:%s, monthUsed:%s, monthWarning:%s, todayUsed:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/weather2/structures/DataUsageDetail;->monthTotal:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/weather2/structures/DataUsageDetail;->monthUsed:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/miui/weather2/structures/DataUsageDetail;->monthWarning:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/miui/weather2/structures/DataUsageDetail;->todayUsed:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
