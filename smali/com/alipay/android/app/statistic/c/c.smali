.class Lcom/alipay/android/app/statistic/c/c;
.super Ljava/lang/Object;
.source "LogArrayFieldContainer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/app/statistic/logfield/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/statistic/c/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/statistic/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/c/c;->a:Lcom/alipay/android/app/statistic/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/statistic/logfield/a;Lcom/alipay/android/app/statistic/logfield/a;)I
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/logfield/a;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/android/app/statistic/logfield/a;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/android/app/statistic/logfield/a;

    check-cast p2, Lcom/alipay/android/app/statistic/logfield/a;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/statistic/c/c;->a(Lcom/alipay/android/app/statistic/logfield/a;Lcom/alipay/android/app/statistic/logfield/a;)I

    move-result v0

    return v0
.end method
