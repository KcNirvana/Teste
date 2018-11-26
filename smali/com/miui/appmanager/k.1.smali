.class public Lcom/miui/appmanager/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aUe:Landroid/content/pm/LauncherApps$Callback;

.field private aUf:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/miui/appmanager/k;->aUf:Landroid/content/pm/LauncherApps;

    return-void
.end method


# virtual methods
.method public bmw(Lcom/miui/appmanager/o;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/k;->aUf:Landroid/content/pm/LauncherApps;

    new-instance v1, Lcom/miui/appmanager/ac;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/ac;-><init>(Lcom/miui/appmanager/k;Lcom/miui/appmanager/o;)V

    iput-object v1, p0, Lcom/miui/appmanager/k;->aUe:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    return-void
.end method

.method public bmx()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/k;->aUe:Landroid/content/pm/LauncherApps$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/k;->aUf:Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/miui/appmanager/k;->aUe:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    :cond_0
    return-void
.end method
