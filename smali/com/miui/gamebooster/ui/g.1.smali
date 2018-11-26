.class Lcom/miui/gamebooster/ui/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aQ:Ljava/lang/ref/WeakReference;

.field private aR:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/g;->aR:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/g;->aQ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bX(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/g;->aR:Ljava/lang/Boolean;

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/g;->aQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x64

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/miui/gamebooster/ui/g;->aR:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v4, 0x50

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bj(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/e;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x6e

    invoke-virtual {v3, v5, v4}, Lcom/miui/gamebooster/ui/e;->aLg(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    return-void
.end method
