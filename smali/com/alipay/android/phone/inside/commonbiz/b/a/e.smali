.class public Lcom/alipay/android/phone/inside/commonbiz/b/a/e;
.super Ljava/lang/Object;
.source "TelephoneInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alipay/android/phone/inside/commonbiz/b/a/b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/c;",
            ">;",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c:Ljava/util/List;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p4, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d:Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    :cond_1
    iput-object p5, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/alipay/android/phone/inside/commonbiz/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d:Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d:Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
