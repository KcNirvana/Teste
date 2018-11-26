.class final Lcom/miui/powercenter/quickoptimize/P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/quickoptimize/o;


# instance fields
.field final synthetic aFl:Lcom/miui/powercenter/quickoptimize/r;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/r;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/P;->aFl:Lcom/miui/powercenter/quickoptimize/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aPu(Ljava/util/List;)V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/q;->-wrap0()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/MemoryModel;->bpu()Landroid/util/SparseBooleanArray;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/MemoryModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/MemoryModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/miui/powercenter/quickoptimize/Q;

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/P;->aFl:Lcom/miui/powercenter/quickoptimize/r;

    invoke-direct {v2, p0, v3, v1}, Lcom/miui/powercenter/quickoptimize/Q;-><init>(Lcom/miui/powercenter/quickoptimize/P;Lcom/miui/powercenter/quickoptimize/r;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
