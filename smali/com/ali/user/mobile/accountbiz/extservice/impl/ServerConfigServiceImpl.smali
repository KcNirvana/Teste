.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "ServerConfigServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;


# static fields
.field private static final GROUP_ID:Ljava/lang/String; = "server_config"

.field private static final TAG:Ljava/lang/String; = "ServerConfigServiceImpl"

.field private static msConfigService:Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->msConfigService:Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->msConfigService:Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->msConfigService:Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->msConfigService:Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "server_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/ali/user/mobile/accountbiz/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getconfig-Config-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public putConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "putConfig-Config-Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "server_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/b/a;->b()Z

    return-void
.end method
