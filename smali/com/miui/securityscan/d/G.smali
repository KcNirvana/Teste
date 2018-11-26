.class final Lcom/miui/securityscan/d/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kx:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/d/G;->Kx:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "newcheck_finish_score"

    iget-wide v2, p0, Lcom/miui/securityscan/d/G;->Kx:J

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/d/a;->KZ(Ljava/lang/String;J)V

    return-void
.end method
