.class Lcom/miui/monthreport/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# instance fields
.field final synthetic aZb:Lcom/miui/monthreport/f;


# direct methods
.method public constructor <init>(Lcom/miui/monthreport/f;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/monthreport/g;->aZb:Lcom/miui/monthreport/f;

    const-string/jumbo v0, "month_report.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private bva(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE report_json (_id INTEGER PRIMARY KEY AUTOINCREMENT, eventId TEXT, eventTime INTEGER, pkgName TEXT, eventType INTEGER, version INTEGER, data TEXT, moduleName TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private bvb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "ALTER TABLE report_json ADD COLUMN moduleName TEXT DEFAULT monthReport;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/monthreport/g;->bva(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE report_json;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/g;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/monthreport/g;->bvb(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
