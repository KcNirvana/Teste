.class Lcom/miui/gamebooster/service/f;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic my:Lcom/miui/gamebooster/service/d;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/service/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/d;Lcom/miui/gamebooster/service/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/f;-><init>(Lcom/miui/gamebooster/service/d;)V

    return-void
.end method

.method private pT(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "gb_added_games"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "gb_added_games"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pL(Lcom/miui/gamebooster/service/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private pU(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "gb_added_videopalyer"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "gb_added_videopalyer"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pL(Lcom/miui/gamebooster/service/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private pV(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/service/F;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gamebooster/service/F;-><init>(Lcom/miui/gamebooster/service/f;Ljava/lang/String;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/service/F;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private pW(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/service/E;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/service/E;-><init>(Lcom/miui/gamebooster/service/f;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/service/E;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private pX(Ljava/lang/String;I)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pM(Lcom/miui/gamebooster/service/d;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/provider/b;->ex(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GameBoosterService"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/f;->pT(Ljava/lang/String;)V

    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/provider/b;->et(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v8

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/provider/b;->et(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_4
    const-string/jumbo v2, "GameBoosterService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    return v7

    :cond_2
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_4
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private pY(Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pM(Lcom/miui/gamebooster/service/d;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gamebooster/constants/a;->qs:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "pkgs"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/network/b;->aLx(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/f;->pT(Ljava/lang/String;)V

    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/provider/b;->et(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/provider/b;->et(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic pZ(Lcom/miui/gamebooster/service/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic qa(Lcom/miui/gamebooster/service/f;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/service/f;->pX(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic qb(Lcom/miui/gamebooster/service/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/f;->pU(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic qc(Lcom/miui/gamebooster/service/f;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/service/f;->pY(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/miui/gamebooster/service/f;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/f;->pW(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/service/f;->pV(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "already_added_game"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/a/B;->hX(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "gb_added_games"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "gb_added_games"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/f;->my:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pL(Lcom/miui/gamebooster/service/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
