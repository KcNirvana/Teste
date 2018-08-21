.class public Lmiui/assistant/index/AssistContentIndex;
.super Ljava/lang/Object;
.source "AssistContentIndex.java"

# interfaces
.implements Lmiui/assistant/index/IAssistContentIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final GROUP:Ljava/lang/String; = "group_id"

.field private static final LICENCE_FILE:Ljava/lang/String; = "licence.conf"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.miui.personalassistant.trans"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.miui.personalassistant"

.field private static final SIGN:Ljava/lang/String; = "signature"

.field private static final STAMPLENGTH:I = 0xd

.field private static final TAG:Ljava/lang/String;

.field private static final TESTSTR:Ljava/lang/String; = "1"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final UNIQUE:Ljava/lang/String; = "unique_id"

.field private static sIndex:Lmiui/assistant/index/IAssistContentIndex;


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

.field private mServiceBinded:Z

.field private mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

.field private mSign:Ljava/lang/String;

.field private mSign1:Ljava/lang/String;

.field private mTimestamp:J

.field private mTimestamp1:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmiui/assistant/index/AssistContentIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/assistant/index/AssistContentIndex;Lmiui/assistant/index/IDataTransmissionService;)Lmiui/assistant/index/IDataTransmissionService;
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    return-object p1
.end method

