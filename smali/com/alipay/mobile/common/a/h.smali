.class final Lcom/alipay/mobile/common/a/h;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/common/Callback$c;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/alipay/mobile/common/a/j;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/common/Callback$c;Landroid/widget/ImageView;Lcom/alipay/mobile/common/a/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    iput-object p2, p0, Lcom/alipay/mobile/common/a/h;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alipay/mobile/common/a/h;->c:Lcom/alipay/mobile/common/a/j;

    iput-object p4, p0, Lcom/alipay/mobile/common/a/h;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->c:Lcom/alipay/mobile/common/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/common/a/h;->c:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->o()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/common/a/h;->c:Lcom/alipay/mobile/common/a/j;

    iget-object v2, p0, Lcom/alipay/mobile/common/a/h;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/a/j;->c(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/alipay/mobile/common/a/h;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$c;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ImageLoader:"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_2

    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$c;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ImageLoader:"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ImageLoader:"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v1, :cond_4

    :try_start_6
    iget-object v1, p0, Lcom/alipay/mobile/common/a/h;->a:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v1}, Lcom/alipay/mobile/common/common/Callback$c;->a()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ImageLoader:"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
