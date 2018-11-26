.class public Lcom/miui/antivirus/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final synthetic avW:[I

.field private static avx:Lcom/miui/antivirus/a;


# instance fields
.field private final avA:Landroid/content/pm/IPackageDeleteObserver$Stub;

.field private avB:Ljava/lang/Long;

.field private avC:J

.field private avD:Lorg/json/JSONArray;

.field private avE:Lorg/json/JSONArray;

.field private avF:Lcom/miui/antivirus/model/b;

.field private avG:J

.field private avH:Z

.field private avI:J

.field private avJ:Lcom/miui/antivirus/model/b;

.field private avK:I

.field private avL:Ljava/util/Map;

.field private avM:Lcom/miui/guardprovider/VirusObserver;

.field private avN:Lcom/miui/guardprovider/VirusObserver;

.field private avO:J

.field private avP:Ljava/util/Map;

.field private avQ:Ljava/util/ArrayList;

.field private avR:Ljava/util/Map;

.field private final avS:Ljava/lang/Object;

.field private avT:J

.field private final avU:Ljava/lang/Object;

.field private avV:Lcom/miui/antivirus/model/d;

.field private avy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private avz:Lcom/miui/antivirus/d;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/antivirus/n;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/n;-><init>(Lcom/miui/antivirus/a;)V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avN:Lcom/miui/guardprovider/VirusObserver;

    new-instance v0, Lcom/miui/antivirus/o;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/o;-><init>(Lcom/miui/antivirus/a;)V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avM:Lcom/miui/guardprovider/VirusObserver;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    new-instance v0, Lcom/miui/antivirus/model/d;

    invoke-direct {v0}, Lcom/miui/antivirus/model/d;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    iput-boolean v4, p0, Lcom/miui/antivirus/a;->avH:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avS:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avU:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/miui/antivirus/a;->avT:J

    iput-wide v2, p0, Lcom/miui/antivirus/a;->avI:J

    iput-wide v2, p0, Lcom/miui/antivirus/a;->avG:J

    iput-wide v2, p0, Lcom/miui/antivirus/a;->avO:J

    iput-wide v2, p0, Lcom/miui/antivirus/a;->avC:J

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avE:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avD:Lorg/json/JSONArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avQ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avy:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/miui/antivirus/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/d;-><init>(Lcom/miui/antivirus/a;Lcom/miui/antivirus/d;)V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avz:Lcom/miui/antivirus/d;

    new-instance v0, Lcom/miui/antivirus/p;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/p;-><init>(Lcom/miui/antivirus/a;)V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avA:Landroid/content/pm/IPackageDeleteObserver$Stub;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private aBI()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/k;->aIu(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v3, Lcom/miui/antivirus/model/b;

    invoke-direct {v3}, Lcom/miui/antivirus/model/b;-><init>()V

    iget-object v4, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->setAppLabel(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->setPkgName(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->aqy(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->aqx(Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;)V

    iget-object v4, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/antivirus/i;->aDk()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v8, "packageName"

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "versionCode"

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "signatureHash"

    iget-object v9, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/miui/antivirus/utils/n;->avc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "installerPackage"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "timeStamp"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "nonce"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/antivirus/a;->avE:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "Exception in get foreground installed scanning packages: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "PaySafetyCheckManager"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private aBJ()V
    .locals 10

    iget-object v0, p0, Lcom/miui/antivirus/a;->avQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avD:Lorg/json/JSONArray;

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/k;->aIw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/miui/common/b/k;->aIn(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/antivirus/a;->avQ:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/antivirus/i;->aDk()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string/jumbo v7, "packageName"

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "versionCode"

    iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "signatureHash"

    iget-object v8, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/miui/antivirus/utils/n;->avc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "installerPackage"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "timeStamp"

    invoke-virtual {v6, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "nonce"

    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/miui/antivirus/a;->avD:Lorg/json/JSONArray;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "Exception in get background scanning packages :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "PaySafetyCheckManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method private aBK()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v1, "external"

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "date_modified"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "_data LIKE \'%.apk\'"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/common/b/k;->aIv(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_2
    :try_start_2
    new-instance v3, Lcom/miui/antivirus/model/b;

    invoke-direct {v3}, Lcom/miui/antivirus/model/b;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/b;->setAppLabel(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/model/b;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/antivirus/model/b;->aqy(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awd:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/model/b;->aqx(Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;)V

    iget-object v2, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v2, "PaySafetyCheckManager"

    const-string/jumbo v3, "Exception in get foreground scanning apks: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private aBO(Lcom/miui/antivirus/b;)V
    .locals 6

    const-wide/high16 v4, 0x20000000000000L

    new-instance v1, Lcom/miui/antivirus/model/b;

    invoke-direct {v1}, Lcom/miui/antivirus/model/b;-><init>()V

    sget-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/model/b;->aqz(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/miui/permcenter/e;->SF(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/model/b;->aqK(Z)V

    invoke-interface {p1, v1}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/model/b;->aqK(Z)V

    invoke-interface {p1, v1}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    return-void
.end method

.method private aBQ()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private aBR()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avE:Lorg/json/JSONArray;

    return-void
.end method

.method private aBY(Ljava/lang/String;)Lcom/miui/antivirus/model/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    return-object v0
.end method

.method private aCE()V
    .locals 5

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/antivirus/i;->aDn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/utils/m;->auZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDo()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDp()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/antivirus/a;->aCd(Ljava/lang/Boolean;)I

    move-result v3

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_3

    :goto_1
    add-int v0, v3, v1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/miui/antivirus/a;->avK:I

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private aCI(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDq()Z

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apM([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "startVirusScanTask Background: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aCJ(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;Lcom/miui/antivirus/b;J)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/miui/antivirus/a;->avS:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p5

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/miui/antivirus/i;->aDq()Z

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apM([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I

    move-result v0

    const-string/jumbo v2, "PaySafetyCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virusCheck  taskId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, v0}, Lcom/miui/antivirus/b;->ayz(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "startVirusScanTask Foreground: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aCL(Lcom/miui/antivirus/c;)V
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/i;->aDo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/a;->checkSystemRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/miui/antivirus/c;->aBE(I)V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "background scan : root risk !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method

.method private aCM(Lcom/miui/antivirus/b;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/antivirus/i;->aDo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/a;->checkSystemRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/model/c;

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/c;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/c;->aqY(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/c;->aqZ(Z)V

    invoke-interface {p1, v0}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    invoke-interface {p1}, Lcom/miui/antivirus/b;->ayx()V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/e;->aHx(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/antivirus/model/c;

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/c;-><init>(Lcom/miui/antivirus/model/AppModel$CardType;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/c;->aqZ(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/c;->aqY(Z)V

    invoke-interface {p1, v0}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    :cond_1
    invoke-interface {p1}, Lcom/miui/antivirus/b;->ayx()V

    return-void
.end method

.method private aCN(Lcom/miui/antivirus/c;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/miui/antivirus/i;->aDn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/miui/antivirus/c;->aBH()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/utils/m;->ava(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/miui/antivirus/c;->aBD()V

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/miui/antivirus/c;->aBH()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/utils/m;->auZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/antivirus/i;->aDr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi_type_approve"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi_item_encryption"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi_item_fake"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi_item_dns"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi_item_arp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/antivirus/c;->aBE(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "wifi_item_connection"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/miui/antivirus/c;->aBD()V

    :cond_4
    const-string/jumbo v0, "wifi_item_encryption"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wifi_item_fake"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wifi_item_dns"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wifi_item_arp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/miui/antivirus/c;->aBE(I)V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "background scan : wifi risk !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action_start_wifi_scan_task"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "build_wifi_cache_immediately"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method private aCO(Lcom/miui/antivirus/b;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/antivirus/i;->aDn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/antivirus/utils/m;->auZ(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alC:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alC:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-interface {p1, v0, v3}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alE:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alD:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alF:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alB:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action_start_wifi_scan_task"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "build_wifi_cache_immediately"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alC:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alE:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    const-string/jumbo v2, "wifi_item_encryption"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alD:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    const-string/jumbo v2, "wifi_item_dns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alF:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    const-string/jumbo v2, "wifi_item_fake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V

    sget-object v0, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alB:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    const-string/jumbo v2, "wifi_item_arp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/miui/antivirus/b;->ayu(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method static synthetic aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aCQ(Lcom/miui/antivirus/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic aCS(Lcom/miui/antivirus/a;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic aCT(Lcom/miui/antivirus/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avS:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aCU(Lcom/miui/antivirus/a;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic aCV(Lcom/miui/antivirus/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/antivirus/a;->avC:J

    return-wide p1
.end method

.method static synthetic aCW(Lcom/miui/antivirus/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/antivirus/a;->avO:J

    return-wide p1
.end method

.method static synthetic aCX(Lcom/miui/antivirus/a;Ljava/lang/String;)Lcom/miui/antivirus/model/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/a;->aBY(Ljava/lang/String;)Lcom/miui/antivirus/model/b;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic aCY()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/a;->avW:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/a;->avW:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->values()[Lcom/miui/antivirus/model/WifiModel$WifiItems;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alB:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alC:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alD:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alE:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/WifiModel$WifiItems;->alF:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/antivirus/a;->avW:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private aCa(Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\\"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private aCt()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antivirus/a;->aBR()V

    invoke-direct {p0}, Lcom/miui/antivirus/a;->aBQ()V

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBX()V

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBS()V

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBU()V

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBW()V

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBV()V

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBT()V

    iget-object v0, p0, Lcom/miui/antivirus/a;->avy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/a;->aBI()V

    invoke-direct {p0}, Lcom/miui/antivirus/a;->aBK()V

    invoke-direct {p0}, Lcom/miui/antivirus/a;->aCE()V

    return-void
.end method

.method private checkSystemRoot()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "/system/bin/"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "/system/xbin/"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "/system/sbin/"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string/jumbo v0, "/sbin/"

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string/jumbo v0, "/vendor/bin/"

    const/4 v3, 0x4

    aput-object v0, v2, v3

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PaySafetyCheckManager"

    const-string/jumbo v3, "checkSystemRoot : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/antivirus/a;
    .locals 2

    const-class v1, Lcom/miui/antivirus/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/antivirus/a;->avx:Lcom/miui/antivirus/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/a;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antivirus/a;->avx:Lcom/miui/antivirus/a;

    :cond_0
    sget-object v0, Lcom/miui/antivirus/a;->avx:Lcom/miui/antivirus/a;
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
.method public aBL(Lcom/miui/antivirus/model/b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aBM(Lcom/miui/antivirus/model/b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aBN(Lcom/miui/guardprovider/aidl/IAntiVirusServer;ILcom/miui/antivirus/b;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/miui/antivirus/a;->avS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    invoke-interface {p1, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apE(I)V

    invoke-interface {p3}, Lcom/miui/antivirus/b;->ayy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aBP(Lcom/miui/antivirus/model/b;)V
    .locals 6

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqJ()Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/a/d/a/a;->btX(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/common/b/k;->aIx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/a/d/a/a;->btY(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/a;->avA:Landroid/content/pm/IPackageDeleteObserver$Stub;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/d/a/a;->btZ(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/r;->aJn(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "cleanupVirus : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public aBS()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/a;->avF:Lcom/miui/antivirus/model/b;

    return-void
.end method

.method public aBT()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/a;->avH:Z

    return-void
.end method

.method public aBU()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    return-void
.end method

.method public aBV()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public aBW()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public aBX()V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/model/d;

    invoke-direct {v0}, Lcom/miui/antivirus/model/d;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    return-void
.end method

.method public aBZ()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCo()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCm()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_1
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method

.method public aCA(Lcom/miui/antivirus/model/b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aCB(Lcom/miui/antivirus/model/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/a;->avF:Lcom/miui/antivirus/model/b;

    return-void
.end method

.method public aCC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/a;->avH:Z

    return-void
.end method

.method public aCD(Lcom/miui/antivirus/model/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    return-void
.end method

.method public aCF(Lcom/miui/antivirus/model/WifiModel$WifiItems;Z)V
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/a;->aCY()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/WifiModel$WifiItems;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, p2}, Lcom/miui/antivirus/model/d;->arc(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->ard(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, p2}, Lcom/miui/antivirus/model/d;->are(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, p2}, Lcom/miui/antivirus/model/d;->arf(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, p2}, Lcom/miui/antivirus/model/d;->arg(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized aCG(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/antivirus/c;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lcom/miui/antivirus/c;->aBG()V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/miui/antivirus/a;->aCN(Lcom/miui/antivirus/c;)V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "SYSTEM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/miui/antivirus/a;->aCL(Lcom/miui/antivirus/c;)V

    invoke-virtual {p0, p2}, Lcom/miui/antivirus/a;->aCx(Lcom/miui/antivirus/c;)V

    invoke-direct {p0}, Lcom/miui/antivirus/a;->aBJ()V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "VIRUS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/a;->avM:Lcom/miui/guardprovider/VirusObserver;

    invoke-virtual {v0, p2}, Lcom/miui/guardprovider/VirusObserver;->aqf(Lcom/miui/antivirus/c;)V

    iget-object v0, p0, Lcom/miui/antivirus/a;->avQ:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/antivirus/a;->avQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/a;->avM:Lcom/miui/guardprovider/VirusObserver;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/antivirus/a;->aCI(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;)V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "SIGN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/antivirus/f;

    iget-object v1, p0, Lcom/miui/antivirus/a;->avD:Lorg/json/JSONArray;

    invoke-direct {v0, p0, p2, v1}, Lcom/miui/antivirus/f;-><init>(Lcom/miui/antivirus/a;Lcom/miui/antivirus/c;Lorg/json/JSONArray;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/antivirus/a;->avz:Lcom/miui/antivirus/d;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/antivirus/d;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "Exception in active scan :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aCH(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/antivirus/b;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/antivirus/a;->aCt()V

    iget-object v1, p0, Lcom/miui/antivirus/a;->avS:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    iget-object v0, p0, Lcom/miui/antivirus/a;->avB:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p2}, Lcom/miui/antivirus/b;->ayB()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ayr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ays()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_5
    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alV:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-interface {p2, v2}, Lcom/miui/antivirus/b;->ayA(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V

    invoke-direct {p0, p2}, Lcom/miui/antivirus/a;->aCO(Lcom/miui/antivirus/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/miui/antivirus/a;->avT:J

    :cond_1
    invoke-interface {p2}, Lcom/miui/antivirus/b;->ayr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ays()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_6
    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "system"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alU:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-interface {p2, v2}, Lcom/miui/antivirus/b;->ayA(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V

    invoke-direct {p0, p2}, Lcom/miui/antivirus/a;->aCM(Lcom/miui/antivirus/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/miui/antivirus/a;->avI:J

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ayr()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ays()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :cond_3
    :try_start_7
    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "sms auth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alT:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-interface {p2, v2}, Lcom/miui/antivirus/b;->ayA(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V

    invoke-virtual {p0, p2}, Lcom/miui/antivirus/a;->aCy(Lcom/miui/antivirus/b;)V

    invoke-direct {p0, p2}, Lcom/miui/antivirus/a;->aBO(Lcom/miui/antivirus/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/miui/antivirus/a;->avG:J

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ayr()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ays()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_8
    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "virus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alS:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-interface {p2, v0}, Lcom/miui/antivirus/b;->ayA(Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V

    iget-object v0, p0, Lcom/miui/antivirus/a;->avN:Lcom/miui/guardprovider/VirusObserver;

    invoke-virtual {v0, p2}, Lcom/miui/guardprovider/VirusObserver;->aqe(Lcom/miui/antivirus/b;)V

    iget-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/antivirus/a;->avN:Lcom/miui/guardprovider/VirusObserver;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/antivirus/a;->aCJ(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;Lcom/miui/antivirus/b;J)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ayr()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/miui/antivirus/b;->ays()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    :try_start_9
    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "sign"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/antivirus/e;

    iget-object v1, p0, Lcom/miui/antivirus/a;->avE:Lorg/json/JSONArray;

    invoke-direct {v0, p0, p2, v1}, Lcom/miui/antivirus/e;-><init>(Lcom/miui/antivirus/a;Lcom/miui/antivirus/b;Lorg/json/JSONArray;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "PaySafetyCheckManager"

    const-string/jumbo v2, "Exception : error = "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0
.end method

.method public aCK(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/a;->avU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/antivirus/utils/k;

    invoke-direct {v0}, Lcom/miui/antivirus/utils/k;-><init>()V

    new-instance v2, Lcom/miui/guardprovider/WifiDetectObserver;

    iget-object v3, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/miui/guardprovider/WifiDetectObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/miui/guardprovider/WifiDetectObserver;->aqg(Lcom/miui/antivirus/utils/k;)V

    invoke-virtual {v0, p1, v2}, Lcom/miui/antivirus/utils/k;->auX(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/guardprovider/WifiDetectObserver;)V

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v2, "start wifi scan task ..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aCb(I)Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avY:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avZ:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avX:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public aCc()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->arl()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCo()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCm()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avF:Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/miui/antivirus/a;->avH:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    add-int/2addr v0, v2

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4
.end method

.method public aCd(Ljava/lang/Boolean;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/a;->avR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/a;->avE:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public aCe()Lcom/miui/antivirus/model/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avF:Lcom/miui/antivirus/model/b;

    return-object v0
.end method

.method public aCf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/a;->avH:Z

    return v0
.end method

.method public aCg()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avF:Lcom/miui/antivirus/model/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/antivirus/a;->avH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_1
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method

.method public aCh()Lcom/miui/antivirus/model/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    return-object v0
.end method

.method public aCi()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    check-cast v0, Lcom/miui/antivirus/model/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/c;->ara()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    check-cast v0, Lcom/miui/antivirus/model/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/c;->arb()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_2
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method

.method public aCj()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/antivirus/a;->avT:J

    iget-wide v2, p0, Lcom/miui/antivirus/a;->avI:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/antivirus/a;->avG:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/antivirus/a;->avO:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/antivirus/a;->avC:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public aCk()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/a;->avK:I

    return v0
.end method

.method public aCl()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCs()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCi()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCg()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBZ()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCs()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aCi()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/antivirus/a;->aBZ()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method

.method public aCm()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public aCn()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public aCo()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public aCp()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public aCq()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/a;->avP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqH()Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    move-result-object v0

    sget-object v3, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avZ:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public aCr()Lcom/miui/antivirus/model/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    return-object v0
.end method

.method public aCs()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->arh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->ari()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->arj()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->ark()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/a;->avV:Lcom/miui/antivirus/model/d;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->isEncrypted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0

    :cond_2
    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    return-object v0
.end method

.method public aCu(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/a/d/a/a;->btX(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/a/d/a/a;->btY(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/q;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/q;-><init>(Lcom/miui/antivirus/a;)V

    invoke-static {v0, p1, v1, v5}, Lcom/miui/a/d/a/a;->btZ(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    return-void
.end method

.method public aCv()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    check-cast v0, Lcom/miui/antivirus/model/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/c;->ara()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aCw()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/a;->avJ:Lcom/miui/antivirus/model/b;

    check-cast v0, Lcom/miui/antivirus/model/c;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/c;->arb()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aCx(Lcom/miui/antivirus/c;)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "smsto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/a;->aCa(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.jeejen.family.miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lcom/miui/antivirus/c;->aBE(I)V

    const-string/jumbo v1, "PaySafetyCheckManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "background scan : default messaging app risk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public aCy(Lcom/miui/antivirus/b;)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "smsto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/a;->aCa(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.jeejen.family.miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/antivirus/model/b;

    invoke-direct {v2}, Lcom/miui/antivirus/model/b;-><init>()V

    sget-object v3, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqx(Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;)V

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/model/b;->setPkgName(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/miui/antivirus/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/model/b;->setAppLabel(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/b;->aqy(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/b;->aqz(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->all:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    invoke-interface {p1, v2}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    :cond_0
    invoke-interface {p1}, Lcom/miui/antivirus/b;->ayv()V

    :cond_1
    return-void
.end method

.method public aCz(Lcom/miui/antivirus/model/b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/a;->avL:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
