.class final Lcom/alipay/android/app/ctemplate/a/e;
.super Landroid/util/LruCache;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/android/app/ctemplate/a/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/a/d$a;)I
    .locals 1

    iget v0, p2, Lcom/alipay/android/app/ctemplate/a/d$a;->g:I

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/alipay/android/app/ctemplate/a/d$a;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ctemplate/a/e;->a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/a/d$a;)I

    move-result v0

    return v0
.end method
