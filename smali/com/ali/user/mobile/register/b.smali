.class public Lcom/ali/user/mobile/register/b;
.super Ljava/lang/Object;
.source "RegContext.java"


# static fields
.field private static volatile d:Lcom/ali/user/mobile/register/b;


# instance fields
.field public a:Lcom/ali/user/mobile/register/b/b;

.field public b:Lcom/ali/user/mobile/register/b/c;

.field public c:Lcom/ali/user/mobile/register/c/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/register/b/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/b/b;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/b;->a:Lcom/ali/user/mobile/register/b/b;

    new-instance v0, Lcom/ali/user/mobile/register/b/c;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/b/c;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/b;->b:Lcom/ali/user/mobile/register/b/c;

    new-instance v0, Lcom/ali/user/mobile/register/c/a;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/c/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    iget-object v0, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    iget-object v1, p0, Lcom/ali/user/mobile/register/b;->a:Lcom/ali/user/mobile/register/b/b;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/c/e;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    iget-object v1, p0, Lcom/ali/user/mobile/register/b;->b:Lcom/ali/user/mobile/register/b/c;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->b(Lcom/ali/user/mobile/register/c/e;)V

    return-void
.end method

.method public static a()Lcom/ali/user/mobile/register/b;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/register/b;->d:Lcom/ali/user/mobile/register/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/register/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/register/b;->d:Lcom/ali/user/mobile/register/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/register/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/b;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/register/b;->d:Lcom/ali/user/mobile/register/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/register/b;->d:Lcom/ali/user/mobile/register/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    invoke-virtual {v1, p3}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/Account;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/register/b;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/c/c;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/b;)V

    new-instance v0, Lcom/ali/user/mobile/register/RegistParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/RegistParam;-><init>()V

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/register/Account;->getFullAreaCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/register/RegistParam;->country:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/register/Account;->getAreaName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/register/RegistParam;->countryName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getAccountForRPC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v3}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
