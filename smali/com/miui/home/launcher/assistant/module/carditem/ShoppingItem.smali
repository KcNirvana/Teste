.class public Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;
.super Ljava/lang/Object;
.source "ShoppingItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static ALL_COLUMNS:[Ljava/lang/String; = null

.field private static final COLUMN_APPNAME:Ljava/lang/String; = "appName"

.field private static final COLUMN_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field private static final COLUMN_ORIGINAL_URI:Ljava/lang/String; = "original_uri"

.field public static final COLUMN_PRICE:Ljava/lang/String; = "price"

.field private static final COLUMN_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field private static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final CURSOR_NO_DELETE:Ljava/lang/String; = "0"

.field private static final SQL_DELETE:Ljava/lang/String; = "cdelete = ?"

.field public static final VIEW_TYPE:Ljava/lang/String; = "ShoppingItem"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://favorite/shopping"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "component_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "price"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "original_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "intent_action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private cursorToRecord(Landroid/database/Cursor;)Lcom/miui/home/launcher/assistant/module/model/Shopping;
    .locals 3

    new-instance v0, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/model/Shopping;-><init>()V

    const-string/jumbo v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v2, "price"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setPrice(Ljava/lang/String;)V

    const-string/jumbo v2, "appName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setAppName(Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v2, "component_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setComponentName(Ljava/lang/String;)V

    const-string/jumbo v2, "intent_action"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setIntentAction(Ljava/lang/String;)V

    const-string/jumbo v2, "original_uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setOriginalUri(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnail"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->setThumbnails([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

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
.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Shopping;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->ALL_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "cdelete = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v10, "0"

    aput-object v10, v4, v5

    const-string/jumbo v5, "_id DESC limit 3"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->cursorToRecord(Landroid/database/Cursor;)Lcom/miui/home/launcher/assistant/module/model/Shopping;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v1, "ShoppingItem"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    :try_start_5
    monitor-exit p0

    return-object v8

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_7
    const-string/jumbo v1, "ShoppingItem"

    const-string/jumbo v2, "IllegalStateException"

    invoke-static {v1, v2, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    :catch_2
    move-exception v7

    :try_start_8
    const-string/jumbo v1, "ShoppingItem"

    const-string/jumbo v2, "IllegalStateException"

    invoke-static {v1, v2, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :try_start_9
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_2
    :try_start_a
    throw v1

    :catch_3
    move-exception v7

    const-string/jumbo v2, "ShoppingItem"

    const-string/jumbo v3, "IllegalStateException"

    invoke-static {v2, v3, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method
