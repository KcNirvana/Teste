.class public Lcom/alipay/android/app/statistic/logfield/j;
.super Lcom/alipay/android/app/statistic/logfield/a;
.source "LogFieldTime.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "time"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "time"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/j;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/b;->getTrId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/j;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/j;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
