.class public final Lcom/miui/video/base/database/GreenDaoUpdateHelper;
.super Ljava/lang/Object;
.source "GreenDaoUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;
    }
.end annotation


# static fields
.field private static callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs createAllTables_withNoExchangeData(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)Z
    .locals 1
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "createTable"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static varargs dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)Z
    .locals 1
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "dropTable"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static varargs generateNewTablesIfNotExists_withNoExchangeData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "createTable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static varargs generateTempTables_withExchangeDataFromOldTable(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    iget-object v3, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v4, "_TEMP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TEMP TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AS SELECT * FROM "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTempTables_withExchangeDataFromOldTable ===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFailedLog(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private static getColumns(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " limit 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/database/StandardDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    sget-object p0, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColumns ===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFailedLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_2
    return-object v0

    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    throw p1
.end method

.method private static varargs reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)Z
    .locals 8
    .param p3    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    sget-object p0, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    const-string p1, "reflectMethod ===> daoClasses.length < 1"

    invoke-interface {p0, p1}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFailedLog(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    :try_start_0
    array-length v0, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p3, v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lorg/greenrobot/greendao/database/Database;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reflectMethod ===> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFailedLog(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method private static varargs restoreData_fromTempTableToNewTable(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    new-instance v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    iget-object v3, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iget-object v4, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v5, "_TEMP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->getColumns(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    iget-object v8, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v8, v8, v7

    iget-object v8, v8, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "`,`"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "`"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") SELECT "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreData_fromTempTableToNewTable ===> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFailedLog(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs compatibleUpdate(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->generateNewTablesIfNotExists_withNoExchangeData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->generateTempTables_withExchangeDataFromOldTable(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-static {v0, p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->createAllTables_withNoExchangeData(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {v0, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->restoreData_fromTempTableToNewTable(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    invoke-interface {p1}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFinalSuccess()V

    :cond_4
    const/4 p1, 0x0

    sput-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    return-void
.end method

.method public varargs compatibleUpdate(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->generateNewTablesIfNotExists_withNoExchangeData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->generateTempTables_withExchangeDataFromOldTable(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->createAllTables_withNoExchangeData(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->restoreData_fromTempTableToNewTable(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    invoke-interface {p1}, Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;->onFinalSuccess()V

    :cond_4
    const/4 p1, 0x0

    sput-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    return-void
.end method

.method public setCallBack(Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;)Lcom/miui/video/base/database/GreenDaoUpdateHelper;
    .locals 0

    sput-object p1, Lcom/miui/video/base/database/GreenDaoUpdateHelper;->callBack:Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;

    return-object p0
.end method
