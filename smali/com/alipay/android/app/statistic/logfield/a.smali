.class public abstract Lcom/alipay/android/app/statistic/logfield/a;
.super Ljava/lang/Object;
.source "LogField.java"


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/statistic/logfield/a;->a:Z

    sget-object v0, Lcom/alipay/android/app/statistic/b/a;->g:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/b/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->b:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->b:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->c:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->d:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->e:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->e:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->f:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->f:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->g:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/b/a;->h:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/b/a;->h:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/statistic/logfield/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/statistic/logfield/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "-"

    :cond_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/a;->a:Z

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/statistic/logfield/a;->b:Ljava/lang/String;

    return-object v0
.end method
