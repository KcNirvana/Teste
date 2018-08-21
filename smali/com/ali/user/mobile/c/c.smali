.class public Lcom/ali/user/mobile/c/c;
.super Ljava/lang/Object;
.source "UserInfoDaoHelper.java"


# static fields
.field private static a:Lcom/ali/user/mobile/c/c;


# instance fields
.field private b:Lcom/ali/user/mobile/account/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ali/user/mobile/c/b;->a(Landroid/content/Context;)Lcom/ali/user/mobile/account/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/c/c;->a:Lcom/ali/user/mobile/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/c/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/c/c;->a:Lcom/ali/user/mobile/c/c;

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/c/c;->a:Lcom/ali/user/mobile/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4ece\u7f13\u5b58\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v1, v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/mobile/account/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    sget-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    :cond_3
    if-eqz v0, :cond_0

    sget-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    const-string/jumbo v2, "SecurityDbHelper"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public declared-synchronized a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u67e5\u8be2\u6240\u6709\u672c\u5730\u7528\u6237\u5217\u8868"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v1}, Lcom/ali/user/mobile/account/a/a;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "SecurityDbHelper"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u67e5\u8be2\u51fa\u672c\u5730\u7528\u6237\u5217\u8868"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v1, p1}, Lcom/ali/user/mobile/account/a/a;->a(I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "SecurityDbHelper"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v1, p1}, Lcom/ali/user/mobile/account/a/a;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "addOrUpdateUserLogin success"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "SecurityDbHelper"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SecurityDbHelper"

    const-string/jumbo v2, "\u5220\u9664\u7528\u6237\u4fe1\u606f"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/account/a/a;->c(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u5220\u9664\u7528\u6237\u4fe1\u606f\u6210\u529f  userId=%s, retState=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v2, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "SecurityDbHelper"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4ece\u7f13\u5b58\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v1, v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "SecurityDbHelper"

    const-string/jumbo v2, "\u67e5\u8be2\u51fa\u672c\u5730\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/account/a/a;->d(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    sget-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    :cond_3
    if-eqz v0, :cond_0

    sget-object v1, Lcom/ali/user/mobile/account/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    const-string/jumbo v2, "SecurityDbHelper"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SecurityDbHelper"

    const-string/jumbo v1, "updateUserAutoLoginFlagByLogonId"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/account/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/account/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4fee\u6539\u6240\u6709\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4fee\u6539\u6240\u6709\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SecurityDbHelper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SecurityDbHelper"

    const-string/jumbo v1, "updateUserAutoLoginFlag"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/account/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/account/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SecurityDbHelper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SecurityDbHelper"

    const-string/jumbo v1, "updateUserAutoLoginFlagByLogonId"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/account/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/c/c;->b:Lcom/ali/user/mobile/account/a/a;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/account/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u5931\u8d25"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SecurityDbHelper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
