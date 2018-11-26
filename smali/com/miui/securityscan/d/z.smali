.class final Lcom/miui/securityscan/d/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kq:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/d/z;->Kq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/miui/securityscan/d/z;->Kq:J

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->KD(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "before_slide_down"

    iget-wide v2, p0, Lcom/miui/securityscan/d/z;->Kq:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "new_homepage_stay_time1"

    iget-wide v2, p0, Lcom/miui/securityscan/d/z;->Kq:J

    invoke-static {v1, v2, v3, v0}, Lcom/miui/securityscan/d/a;->La(Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method
