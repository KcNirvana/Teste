.class final Lcom/miui/appmanager/ac;
.super Landroid/content/pm/LauncherApps$Callback;
.source ""


# instance fields
.field final synthetic aWH:Lcom/miui/appmanager/k;

.field final synthetic aWI:Lcom/miui/appmanager/o;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/k;Lcom/miui/appmanager/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ac;->aWH:Lcom/miui/appmanager/k;

    iput-object p2, p0, Lcom/miui/appmanager/ac;->aWI:Lcom/miui/appmanager/o;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ac;->aWI:Lcom/miui/appmanager/o;

    invoke-interface {v0, p1, p2}, Lcom/miui/appmanager/o;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method
