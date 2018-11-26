.class public abstract Lcom/miui/cleanmaster/InstallCallBack;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bxu(ZI)V
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/cleanmaster/e;

    invoke-direct {v1, p0, p2}, Lcom/miui/cleanmaster/e;-><init>(Lcom/miui/cleanmaster/InstallCallBack;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
