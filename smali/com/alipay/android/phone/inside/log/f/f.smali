.class public Lcom/alipay/android/phone/inside/log/f/f;
.super Lcom/alipay/android/phone/inside/log/f/a;
.source "EnvField.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/f;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/inside/log/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/f;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/inside/log/util/c;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/log/util/c;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/f;->d:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/phone/inside/log/util/c;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/f;->e:Ljava/lang/String;

    :cond_0
    invoke-static {v1}, Lcom/alipay/android/phone/inside/log/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/f;->f:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/f;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/f;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/f;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/f;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/f;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/log/f/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
