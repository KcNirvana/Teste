.class Lcom/miui/gamebooster/ui/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/gamebooster/ui/j;


# instance fields
.field private final ct:Ljava/lang/ref/WeakReference;

.field final synthetic cu:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/k;->cu:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/k;->ct:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ea()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/k;->ct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dX(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    :cond_0
    return-void
.end method

.method public eb()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/k;->ct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dE(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/customview/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/d;->dismiss()V

    :cond_0
    return-void
.end method

.method public ec(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/k;->ct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dT(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
