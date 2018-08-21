.class public Lcom/alipay/android/app/statistic/logfield/l;
.super Lcom/alipay/android/app/statistic/logfield/a;
.source "LogFieldWinUpdate.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "pageUpdate"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/l;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/logfield/l;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/l;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/statistic/logfield/l;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/statistic/logfield/l;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/statistic/logfield/l;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/statistic/logfield/l;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/statistic/logfield/l;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/b/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "v0"

    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/l;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/l;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/l;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/l;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/l;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/alipay/android/app/statistic/logfield/l;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/statistic/logfield/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "v1"

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
