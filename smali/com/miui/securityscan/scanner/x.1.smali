.class public Lcom/miui/securityscan/scanner/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/scanner/k;


# instance fields
.field private final DC:Ljava/lang/ref/WeakReference;

.field private DD:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/x;->DC:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic Fd(Lcom/miui/securityscan/scanner/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/x;->DD:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public Ev()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/x;->DC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/scanner/ab;

    invoke-direct {v2, p0, v0}, Lcom/miui/securityscan/scanner/ab;-><init>(Lcom/miui/securityscan/scanner/x;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Ew(Lcom/miui/securityscan/scanner/c;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/x;->DC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/scanner/aa;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/securityscan/scanner/aa;-><init>(Lcom/miui/securityscan/scanner/x;Lcom/miui/securityscan/MainActivity;Lcom/miui/securityscan/scanner/c;)V

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Ex()V
    .locals 0

    return-void
.end method

.method public Fc(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/x;->DD:Ljava/lang/ref/WeakReference;

    return-void
.end method
