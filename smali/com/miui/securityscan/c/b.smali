.class public Lcom/miui/securityscan/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/a;


# instance fields
.field public Jv:Z

.field private final Jw:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/c/b;->Jw:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public JW()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/c/b;->Jw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/c/i;

    invoke-direct {v2, p0, v0}, Lcom/miui/securityscan/c/i;-><init>(Lcom/miui/securityscan/c/b;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public JX()V
    .locals 0

    return-void
.end method

.method public JY()V
    .locals 0

    return-void
.end method
