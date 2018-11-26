.class final Lcom/miui/gamebooster/gbservices/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qf:Lcom/miui/gamebooster/gbservices/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/r;->qf:Lcom/miui/gamebooster/gbservices/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/r;->qf:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->ry(Lcom/miui/gamebooster/gbservices/b;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/r;->qf:Lcom/miui/gamebooster/gbservices/b;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/b;->rD(Lcom/miui/gamebooster/gbservices/b;)V

    :cond_0
    return-void
.end method
