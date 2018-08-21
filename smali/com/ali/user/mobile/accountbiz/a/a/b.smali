.class Lcom/ali/user/mobile/accountbiz/a/a/b;
.super Ljava/lang/Object;
.source "LogoutBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/accountbiz/a/a/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/accountbiz/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/a/a/b;->a:Lcom/ali/user/mobile/accountbiz/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "removeAllCookie error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
