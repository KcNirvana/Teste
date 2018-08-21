.class public Lcom/ali/user/mobile/a/a;
.super Ljava/lang/Object;
.source "AliuserLoginContext.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Lcom/ali/user/mobile/g/b;

.field private static f:Lcom/ali/user/mobile/login/a/a;

.field private static g:Lcom/ali/user/mobile/h/b;

.field private static h:Lcom/ali/user/mobile/h/c;

.field private static i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/ali/user/mobile/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/alipay/android/phone/inside/framework/service/b;

.field private static k:Lcom/alipay/android/phone/inside/framework/service/b;

.field private static l:Lcom/ali/user/mobile/login/f;

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ali/user/mobile/a/a;->a:Z

    sput-boolean v0, Lcom/ali/user/mobile/a/a;->b:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/mobile/a/a;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->c()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/a/a;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/a/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Lcom/ali/user/mobile/a/b;)V
    .locals 5

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "stack push auth"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "stack size is %s after push: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    sget-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lcom/ali/user/mobile/g/b;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/a/a;->e:Lcom/ali/user/mobile/g/b;

    return-void
.end method

.method public static a(Lcom/ali/user/mobile/login/a/a;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/a/a;->f:Lcom/ali/user/mobile/login/a/a;

    return-void
.end method

.method public static a(Lcom/ali/user/mobile/login/f;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/a/a;->l:Lcom/ali/user/mobile/login/f;

    return-void
.end method

.method public static a(Lcom/alipay/android/phone/inside/framework/service/b;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/a/a;->j:Lcom/alipay/android/phone/inside/framework/service/b;

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    sput-object p0, Lcom/ali/user/mobile/a/a;->d:Ljava/lang/Class;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can login come back\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/ali/user/mobile/a/a;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/ali/user/mobile/a/a;->a:Z

    return v0
.end method

.method public static b(Lcom/alipay/android/phone/inside/framework/service/b;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/a/a;->k:Lcom/alipay/android/phone/inside/framework/service/b;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/ali/user/mobile/a/a;->b:Z

    return v0
.end method

.method public static c()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "config login clazz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ali/user/mobile/a/a;->d:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/a/a;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public static d()Lcom/ali/user/mobile/g/b;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a/a;->e:Lcom/ali/user/mobile/g/b;

    return-object v0
.end method

.method public static e()Lcom/ali/user/mobile/login/a/a;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a/a;->f:Lcom/ali/user/mobile/login/a/a;

    return-object v0
.end method

.method public static f()Lcom/ali/user/mobile/h/b;
    .locals 3

    const-class v1, Lcom/ali/user/mobile/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/a/a;->g:Lcom/ali/user/mobile/h/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/h/a/a;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ali/user/mobile/h/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/a/a;->g:Lcom/ali/user/mobile/h/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ali/user/mobile/a/a;->g:Lcom/ali/user/mobile/h/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g()Lcom/ali/user/mobile/h/c;
    .locals 3

    const-class v1, Lcom/ali/user/mobile/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/a/a;->h:Lcom/ali/user/mobile/h/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/h/a/b;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ali/user/mobile/h/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/a/a;->h:Lcom/ali/user/mobile/h/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ali/user/mobile/a/a;->h:Lcom/ali/user/mobile/h/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static h()Lcom/ali/user/mobile/a/b;
    .locals 5

    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "stack size is %s when get: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/a/b;

    const-string/jumbo v1, "AliuserLoginContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLoginHandler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i()Lcom/alipay/android/phone/inside/framework/service/b;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a/a;->j:Lcom/alipay/android/phone/inside/framework/service/b;

    return-object v0
.end method

.method public static j()Lcom/alipay/android/phone/inside/framework/service/b;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a/a;->k:Lcom/alipay/android/phone/inside/framework/service/b;

    return-object v0
.end method

.method public static k()Lcom/ali/user/mobile/login/f;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a/a;->l:Lcom/ali/user/mobile/login/f;

    return-object v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/ali/user/mobile/a/a;->m:Z

    return v0
.end method

.method public static m()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/ali/user/mobile/a/a;->b:Z

    sput-boolean v2, Lcom/ali/user/mobile/a/a;->a:Z

    sget-object v0, Lcom/ali/user/mobile/a/a;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-static {}, Lcom/ali/user/mobile/e/g;->a()V

    return-void
.end method

.method private static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.ali.user.mobile.login.ui.AliUserLoginActivity"

    sput-object v0, Lcom/ali/user/mobile/a/a;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