.method static synthetic access$202(Lmiui/assistant/index/AssistContentIndex;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/assistant/index/AssistContentIndex;->reportData(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V

    return-void
.end method

.method static synthetic access$400(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;ZLjava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/assistant/index/AssistContentIndex;->delData(Landroid/content/Context;ZLjava/util/List;Lmiui/assistant/index/IndexCallback;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    return-void
.end method

.method private bindService(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;",
            "Lmiui/assistant/index/IndexCallback;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    sget-object v3, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bindService: context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    if-nez v3, :cond_4

    new-instance v3, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    invoke-direct {v3, p0, p1, p2, p3}, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;-><init>(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V

    iput-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->getConfig(Landroid/content/Context;)V

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mSign:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bindService: sign or content is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.trans"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.personalassistant"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mSign:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "content"

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "timestamp"

    iget-wide v4, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "signature1"

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mSign1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "timestamp1"

    iget-wide v4, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp1:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can\'t bind service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SecurityException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    invoke-virtual {v2, p2}, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->addItems(Ljava/util/List;)V

    goto :goto_1
.end method

.method private bindService(Landroid/content/Context;ZLjava/lang/String;Lmiui/assistant/index/IndexCallback;)Z
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    if-nez v0, :cond_4

    new-instance v0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;-><init>(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;ZLjava/lang/String;Lmiui/assistant/index/IndexCallback;)V

    iput-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->getConfig(Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mSign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.miui.personalassistant.trans"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.miui.personalassistant"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "signature"

    iget-object v1, p0, Lmiui/assistant/index/AssistContentIndex;->mSign:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "content"

    iget-object v1, p0, Lmiui/assistant/index/AssistContentIndex;->mContent:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "timestamp"

    iget-wide v2, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp:J

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "signature1"

    iget-object v1, p0, Lmiui/assistant/index/AssistContentIndex;->mSign1:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "timestamp1"

    iget-wide v2, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp1:J

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v7, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can\'t bind service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SecurityException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    invoke-virtual {v0, p3}, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->addUniqueId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized delData(Landroid/content/Context;ZLjava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/assistant/index/IndexCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    invoke-interface {v3, v2}, Lmiui/assistant/index/IDataTransmissionService;->delAllAssistData(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    new-instance v3, Lmiui/assistant/index/IndexStatus;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/assistant/index/IndexStatus;-><init>(I)V

    invoke-interface {p4, v3}, Lmiui/assistant/index/IndexCallback;->onIndexed(Lmiui/assistant/index/IndexStatus;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    invoke-interface {v4, v2, v1}, Lmiui/assistant/index/IDataTransmissionService;->delAssistData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SecurityException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v3, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_4

    new-instance v3, Lmiui/assistant/index/IndexStatus;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lmiui/assistant/index/IndexStatus;-><init>(I)V

    invoke-interface {p4, v3}, Lmiui/assistant/index/IndexCallback;->onIndexed(Lmiui/assistant/index/IndexStatus;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private getConfig(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0xd

    const-wide/16 v4, 0x0

    :try_start_0
    iput-wide v4, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp:J

    const-string/jumbo v3, "licence.conf"

    invoke-static {p1, v3}, Lmiui/assistant/index/AppInfoUtil;->getFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0xd

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mSign:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp:J

    :cond_0
    invoke-static {p1}, Lmiui/assistant/index/AppInfoUtil;->getContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mContent:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp1:J

    const-string/jumbo v3, "licence.conf1"

    invoke-static {p1, v3}, Lmiui/assistant/index/AppInfoUtil;->getFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0xd

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/assistant/index/AssistContentIndex;->mSign1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/assistant/index/AssistContentIndex;->mTimestamp1:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "config exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultIndex()Lmiui/assistant/index/IAssistContentIndex;
    .locals 2

    const-class v1, Lmiui/assistant/index/AssistContentIndex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/assistant/index/AssistContentIndex;->sIndex:Lmiui/assistant/index/IAssistContentIndex;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/assistant/index/AssistContentIndex;

    invoke-direct {v0}, Lmiui/assistant/index/AssistContentIndex;-><init>()V

    sput-object v0, Lmiui/assistant/index/AssistContentIndex;->sIndex:Lmiui/assistant/index/IAssistContentIndex;

    :cond_0
    sget-object v0, Lmiui/assistant/index/AssistContentIndex;->sIndex:Lmiui/assistant/index/IAssistContentIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized reportData(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;",
            "Lmiui/assistant/index/IndexCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "reportData: item is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/assistant/index/AssistContentItem;

    invoke-virtual {v4}, Lmiui/assistant/index/AssistContentItem;->getDueTime()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmiui/assistant/index/AssistContentItem;->setExpirationTime(Ljava/lang/String;)V

    invoke-static {v4}, Lmiui/assistant/index/AssistContentItem;->convertToAssistContent(Lmiui/assistant/index/AssistContentItem;)Lmiui/assistant/assist/AssistContent;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "unique_id"

    invoke-virtual {v4}, Lmiui/assistant/index/AssistContentItem;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "group_id"

    invoke-virtual {v4}, Lmiui/assistant/index/AssistContentItem;->getGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "timestamp"

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v6, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmiui/assistant/index/AssistContentIndex;->mDataTransmissionService:Lmiui/assistant/index/IDataTransmissionService;

    invoke-interface {v6, v0}, Lmiui/assistant/index/IDataTransmissionService;->reportAssistData(Lmiui/assistant/assist/AssistContent;)V

    sget-object v6, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "reportData: success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v5, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SecurityException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3
    if-eqz p3, :cond_4

    :try_start_4
    new-instance v5, Lmiui/assistant/index/IndexStatus;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lmiui/assistant/index/IndexStatus;-><init>(I)V

    invoke-interface {p3, v5}, Lmiui/assistant/index/IndexCallback;->onIndexed(Lmiui/assistant/index/IndexStatus;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    sget-object v5, Lmiui/assistant/index/AssistContentIndex;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RemoteException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    new-instance v5, Lmiui/assistant/index/IndexStatus;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Lmiui/assistant/index/IndexStatus;-><init>(I)V

    invoke-interface {p3, v5}, Lmiui/assistant/index/IndexCallback;->onIndexed(Lmiui/assistant/index/IndexStatus;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    :try_start_7
    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    invoke-direct {p0, p1}, Lmiui/assistant/index/AssistContentIndex;->unbindService(Landroid/content/Context;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceBinded:Z

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/assistant/index/AssistContentIndex;->mServiceConnection:Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized batchIndexItems(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;",
            "Lmiui/assistant/index/IndexCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lmiui/assistant/index/AssistContentIndex;->bindService(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAllIndexItems(Landroid/content/Context;Lmiui/assistant/index/IndexCallback;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1, p2}, Lmiui/assistant/index/AssistContentIndex;->bindService(Landroid/content/Context;ZLjava/lang/String;Lmiui/assistant/index/IndexCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteIndexItem(Landroid/content/Context;Ljava/lang/String;Lmiui/assistant/index/IndexCallback;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/assistant/index/AssistContentIndex;->bindService(Landroid/content/Context;ZLjava/lang/String;Lmiui/assistant/index/IndexCallback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized indexItem(Landroid/content/Context;Lmiui/assistant/index/AssistContentItem;Lmiui/assistant/index/IndexCallback;)V
    .locals 2

    monitor-enter p0

    if-nez p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0, p3}, Lmiui/assistant/index/AssistContentIndex;->batchIndexItems(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
