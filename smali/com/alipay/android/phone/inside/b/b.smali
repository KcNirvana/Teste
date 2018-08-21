.class Lcom/alipay/android/phone/inside/b/b;
.super Ljava/lang/Object;
.source "InsideExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/phone/inside/b/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/b/a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/b/b;->c:Lcom/alipay/android/phone/inside/b/a;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/b/b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/phone/inside/b/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/b/b;->c:Lcom/alipay/android/phone/inside/b/a;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/b/a;->a(Lcom/alipay/android/phone/inside/b/a;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/android/phone/inside/b/b;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/e/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
