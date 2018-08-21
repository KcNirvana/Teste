.class public Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoriteDBHelper.java"


# static fields
.field public static ALLCOLUMNS:[Ljava/lang/String; = null

.field public static ALLCOLUMNS_SHOPPING:[Ljava/lang/String; = null

.field public static final COLUMN_APP_NAME:Ljava/lang/String; = "appName"

.field public static final COLUMN_AUTHOR:Ljava/lang/String; = "author"

.field public static final COLUMN_BODY:Ljava/lang/String; = "body"

.field public static final COLUMN_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final COLUMN_CATEGORY:Ljava/lang/String; = "category"

.field public static final COLUMN_CDELETE:Ljava/lang/String; = "cdelete"

.field public static final COLUMN_CDIRTY:Ljava/lang/String; = "cdirty"

.field public static final COLUMN_CID:Ljava/lang/String; = "cid"

.field public static final COLUMN_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final COLUMN_CTAG:Ljava/lang/String; = "ctag"

.field public static final COLUMN_CTIME:Ljava/lang/String; = "ctime"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_FAVOURITE:Ljava/lang/String; = "favorite"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final COLUMN_ISPARTNER:Ljava/lang/String; = "isPartner"

.field public static final COLUMN_MARK:Ljava/lang/String; = "mark"

.field public static final COLUMN_ORIGINAL_URI:Ljava/lang/String; = "original_uri"

.field public static final COLUMN_PRICE:Ljava/lang/String; = "price"

.field public static final COLUMN_PTIME:Ljava/lang/String; = "ptime"

.field public static final COLUMN_READED:Ljava/lang/String; = "readed"

.field public static final COLUMN_SOURCE:Ljava/lang/String; = "source"

.field public static final COLUMN_SOURCE_ICON:Ljava/lang/String; = "sourceIcon"

.field public static final COLUMN_STYLE_ACTIVITY:Ljava/lang/String; = "style_activity"

.field public static final COLUMN_SUMMARY:Ljava/lang/String; = "summary"

.field public static final COLUMN_TAGS:Ljava/lang/String; = "tags"

.field public static final COLUMN_THUMBNAILS:Ljava/lang/String; = "thumbnail"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_UNRETRIABLE_ERROR:Ljava/lang/String; = "unretriable_error"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final COLUMN_URL_HASH:Ljava/lang/String; = "urlHash"

.field public static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final DATABASE_NAME:Ljava/lang/String; = "favorite.db"

.field public static final DATABASE_VERSION:I = 0x5

.field public static final TABLE_NAME:Ljava/lang/String; = "record"

.field public static final TABLE_NAME_SHOPPING:Ljava/lang/String; = "shopping"

.field private static volatile mInstance:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string/jumbo v1, "author"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ptime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sourceIcon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "categories"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ctime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "mark"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "readed"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "appName"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "cid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "ctag"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "cdirty"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "cdelete"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "style_activity"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "original_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "component_name"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "isPartner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string/jumbo v1, "appName"

    aput-object v1, v0, v6

    const-string/jumbo v1, "component_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "price"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "original_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ctag"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "cdirty"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "cdelete"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->ALLCOLUMNS_SHOPPING:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mInstance:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "favorite.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createRecordTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table record (_id integer primary key autoincrement,url text, urlHash text, title text, author text, ptime text, summary text, body text, source text, sourceIcon text, categories text, tags text, ctime text, favorite integer DEFAULT 0, mark text, readed integer, appName text, thumbnail text, cid integer, ctag integer, cdirty integer DEFAULT 1, cdelete integer DEFAULT 0, date text, style_activity text, original_uri TEXT, component_name TEXT, category text DEFAULT article, unretriable_error integer DEFAULT 0, intent_action text, version integer DEFAULT 5, isPartner text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createShoppingTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "create table shopping (_id integer primary key autoincrement,url text, title text, appName text, component_name text, price text, source text, thumbnail text, original_uri text, intent_action text, unretriable_error integer DEFAULT 0, version integer DEFAULT 5, cid integer, ctag integer, cdirty integer DEFAULT 1, cdelete integer DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mInstance:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mInstance:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mInstance:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mInstance:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initDbData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/util/FavUtil;->getInitDbData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    const-string/jumbo v2, "INSERT INTO record (url,title,appName,style_activity) VALUES (?,?,?,?)"

    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getStyleActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "true"

    :goto_1
    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "false"

    goto :goto_1

    :cond_1
    return-void
.end method

.method private moveFavToShopping(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    aput-object v0, v2, v6

    const-string/jumbo v0, "title"

    aput-object v0, v2, v7

    const-string/jumbo v0, "appName"

    aput-object v0, v2, v9

    const-string/jumbo v0, "component_name"

    aput-object v0, v2, v10

    const/4 v0, 0x4

    const-string/jumbo v1, "thumbnail"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "original_uri"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "intent_action"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "cid"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "ctag"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "cdirty"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "cdelete"

    aput-object v1, v2, v0

    const-string/jumbo v3, "component_name like ? or component_name like ? or component_name like ? or component_name like ? or appName = ?"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "com.taobao.taobao%"

    aput-object v0, v4, v6

    const-string/jumbo v0, "com.tmall.wireless%"

    aput-object v0, v4, v7

    const-string/jumbo v0, "com.jingdong.app.mall%"

    aput-object v0, v4, v9

    const-string/jumbo v0, "com.xiaomi.shop%"

    aput-object v0, v4, v10

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->mContext:Landroid/content/Context;

    const v6, 0x1b0b03d1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string/jumbo v1, "record"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "shopping"

    invoke-static {v8}, Lcom/miui/personalassistant/shopping/util/ValueUtil;->cursorToValue(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "record"

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->createRecordTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->createShoppingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->initDbData(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const-string/jumbo v1, "alter table record add intent_action text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x3

    if-ge p2, v3, :cond_1

    const-string/jumbo v1, "alter table record add isPartner text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    if-ge p2, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->createShoppingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->moveFavToShopping(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    if-ne p2, v4, :cond_3

    const-string/jumbo v0, "alter table shopping add unretriable_error integer DEFAULT 0"

    const-string/jumbo v2, "alter table shopping add version integer DEFAULT 5"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
