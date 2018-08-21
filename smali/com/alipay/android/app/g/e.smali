.class final Lcom/alipay/android/app/g/e;
.super Ljava/lang/Object;
.source "LocalDataUtils.java"

# interfaces
.implements Lcom/alipay/android/app/d/b/c$a;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/g/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "2"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method
