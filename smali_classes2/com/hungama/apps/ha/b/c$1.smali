.class Lcom/hungama/apps/ha/b/c$1;
.super Lcom/hungama/apps/ha/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/apps/ha/b/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/apps/ha/b/c;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    invoke-direct {p0}, Lcom/hungama/apps/ha/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/b/c;->a(Lcom/hungama/apps/ha/b/c;Z)Z

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hungama/apps/ha/b/c;->a(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/b/c;->b(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/b/c;->a(Lcom/hungama/apps/ha/b/c;I)I

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/b/c;->c(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/b/c;->d(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/hungama/apps/ha/b/c;->e(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    invoke-static {p1, v0, v1, v2}, Lcom/hungama/apps/ha/b/c;->a(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    invoke-static {p1}, Lcom/hungama/apps/ha/b/c;->a(Lcom/hungama/apps/ha/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/apps/ha/b/c$1;->a:Lcom/hungama/apps/ha/b/c;

    const-string v0, "NA"

    invoke-static {p1, v0}, Lcom/hungama/apps/ha/b/c;->f(Lcom/hungama/apps/ha/b/c;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
