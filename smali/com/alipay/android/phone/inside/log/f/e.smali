.class public Lcom/alipay/android/phone/inside/log/f/e;
.super Lcom/alipay/android/phone/inside/log/f/a;
.source "DeviceField.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/a;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/log/f/e;->b()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->f:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->g:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->h:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->i:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/e;->j:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/e;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/log/f/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/log/util/d;->a(Landroid/content/Context;)V

    return-void
.end method
