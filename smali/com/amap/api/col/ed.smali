.class public Lcom/amap/api/col/ed;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ed$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/dx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/col/dx;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/amap/api/col/ed;->a:Lcom/amap/api/col/dx;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ed;->a:Lcom/amap/api/col/dx;

    invoke-interface {v0, p1}, Lcom/amap/api/col/dx;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ed;->a:Lcom/amap/api/col/dx;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/col/dx;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
