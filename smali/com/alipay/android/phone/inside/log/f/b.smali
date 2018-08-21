.class public Lcom/alipay/android/phone/inside/log/f/b;
.super Lcom/alipay/android/phone/inside/log/f/a;
.source "ApkField.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/a;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/log/util/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/b;->d:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/b;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/b;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/b;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/log/f/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
