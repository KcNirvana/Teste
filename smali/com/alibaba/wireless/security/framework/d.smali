.class public Lcom/alibaba/wireless/security/framework/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/framework/ISGPluginInfo;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ldalvik/system/DexClassLoader;

.field public e:Landroid/content/res/AssetManager;

.field public f:Landroid/content/res/Resources;

.field public g:Landroid/content/pm/PackageInfo;

.field public h:Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;

.field public i:Landroid/app/Application;

.field private j:Lcom/alibaba/wireless/security/framework/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/wireless/security/framework/e;Ljava/lang/String;Ldalvik/system/DexClassLoader;Landroid/content/pm/PackageInfo;Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/d;->j:Lcom/alibaba/wireless/security/framework/e;

    iput-object p3, p0, Lcom/alibaba/wireless/security/framework/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/wireless/security/framework/d;->d:Ldalvik/system/DexClassLoader;

    iput-object p5, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iput-object p6, p0, Lcom/alibaba/wireless/security/framework/d;->h:Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->c:Ljava/lang/String;

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->f:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v3

    const-string/jumbo v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/wireless/security/framework/d;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v4, v0, v5, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/alibaba/wireless/security/framework/d;->f:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/d;->d:Ldalvik/system/DexClassLoader;

    invoke-virtual {v3, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->i:Landroid/app/Application;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->i:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    const-string/jumbo v3, "attachBaseContext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->i:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/framework/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->d:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v1

    const-string/jumbo v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/d;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/framework/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPluginInfo(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/d;->j:Lcom/alibaba/wireless/security/framework/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/d;

    move-result-object v0

    return-object v0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sg.extra.class"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sg.extra.pluginname"

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/d;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
