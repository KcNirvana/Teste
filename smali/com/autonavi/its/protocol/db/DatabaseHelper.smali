.class public Lcom/autonavi/its/protocol/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final DATABASE_NAME:Ljava/lang/String; = "log_db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "log_table"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TIME_TEXT:Ljava/lang/String; = "time_text"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS log_table (_id integer primary key autoincrement, time INTEGER, time_text text,content text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
