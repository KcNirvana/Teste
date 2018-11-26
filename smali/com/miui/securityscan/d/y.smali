.class final Lcom/miui/securityscan/d/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kp:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/d/y;->Kp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/miui/securityscan/d/y;->Kp:J

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->KD(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "new_homepage_stay_time1"

    iget-wide v2, p0, Lcom/miui/securityscan/d/y;->Kp:J

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/d/a;->KZ(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
