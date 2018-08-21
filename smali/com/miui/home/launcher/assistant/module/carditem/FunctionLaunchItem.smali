.class public Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;
.super Ljava/lang/Object;
.source "FunctionLaunchItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionLaunchItem"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;


# instance fields
.field private final DB_UNIQUEID:Ljava/lang/String;

.field private final FUNCTION_SOURCE:Ljava/lang/String;

.field private final FUNCTION_USER:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFunctionListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonStringCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "function.user"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->FUNCTION_USER:Ljava/lang/String;

    const-string/jumbo v0, "function.source"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->FUNCTION_SOURCE:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->DB_UNIQUEID:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mJsonStringCache:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mFunctionListCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createData()Ljava/lang/String;
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v7

    const-string/jumbo v10, "function.source"

    const-string/jumbo v11, ""

    invoke-virtual {v7, v10, v11}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "data"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "function.user"

    const-string/jumbo v10, "function.user"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "timestamp"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/miui/home/launcher/assistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/miui/home/launcher/assistant/module/FunctionLaunchConfig;->createInitData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->saveDB(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v7, "FunctionLaunchItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createData result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_0
    move-exception v4

    :try_start_1
    const-string/jumbo v7, "FunctionLaunchItem"

    const-string/jumbo v10, "Exception"

    invoke-static {v7, v10, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/miui/home/launcher/assistant/module/FunctionLaunchConfig;->createInitData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->saveDB(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v10, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v10, v3}, Lcom/miui/home/launcher/assistant/module/FunctionLaunchConfig;->createInitData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->saveDB(Ljava/lang/String;)V

    throw v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation

    const-string/jumbo v7, "FunctionLaunchItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseJson..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mJsonStringCache:Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mFunctionListCache:Ljava/util/ArrayList;

    :goto_0
    return-object v5

    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mJsonStringCache:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/FunctionLaunchUtil;->parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v7, "FunctionLaunchItem"

    const-string/jumbo v8, "JSONException"

    invoke-static {v7, v8, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string/jumbo v7, "FunctionLaunchItem"

    const-string/jumbo v8, "parseJson list is empty return initSource"

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/module/FunctionLaunchConfig;->loadSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/module/FunctionLaunchConfig;->createInitData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->saveDB(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->parseJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "FunctionLaunchItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseJson return list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mFunctionListCache:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public getDataFromDb()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v5

    const-string/jumbo v8, "function.user"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->createData()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->createData()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string/jumbo v5, "FunctionLaunchItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDataFromDb return..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "function.user"

    const-string/jumbo v8, "function.user"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "timestamp"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string/jumbo v5, "FunctionLaunchItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDataFromDb decrypt data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/miui/home/launcher/assistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "FunctionLaunchItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDataFromDb decrypt result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v5, "FunctionLaunchItem"

    const-string/jumbo v8, "Exception"

    invoke-static {v5, v8, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method

.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->getDataFromDb()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->parseJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public saveDB(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "function.user"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    :cond_0
    return-void
.end method
