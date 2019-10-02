.class public Lcom/hungama/apps/ha/a/a/b;
.super Lcom/hungama/apps/ha/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/a/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hungama/apps/ha/a/a/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 3

    iget-object v0, p0, Lcom/hungama/apps/ha/a/a/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hungama/apps/ha/a/a/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
