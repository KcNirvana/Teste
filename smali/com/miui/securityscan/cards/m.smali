.class Lcom/miui/securityscan/cards/m;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private Cf:Ljava/lang/ref/WeakReference;

.field private Cg:I

.field private Ch:Z

.field private Ci:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/cards/l;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/m;->Cf:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Dx(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/cards/m;->Ch:Z

    return-void
.end method

.method public Dy(Ljava/util/List;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/m;->Ci:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/cards/m;->Cf:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/cards/m;->Ci:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/cards/m;->Ci:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v0, p0, Lcom/miui/securityscan/cards/m;->Cf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/cards/l;

    if-eqz v5, :cond_2

    if-nez v4, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "level"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "scale"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v2

    iget v1, p0, Lcom/miui/securityscan/cards/m;->Cg:I

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/securityscan/cards/m;->Ch:Z

    if-eq v2, v1, :cond_5

    :cond_4
    iput v0, p0, Lcom/miui/securityscan/cards/m;->Cg:I

    iput-boolean v2, p0, Lcom/miui/securityscan/cards/m;->Ch:Z

    iput-boolean v2, v4, Lcom/miui/securityscan/cards/l;->BF:Z

    iput v0, v4, Lcom/miui/securityscan/cards/l;->BD:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v4, Lcom/miui/securityscan/cards/l;->BE:Z

    new-instance v0, Lcom/miui/securityscan/cards/r;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/cards/r;-><init>(Lcom/miui/securityscan/cards/m;ZLandroid/content/Context;Lcom/miui/securityscan/cards/l;Ljava/util/List;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v6

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "com.miui.action.NETWORK_POLICY_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/securityscan/cards/s;

    invoke-direct {v0, p0, p1, v4, v5}, Lcom/miui/securityscan/cards/s;-><init>(Lcom/miui/securityscan/cards/m;Landroid/content/Context;Lcom/miui/securityscan/cards/l;Ljava/util/List;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
