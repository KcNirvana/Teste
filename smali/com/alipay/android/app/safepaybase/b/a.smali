.class public Lcom/alipay/android/app/safepaybase/b/a;
.super Ljava/lang/Object;
.source "EditTextManager.java"


# static fields
.field private static a:Lcom/alipay/android/app/safepaybase/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/safepaybase/b/a;->a:Lcom/alipay/android/app/safepaybase/b/b;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/safepaybase/b/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/safepaybase/b/a;->a:Lcom/alipay/android/app/safepaybase/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/safepaybase/b/b;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/b/b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/b/a;->a:Lcom/alipay/android/app/safepaybase/b/b;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/b/a;->a:Lcom/alipay/android/app/safepaybase/b/b;

    return-object v0
.end method
