.class public Lcom/alipay/android/app/statistic/logfield/c;
.super Lcom/alipay/android/app/statistic/logfield/a;
.source "LogFieldCount.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "count"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/c;->a:Z

    const-string/jumbo v0, "-"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/logfield/c;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/statistic/logfield/c;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/alipay/android/app/statistic/logfield/c;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/c;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/c;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/c;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/c;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "@@count@@"

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/c;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/c;->g:Ljava/lang/String;

    return-void
.end method
