.class public abstract Lcom/alipay/android/app/statistic/c/a;
.super Ljava/lang/Object;
.source "AbstractLogFieldContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/android/app/statistic/c/a;",
        ">;"
    }
.end annotation


# static fields
.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/android/app/statistic/b/a;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/alipay/android/app/statistic/c/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/statistic/b/a;->d:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/alipay/android/app/statistic/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/android/app/statistic/c/a;->a:I

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/statistic/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/statistic/c/a;->a:I

    return v0
.end method

.method public a(Lcom/alipay/android/app/statistic/c/a;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/statistic/c/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/c/a;->a()I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/statistic/c/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/c/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract a(Lcom/alipay/android/app/statistic/logfield/a;)V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/android/app/statistic/c/a;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/statistic/c/a;->a(Lcom/alipay/android/app/statistic/c/a;)I

    move-result v0

    return v0
.end method
