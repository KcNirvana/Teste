.class final Lcom/miui/securityscan/c/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic JD:Lcom/miui/securityscan/c/d;

.field final synthetic JE:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/d;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/j;->JD:Lcom/miui/securityscan/c/d;

    iput-object p2, p0, Lcom/miui/securityscan/c/j;->JE:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/c;->OL(J)V

    iget-object v0, p0, Lcom/miui/securityscan/c/j;->JE:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nf()I

    return-void
.end method
