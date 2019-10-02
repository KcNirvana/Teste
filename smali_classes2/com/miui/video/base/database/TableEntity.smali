.class public Lcom/miui/video/base/database/TableEntity;
.super Ljava/lang/Object;
.source "TableEntity.java"


# static fields
.field private static final COL__ID:Ljava/lang/String; = "_id"

.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS "

.field private static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE "

.field private static final ORDERBY_ASC:Ljava/lang/String; = " ASC"

.field private static final ORDERBY_DESC:Ljava/lang/String; = " DESC"

.field private static final TYPE_BLOB:Ljava/lang/String; = " BLOB"

.field private static final TYPE_FLOAT:Ljava/lang/String; = " FLOAT"

.field private static final TYPE_INTEGER:Ljava/lang/String; = " INTEGER"

.field private static final TYPE_INTEGER_AUTOINCREMENT:Ljava/lang/String; = " INTEGER PRIMARY KEY AUTOINCREMENT"

.field private static final TYPE_LONG:Ljava/lang/String; = " LONG"

.field private static final TYPE_REAL:Ljava/lang/String; = " REAL"

.field private static final TYPE_TEXT:Ljava/lang/String; = " TEXT"

.field private static final _R_N:Ljava/lang/String; = "\r\n"

.field private static final _T:Ljava/lang/String; = "\t"


# instance fields
.field private columns:[Ljava/lang/String;

.field private distinct:Z

.field private groupBy:Ljava/lang/String;

.field private having:Ljava/lang/String;

.field private limit:Ljava/lang/String;

.field private orderBy:Ljava/lang/String;

.field private queryListener:Lcom/miui/video/base/database/DBUtils$IQueryListener;

.field private tableColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;

.field private tableUri:Landroid/net/Uri;

.field private values:Landroid/content/ContentValues;

.field private whereArgs:[Ljava/lang/String;

.field private whereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->tableUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->tableName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBlobColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " BLOB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFloatColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FLOAT"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addIntegerColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " INTEGER"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLongColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LONG"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRealColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " REAL"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTextColumns(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " TEXT"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTableSql()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/TableEntity;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/miui/video/base/database/TableEntity;->tableColumns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, " );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "getCreateTableSql"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, ",\r\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropTableSql()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/database/TableEntity;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "getDropTableSql"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->groupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getHaving()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->having:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->limit:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryListener()Lcom/miui/video/base/database/DBUtils$IQueryListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->queryListener:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->tableUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->values:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getWhereArgs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->whereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/TableEntity;->whereClause:Ljava/lang/String;

    return-object v0
.end method

.method public isDistinct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/TableEntity;->distinct:Z

    return v0
.end method

.method public setColumns([Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->columns:[Ljava/lang/String;

    return-object p0
.end method

.method public setDistinct(Z)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/TableEntity;->distinct:Z

    return-object p0
.end method

.method public setGroupBy(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->groupBy:Ljava/lang/String;

    return-object p0
.end method

.method public setHaving(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->having:Ljava/lang/String;

    return-object p0
.end method

.method public setLimit(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->limit:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderBy(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderByAsc(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ASC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderByDesc(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DESC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public setQueryListener(Lcom/miui/video/base/database/DBUtils$IQueryListener;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->queryListener:Lcom/miui/video/base/database/DBUtils$IQueryListener;

    return-object p0
.end method

.method public setValues(Landroid/content/ContentValues;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->values:Landroid/content/ContentValues;

    return-object p0
.end method

.method public setWhereClause(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->whereClause:Ljava/lang/String;

    return-object p0
.end method

.method public setWhereClause(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/TableEntity;->whereClause:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/base/database/TableEntity;->whereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "tableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/miui/video/base/database/TableEntity;->distinct:Z

    if-eqz v1, :cond_0

    const-string v1, "distinct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/miui/video/base/database/TableEntity;->distinct:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->columns:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->columns:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/miui/video/base/database/TableEntity;->columns:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/miui/video/base/database/TableEntity;->columns:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "columns="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->whereClause:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "whereClause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->whereClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->whereArgs:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->whereArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/miui/video/base/database/TableEntity;->whereArgs:[Ljava/lang/String;

    array-length v4, v4

    :goto_1
    if-ge v2, v4, :cond_4

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/miui/video/base/database/TableEntity;->whereArgs:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "whereArgs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->groupBy:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "groupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->groupBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->having:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "having="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->having:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->orderBy:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "orderBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->orderBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->limit:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->limit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->values:Landroid/content/ContentValues;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/video/base/database/TableEntity;->values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "values="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
