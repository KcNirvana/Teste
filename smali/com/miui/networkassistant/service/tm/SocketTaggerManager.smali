.class Lcom/miui/networkassistant/service/tm/SocketTaggerManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MIN_TAG_ID:I = 0x1

.field private static final MSG_SAVE_TAGS:I

.field private static final PKG_TO_TAG_MAP_FILE_PATH:Ljava/lang/String;

.field private static final SOCKET_TAGGER_SERVER_SOCKET_FD_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->SOCKET_TAGGER_SERVER_SOCKET_FD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->saveTagMap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtagd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->SOCKET_TAGGER_SERVER_SOCKET_FD_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/pkgtags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->PKG_TO_TAG_MAP_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;-><init>(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->loadTagMap()V

    new-instance v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;-><init>(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$SocketTaggerServerThread;->start()V

    return-void
.end method

.method private declared-synchronized saveTagMap()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveTagMap"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mSecurityManager:Lmiui/security/SecurityManager;

    sget-object v2, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->PKG_TO_TAG_MAP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveTagMapDelay()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method declared-synchronized loadTagMap()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mSecurityManager:Lmiui/security/SecurityManager;

    sget-object v1, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->PKG_TO_TAG_MAP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-direct {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setTagId(Lcom/miui/networkassistant/model/AppInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/miui/networkassistant/model/AppInfo;->tagId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get1(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get1(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get1(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->mTaggerData:Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;->-get0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager$TaggerData;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->saveTagMapDelay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
