.class Lcom/alipay/birdnest/a/c;
.super Landroid/support/v4/util/LruCache;
.source "FBImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/birdnest/a/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/birdnest/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/birdnest/a/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/birdnest/a/c;->a:Lcom/alipay/birdnest/a/b;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/alipay/birdnest/a/b$a;)I
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alipay/birdnest/a/b$a;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p2, Lcom/alipay/birdnest/a/b$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p2, Lcom/alipay/birdnest/a/b$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected a(ZLjava/lang/String;Lcom/alipay/birdnest/a/b$a;Lcom/alipay/birdnest/a/b$a;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p3, Lcom/alipay/birdnest/a/b$a;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/alipay/birdnest/a/c;->a:Lcom/alipay/birdnest/a/b;

    invoke-static {v0}, Lcom/alipay/birdnest/a/b;->a(Lcom/alipay/birdnest/a/b;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p3, Lcom/alipay/birdnest/a/b$a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/alipay/birdnest/a/b$a;

    check-cast p4, Lcom/alipay/birdnest/a/b$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/birdnest/a/c;->a(ZLjava/lang/String;Lcom/alipay/birdnest/a/b$a;Lcom/alipay/birdnest/a/b$a;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/alipay/birdnest/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/birdnest/a/c;->a(Ljava/lang/String;Lcom/alipay/birdnest/a/b$a;)I

    move-result v0

    return v0
.end method
