.class public Lcom/miui/securityscan/scanner/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/scanner/n;


# instance fields
.field private final DA:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/v;->DA:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public EA(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/v;->DA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->ignore()V

    :cond_0
    return-void
.end method

.method public Ey(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/v;->DA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Ez(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/v;->DA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-nez p2, :cond_0

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/securityscan/ui/a/c;->HW(I)V

    :cond_0
    return-void
.end method
