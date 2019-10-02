.class public Lcom/hungama/apps/ha/a/a/c;
.super Lcom/hungama/apps/ha/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/a/a/c;->a:Ljava/lang/String;

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/a/a/c;->b:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 3

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/apps/ha/a/a/c;->b:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;I)Lcom/hungama/apps/ha/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/c;->b:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/hungama/apps/ha/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/c;->b:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/apps/ha/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/c;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
