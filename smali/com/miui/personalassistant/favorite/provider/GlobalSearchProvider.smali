.class public Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;
.super Landroid/content/ContentProvider;
.source "GlobalSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMNS_DB:[Ljava/lang/String;

.field private static final COLUMN_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "GlobalSearchProvider"

.field private static final URI_FAV_LOGO:Ljava/lang/String; = "android.resource://com.miui.personalassistant/drawable/fav_logo_s"


# instance fields
.field private dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_icon_1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_intent_action"

    aput-object v1, v0, v6

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMNS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "url"

    aput-object v1, v0, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMNS_DB:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMN_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMN_TYPES:[I

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWordMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v5, 0x0

    const-string/jumbo v3, "(title LIKE ? OR appName LIKE ?) AND cdelete = ?"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "0"

    aput-object v2, v4, v1

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo v1, "record"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move-object v5, v8

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->dbHelper:Lcom/miui/personalassistant/favorite/db/FavoriteDBHelper;

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const-string/jumbo v3, "GlobalSearchProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    array-length v3, p4

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->COLUMNS_DB:[Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;->getWordMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;

    invoke-direct {v2, p0, v1}, Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider$Wrapper;-><init>(Lcom/miui/personalassistant/favorite/provider/GlobalSearchProvider;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
