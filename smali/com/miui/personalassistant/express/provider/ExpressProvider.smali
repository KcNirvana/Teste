.class public Lcom/miui/personalassistant/express/provider/ExpressProvider;
.super Landroid/content/ContentProvider;
.source "ExpressProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui.personalassistant.express"

.field private static final TAG:Ljava/lang/String; = "ExpressProvider"

.field public static final URI_CACHE:I = 0x1

.field public static final URI_REGION:I = 0x2

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "miui.personalassistant.express"

    const-string/jumbo v2, "cache"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "miui.personalassistant.express"

    const-string/jumbo v2, "region"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_2
    :goto_2
    return-object v0

    :sswitch_0
    const-string/jumbo v5, "requestAllExpress"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "isAuth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "setAuth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "expressList"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/express/provider/ExpressProvider$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/personalassistant/express/provider/ExpressProvider$1;-><init>(Lcom/miui/personalassistant/express/provider/ExpressProvider;Ljava/util/List;)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "isAuth"

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/express/Preferences;->isAuth(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/express/Preferences;->isPhoneBinded(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/personalassistant/express/Preferences;->setAuth(Landroid/content/Context;Z)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x465f460e -> :sswitch_1
        0x503eee7e -> :sswitch_0
        0x76480d2a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->dbHelper:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v2, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const-string/jumbo v2, "cache"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->dbHelper:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v1, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string/jumbo v1, "cache"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    const-string/jumbo v0, "ExpressProvider"

    const-string/jumbo v1, "onCreate: "

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->dbHelper:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->dbHelper:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v8

    :pswitch_0
    const-string/jumbo v1, "cache"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "region"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider;->dbHelper:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v2, Lcom/miui/personalassistant/express/provider/ExpressProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const-string/jumbo v2, "cache"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
