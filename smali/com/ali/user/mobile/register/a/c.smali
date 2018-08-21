.class public Lcom/ali/user/mobile/register/a/c;
.super Ljava/lang/Object;
.source "StateUtils.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/register/a/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/register/a/d;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ali/user/mobile/register/a/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/ali/user/mobile/register/a/b;
    .locals 5

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "secuitySharedDataStore"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "account"

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "countryId"

    invoke-static {v0, v1, v3}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "countryName"

    invoke-static {v0, v1, v4}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    invoke-virtual {v0, v3, v2, v1}, Lcom/ali/user/mobile/register/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {p0, p2, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ali/user/mobile/d/b;->b(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1, p3}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/ali/user/mobile/register/a/b;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "secuitySharedDataStore"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;)Z

    const-string/jumbo v1, "countryId"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;)Z

    const-string/jumbo v1, "countryName"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;)Z

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "account"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/register/Account;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "countryId"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/register/Account;->getFullAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "countryName"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/register/Account;->getAreaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a/c;->a(Lcom/ali/user/mobile/accountbiz/b/a;Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/b/a;->c()V

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    const/4 v1, -0x1

    sget-object v0, Lcom/ali/user/mobile/register/a/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/register/a/c;->a:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/register/a/c;->a:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->d()V

    return-void
.end method

.method private static d()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->e()V

    new-instance v1, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/b;)V

    goto :goto_0
.end method

.method private static e()V
    .locals 3

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "secuitySharedDataStore"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;)Z

    const-string/jumbo v1, "countryId"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;)Z

    const-string/jumbo v1, "countryName"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/b/a;->c()V

    goto :goto_0
.end method
