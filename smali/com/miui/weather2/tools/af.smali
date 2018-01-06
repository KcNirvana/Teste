.class public Lcom/miui/weather2/tools/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/af$a;
    }
.end annotation


# static fields
.field private static b:Lcom/miui/weather2/tools/af;


# instance fields
.field private a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/weather2/tools/af;->c:Landroid/content/Context;

    const-string v0, "com.miui.weather.mifamily.data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/af;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/af;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/af;->a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/tools/af;Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/af;->a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/weather2/tools/af;
    .locals 3

    const-class v1, Lcom/miui/weather2/tools/af;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/weather2/tools/af;->b:Lcom/miui/weather2/tools/af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/tools/af;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/weather2/tools/af;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/weather2/tools/af;->b:Lcom/miui/weather2/tools/af;

    :cond_0
    sget-object v0, Lcom/miui/weather2/tools/af;->b:Lcom/miui/weather2/tools/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/miui/weather2/tools/af$a;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/af;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_mifamily"

    iget-boolean v2, p1, Lcom/miui/weather2/tools/af$a;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mifamily_logo_path"

    iget-object v2, p1, Lcom/miui/weather2/tools/af$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mifamily_title"

    iget-object v2, p1, Lcom/miui/weather2/tools/af$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mifamily_url"

    iget-object v2, p1, Lcom/miui/weather2/tools/af$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/af;Lcom/miui/weather2/tools/af$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/miui/weather2/tools/ag;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/ag;-><init>(Lcom/miui/weather2/tools/af;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.ad.MI_FAMILY_HELPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.systemAdSolution"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/weather2/tools/af;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/weather2/tools/af;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public b()Lcom/miui/weather2/tools/af$a;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/tools/af;->d:Landroid/content/SharedPreferences;

    const-string v1, "show_mifamily"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/tools/af;->d:Landroid/content/SharedPreferences;

    const-string v2, "mifamily_logo_path"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/af;->d:Landroid/content/SharedPreferences;

    const-string v3, "mifamily_title"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/af;->d:Landroid/content/SharedPreferences;

    const-string v4, "mifamily_url"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/weather2/tools/af$a;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/miui/weather2/tools/af$a;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/af;->a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/af;->a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-interface {v1, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->trackView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:MiFamilyManager"

    const-string v2, "trackView()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/af;->a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/af;->a:Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-interface {v1, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->trackClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:MiFamilyManager"

    const-string v2, "trackClick()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
