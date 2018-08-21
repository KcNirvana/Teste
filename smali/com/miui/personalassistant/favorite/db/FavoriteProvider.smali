.class public Lcom/miui/personalassistant/favorite/db/FavoriteProvider;
.super Landroid/content/ContentProvider;
.source "FavoriteProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "favorite"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_SHOPPING:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "FavoriteProvider"

.field private static final RECORD:I = 0x1

.field private static final RECORD_ID:I = 0x2

.field private static final SHOPPING:I = 0x3

.field private static final SHOPPING_ID:I = 0x4

.field public static final SYNCTOKEN:Ljava/lang/String; = "FAVORITE_SYNCTOKEN"

.field private static final UPDATE:I = 0x5

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

.field private volatile mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "content://favorite/record"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://favorite/shopping"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->CONTENT_URI_SHOPPING:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "favorite"

    const-string/jumbo v2, "record"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "favorite"

    const-string/jumbo v2, "record/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "favorite"

    const-string/jumbo v2, "shopping"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "favorite"

    const-string/jumbo v2, "shopping/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "favorite"

    const-string/jumbo v2, "update"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "(%s=%s)"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, "%s AND (%s=%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getCloudSyncToken()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "FAVORITE_SYNCTOKEN"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCloudSyncToken(Landroid/content/ContentValues;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "FAVORITE_SYNCTOKEN"

    const-string/jumbo v0, "FAVORITE_SYNCTOKEN"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, -0x1

    sget-boolean v5, Lcom/miui/personalassistant/model/SettingCardManager;->sIsKK:Z

    if-eqz v5, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "FavoriteProvider"

    const-string/jumbo v6, "all delete..."

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, -0x1

    :try_start_0
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v6}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v6, "FavoriteProvider"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    move v0, v4

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "record"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/miui/personalassistant/provider/AssistantProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "shopping"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "_id"

    invoke-direct {p0, p2, v4, v1}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "record"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "_id"

    invoke-direct {p0, p2, v4, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "shopping"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "FavoriteProvider"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "content://favorite/record"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    sget-boolean v4, Lcom/miui/personalassistant/model/SettingCardManager;->sIsKK:Z

    if-eqz v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "FavoriteProvider"

    const-string/jumbo v5, "all delete..."

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v5}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-wide/16 v0, -0x1

    sget-object v5, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v5, "FavoriteProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    :try_start_1
    const-string/jumbo v5, "record"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :goto_1
    :pswitch_1
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_2

    const-string/jumbo v5, "FavoriteProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :pswitch_2
    const-string/jumbo v5, "shopping"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/miui/personalassistant/provider/AssistantProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v2, Lcom/miui/personalassistant/model/SettingCardManager;->sIsKK:Z

    if-eqz v2, :cond_0

    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v11, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object v11

    :cond_0
    const-string/jumbo v2, "FAVORITE_SYNCTOKEN"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "FAVORITE_SYNCTOKEN"

    aput-object v4, v2, v3

    invoke-direct {v11, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getCloudSyncToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "FavoriteProvider"

    const-string/jumbo v3, "all delete..."

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    iget-object v14, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-object v2, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "FavoriteProvider"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "record"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v10, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    monitor-exit v14

    move-object v11, v10

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v2, "shopping"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v12}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v2, "record"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v13}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v2, "shopping"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, -0x1

    sget-boolean v5, Lcom/miui/personalassistant/model/SettingCardManager;->sIsKK:Z

    if-eqz v5, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v5, "FAVORITE_SYNCTOKEN"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->setCloudSyncToken(Landroid/content/ContentValues;)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "FavoriteProvider"

    const-string/jumbo v6, "all delete..."

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, -0x1

    :try_start_0
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v6}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v6, "FavoriteProvider"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    move v0, v4

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "record"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/miui/personalassistant/provider/AssistantProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "shopping"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "_id"

    invoke-direct {p0, p3, v4, v1}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v4, "record"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "_id"

    invoke-direct {p0, p3, v4, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->addSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v4, "shopping"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
