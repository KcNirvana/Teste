.class public Lcom/miui/personalassistant/provider/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_COLUMN_DATA:Ljava/lang/String; = "data"

.field public static final DATA_COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final DATA_TABLE_CONTENTURI:Landroid/net/Uri;

.field private static final DBG:Z = true

.field private static final FUNCTION_SOURCE:Ljava/lang/String; = "function.source"

.field private static final FUNCTION_USER:Ljava/lang/String; = "function.user"

.field private static KEY_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String; = "assistant.db"

.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"

.field public static final VERSION:I = 0x8

.field private static volatile mInstance:Lcom/miui/personalassistant/provider/database/DatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "content://miui_personalassistant"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->DATA_TABLE_CONTENTURI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "function.user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "noteboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.yellowpage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "stock.user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.personalassistant.key_football"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.personalassistant.key_basketball"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "assistant.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->isFunctionContainedInList(Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v0

    return v0
.end method

.method private addShoppingToDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string/jumbo v2, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    invoke-static {p1, v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "{\"prefKey\":\"key_shopping\"}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "{\"prefKey\":\"key_favorite\"}"

    const-string/jumbo v3, "{\"prefKey\":\"key_shopping\"},{\"prefKey\":\"key_favorite\"}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end=    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    invoke-static {p1, v1, v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private clearFunctionCloudData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string/jumbo v1, "DatabaseHelper"

    const-string/jumbo v2, "clearFunctionCloudData"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, "function.source"

    invoke-static {p1, v1, v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DatabaseHelper"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private static getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12

    const/4 v0, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SELECT * FROM data WHERE package = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "data"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v4

    const-string/jumbo v10, "DatabaseHelper"

    const-string/jumbo v11, "IllegalStateException"

    invoke-static {v10, v11, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v4

    const-string/jumbo v10, "DatabaseHelper"

    const-string/jumbo v11, "RuntimeException"

    invoke-static {v10, v11, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "timestamp"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v6, 0x0

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/miui/personalassistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v10, "DatabaseHelper"

    const-string/jumbo v11, "IllegalArgumentException"

    invoke-static {v10, v11, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catch_3
    move-exception v4

    const-string/jumbo v10, "DatabaseHelper"

    const-string/jumbo v11, "JSONException"

    invoke-static {v10, v11, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    invoke-static {v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/database/DatabaseHelper;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mInstance:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mInstance:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mInstance:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mInstance:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isFunctionContainedInList(Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ")I"
        }
    .end annotation

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v3

    invoke-virtual {p2}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private static setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    const-string/jumbo v5, "package=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v10, 0x0

    :try_start_0
    const-string/jumbo v3, "data"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "data"

    aput-object v7, v4, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v10}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->closeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/miui/personalassistant/util/CryptUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "timestamp"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v11, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "DatabaseHelper"

    const-string/jumbo v3, "updateSettingDb"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v2, "DatabaseHelper"

    const-string/jumbo v3, "insertSettingDb"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "package"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unique_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "data"

    const-string/jumbo v3, "package"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_3
    const-string/jumbo v2, "DatabaseHelper"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v13}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private static setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "timestamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unique_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "group_id"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DatabaseHelper"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateFunctionData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    :try_start_0
    const-string/jumbo v10, "DatabaseHelper"

    const-string/jumbo v11, "updateFunctionData"

    invoke-static {v10, v11}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "function.user"

    invoke-static {p1, v10}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_2

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "DatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "idList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getLaunchList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "231"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "200"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_4

    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_3

    :cond_7
    const-string/jumbo v10, "DatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateFunctionData listResult just decode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/miui/personalassistant/provider/database/DatabaseHelper$1;

    invoke-direct {v10, p0, v6}, Lcom/miui/personalassistant/provider/database/DatabaseHelper$1;-><init>(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_9

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_9

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "function.user"

    invoke-static {p1, v10, v11}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "DatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateFunctionData listResult FINAL="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v10, "DatabaseHelper"

    const-string/jumbo v11, "Exception"

    invoke-static {v10, v11, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateFunctionData2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    :try_start_0
    const-string/jumbo v13, "DatabaseHelper"

    const-string/jumbo v14, "updateFunctionData2"

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_2

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v5, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {v5}, Lcom/miui/personalassistant/model/FunctionLaunch;-><init>()V

    const-string/jumbo v13, "id"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/miui/personalassistant/model/FunctionLaunch;->setId(Ljava/lang/String;)V

    const-string/jumbo v13, "isXspace"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v5, v13}, Lcom/miui/personalassistant/model/FunctionLaunch;->setXspace(Z)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v13, "DatabaseHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "selectedFunctionList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getLaunchList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/model/FunctionLaunch;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->isFunctionContainedInList(Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "210"

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string/jumbo v15, ""

    invoke-virtual {v3, v15}, Lcom/miui/personalassistant/model/FunctionLaunch;->setClassName(Ljava/lang/String;)V

    const-string/jumbo v15, "miui-music://radar?miref=PersonalAssistant_QuickStart"

    invoke-virtual {v3, v15}, Lcom/miui/personalassistant/model/FunctionLaunch;->setUri(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_3

    :cond_7
    const-string/jumbo v13, "DatabaseHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateFunctionData listResult just decode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/miui/personalassistant/provider/database/DatabaseHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/miui/personalassistant/provider/database/DatabaseHelper$2;-><init>(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;)V

    invoke-static {v10, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_a

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_a

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v13, "id"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v13

    invoke-virtual {v10, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "14"

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "52"

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v13, "DatabaseHelper"

    const-string/jumbo v14, "Exception"

    invoke-static {v13, v14, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "DatabaseHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateFunctionData listResult FINAL="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->clearFunctionCloudData(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateFunctionData3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    :try_start_0
    const-string/jumbo v13, "DatabaseHelper"

    const-string/jumbo v14, "updateFunctionData3"

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_2

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v5, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {v5}, Lcom/miui/personalassistant/model/FunctionLaunch;-><init>()V

    const-string/jumbo v13, "id"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/miui/personalassistant/model/FunctionLaunch;->setId(Ljava/lang/String;)V

    const-string/jumbo v13, "isXspace"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v5, v13}, Lcom/miui/personalassistant/model/FunctionLaunch;->setXspace(Z)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v13, "DatabaseHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "selectedFunctionList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getLaunchList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/model/FunctionLaunch;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->isFunctionContainedInList(Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "13"

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_3

    :cond_7
    const-string/jumbo v13, "DatabaseHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateFunctionData listResult just decode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;-><init>(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;)V

    invoke-static {v10, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_9

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_9

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v13, "id"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v13

    invoke-virtual {v10, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "DatabaseHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateFunctionData listResult FINAL="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->clearFunctionCloudData(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v13, "DatabaseHelper"

    const-string/jumbo v14, "Exception"

    invoke-static {v13, v14, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateFunctionWXFriends(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    :try_start_0
    const-string/jumbo v12, "DatabaseHelper"

    const-string/jumbo v13, "updateFunctionWXFriends"

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v12, "DatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "array="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getLaunchList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "66"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_7

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v12, "id"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "66"

    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "67"

    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const-string/jumbo v12, "className"

    invoke-virtual {v8, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "DatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateFunctionData listResult just decode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v12, "DatabaseHelper"

    const-string/jumbo v13, "Exception"

    invoke-static {v12, v13, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateIQiyiHistory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    :try_start_0
    const-string/jumbo v12, "DatabaseHelper"

    const-string/jumbo v13, "updateIQiyiHistory"

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v12, "DatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "array="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getLaunchList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "150"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "150"

    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "className"

    invoke-virtual {v9, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "function.user"

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "DatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateIQiyiHistory listResult just decode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v12, "DatabaseHelper"

    const-string/jumbo v13, "Exception"

    invoke-static {v12, v13, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public copyData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    sget-object v0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->KEY_LIST:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    sget-object v9, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->DATA_TABLE_CONTENTURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->queryModuleDb(Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unique_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "timestamp"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->setDbData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_1
    const-string/jumbo v0, "DatabaseHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string/jumbo v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createDataTable..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT COLLATE LOCALIZED, unique_id TEXT, group_id TEXT, timestamp BIGINT, data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS data_idx ON data (package, unique_id, group_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->copyData(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string/jumbo v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDowngrade Database down grade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string/jumbo v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade Database up grade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->copyData(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->clearFunctionCloudData(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->updateFunctionData(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->updateFunctionWXFriends(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->updateIQiyiHistory(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->addShoppingToDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    const/4 v0, 0x7

    if-ge p2, v0, :cond_5

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->updateFunctionData2(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const/16 v0, 0x8

    if-ge p2, v0, :cond_6

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->updateFunctionData3(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    return-void
.end method
