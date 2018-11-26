.class final Lcom/miui/antispam/service/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aam:Lcom/miui/antispam/service/b/a;


# direct methods
.method constructor <init>(Lcom/miui/antispam/service/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/b/e;->aam:Lcom/miui/antispam/service/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/service/b/e;->aam:Lcom/miui/antispam/service/b/a;

    invoke-static {v0}, Lcom/miui/antispam/service/b/a;->ade(Lcom/miui/antispam/service/b/a;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/b/e;->aam:Lcom/miui/antispam/service/b/a;

    invoke-static {v0}, Lcom/miui/antispam/service/b/a;->add(Lcom/miui/antispam/service/b/a;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    goto :goto_0
.end method
