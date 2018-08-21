.class public Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;
.super Ljava/lang/Object;
.source "MiotDeviceUtils.java"


# static fields
.field private static final CURRENT_ACCOUNT:Ljava/lang/String; = "current_account"

.field private static final DB_VERSION:Ljava/lang/String; = "1"

.field private static final MIHOME_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.smarthome"

.field private static final MIUI_SERVICE:Ljava/lang/String; = "com.xiaomi.smarthome.service.MiuiService"

.field private static final MIUI_SERVICE_CONNTECTED:Ljava/lang/String; = "service_connected"

.field private static final USER_DEVICE_LIST:Ljava/lang/String; = "device"

.field private static mInstance:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;-><init>(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Lcom/xiaomi/miot/service/IMiuiService;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Lcom/xiaomi/miot/service/IMiuiService;)Lcom/xiaomi/miot/service/IMiuiService;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private deviceToBytes(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v2
.end method

.method public static getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/util/StockUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataCapacity(I)V

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v4, Lcom/xiaomi/miot/DeviceInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v4
.end method


# virtual methods
.method public checkBindService()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-interface {v2}, Lcom/xiaomi/miot/service/IMiuiService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.xiaomi.smarthome"

    const-string/jumbo v4, "com.xiaomi.smarthome.service.MiuiService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public getDeviceListFromDB(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.xiaomi.smarthome.1.device."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->parseFromString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public getDeviceListFromMiHome(Lcom/xiaomi/miot/service/ICallback;)V
    .locals 4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-interface {v3, p1}, Lcom/xiaomi/miot/service/IMiuiService;->getDeviceList(Lcom/xiaomi/miot/service/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->init(Landroid/content/Context;)V

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "service_connected"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$4;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$4;-><init>(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Lcom/xiaomi/miot/service/ICallback;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public insertDeviceListToDB(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->deviceToBytes(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.xiaomi.smarthome.1.device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->deviceToBytes(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public isLogin(Lcom/xiaomi/miot/service/ICallback;)V
    .locals 4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-interface {v3, p1}, Lcom/xiaomi/miot/service/IMiuiService;->isLogin(Lcom/xiaomi/miot/service/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->init(Landroid/content/Context;)V

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "service_connected"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$3;-><init>(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Lcom/xiaomi/miot/service/ICallback;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public setDeviceOn(Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V
    .locals 4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-interface {v3, p1, p2, p3}, Lcom/xiaomi/miot/service/IMiuiService;->setDeviceOn(Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mMiuiService:Lcom/xiaomi/miot/service/IMiuiService;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->init(Landroid/content/Context;)V

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "service_connected"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;-><init>(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method
