.class Lcom/miui/video/base/database/DBUtils$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/database/DBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/database/DBUtils;


# direct methods
.method public constructor <init>(Lcom/miui/video/base/database/DBUtils;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/base/database/DBUtils$DBHelper;->this$0:Lcom/miui/video/base/database/DBUtils;

    invoke-virtual {p1}, Lcom/miui/video/base/database/DBUtils;->getRealDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/base/database/DBUtils;->getRealDatabaseVersion()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "DBUtils"

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealDatabaseName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/base/database/DBUtils$DBHelper;->this$0:Lcom/miui/video/base/database/DBUtils;

    invoke-virtual {v3}, Lcom/miui/video/base/database/DBUtils;->getRealDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getRealDatabaseVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/base/database/DBUtils$DBHelper;->this$0:Lcom/miui/video/base/database/DBUtils;

    invoke-virtual {v3}, Lcom/miui/video/base/database/DBUtils;->getRealDatabaseVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils$DBHelper;->this$0:Lcom/miui/video/base/database/DBUtils;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DBUtils;->onDataBaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string v0, "DBUtils"

    const-string v1, "onDowngrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  newVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils$DBHelper;->this$0:Lcom/miui/video/base/database/DBUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/database/DBUtils;->onDataBaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string v0, "DBUtils"

    const-string v1, "onUpgrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  newVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/database/DBUtils$DBHelper;->this$0:Lcom/miui/video/base/database/DBUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/database/DBUtils;->onDataBaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
