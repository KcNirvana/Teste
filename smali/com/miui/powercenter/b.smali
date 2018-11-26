.class Lcom/miui/powercenter/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/quickoptimize/k;


# instance fields
.field private final aPl:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public aPi()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfY(Lcom/miui/powercenter/PowerCenter;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aPj()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v0

    const/16 v1, 0x40e

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/miui/powercenter/quickoptimize/l;->aPo(ZLcom/miui/powercenter/model/ScanItemModel$ScanItems;)Lcom/miui/powercenter/quickoptimize/l;

    move-result-object v1

    const/16 v2, 0x41d

    invoke-virtual {v0, v2, v1}, Lcom/miui/powercenter/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public aPl()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v0

    const/16 v1, 0x40b

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public aPm(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, v1, p1}, Lcom/miui/powercenter/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public aPn()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/b;->aPl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/c;->aLg(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
