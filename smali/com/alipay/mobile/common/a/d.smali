.class final Lcom/alipay/mobile/common/a/d;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/alipay/mobile/common/a/j;

.field final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/a/d;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/alipay/mobile/common/a/d;->b:Lcom/alipay/mobile/common/a/j;

    iput-object p3, p0, Lcom/alipay/mobile/common/a/d;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/a/d;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/a/d;->b:Lcom/alipay/mobile/common/a/j;

    iget-object v2, p0, Lcom/alipay/mobile/common/a/d;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/a/c;->a(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Landroid/graphics/Bitmap;)V

    return-void
.end method
