.class public Lcom/miui/securityscan/scanner/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/scanner/l;


# instance fields
.field private final Dy:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/t;->Dy:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public DP()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/t;->Dy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MD()V

    :cond_0
    return-void
.end method
