.class public Lcom/miui/personalassistant/provider/PersonalAssistantProvider;
.super Landroid/content/ContentProvider;
.source "PersonalAssistantProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/provider/PersonalAssistantProvider$SqlArguments;
    }
.end annotation


# static fields
.field public static final APPLICATION_DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.application"

.field private static final APPLICATION_SUB_TYPE:Ljava/lang/String; = "vnd.android.application"

.field public static final DATA:I = 0x66

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "PersonalAssistantProvider"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private volatile mLock:Ljava/lang/Object;

.field private mOpenHelper:Lcom/miui/personalassistant/provider/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->sURIMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    const/16 v3, 0x66

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string/jumbo v1, "miui_personalassistant_v2"

    const-string/jumbo v2, "data/package/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "miui_personalassistant_v2"

    const-string/jumbo v2, "data/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "miui_personalassistant_v2"

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string/jumbo v1, "isMinusScreenNewVersion"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isNewVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const-string/jumbo v3, "PersonalAssistantProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mOpenHelper:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    invoke-virtual {v3}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doesn\'t support delete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    :try_start_1
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t support querying."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.android.application"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    iget-object v7, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mOpenHelper:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    invoke-virtual {v7}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/miui/personalassistant/provider/PersonalAssistantProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    monitor-exit v6

    :goto_0
    return-object v3

    :pswitch_0
    iget-object v3, v0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v1, v3, v7, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6

    move-object v3, p1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    const-string/jumbo v0, "PersonalAssistantProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mOpenHelper:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    invoke-static {}, Lcom/miui/personalassistant/provider/AssistantUriMatcher;->getInstance()Lcom/miui/personalassistant/provider/AssistantUriMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/personalassistant/provider/AssistantUriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    const/4 v2, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq v9, v2, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    iget-object v11, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v2, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/16 v2, 0x66

    if-ne v2, v8, :cond_1

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mOpenHelper:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v3, "PersonalAssistantProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    monitor-exit v4

    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/miui/personalassistant/provider/PersonalAssistantProvider;->mOpenHelper:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    invoke-virtual {v3}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
