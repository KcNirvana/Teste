.class public Lcom/miui/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/d/f;


# instance fields
.field private bcD:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/c/e;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/c/e;->bcD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bzn(Ljava/util/List;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/c/e;->bcD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/c/e;->bcD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/c/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/c/e;->bcD:Ljava/lang/String;

    const-string/jumbo v2, "skin_resource_B"

    invoke-static {v0, v1, v2}, Lcom/miui/c/f;->bzw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/miui/c/f;->deleteFile(Ljava/io/File;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/c/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/c/e;->bcD:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/miui/c/f;->bzx(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/miui/c/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/c/e;->bcD:Ljava/lang/String;

    const-string/jumbo v2, "skin_resource_A"

    invoke-static {v0, v1, v2}, Lcom/miui/c/f;->bzw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    return v1
.end method
