.class public Lcom/hungama/apps/ha/a/a/e;
.super Lcom/hungama/apps/ha/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/ContentValues;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/hungama/apps/ha/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/a/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hungama/apps/ha/a/a/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/hungama/apps/ha/a/a/e;->b:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/apps/ha/a/a/e;->b:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/hungama/apps/ha/a/a/e;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public a(Ljava/lang/String;I)Lcom/hungama/apps/ha/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/e;->b:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/e;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
