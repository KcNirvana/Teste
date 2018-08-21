.class public Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;
.super Lcom/alipay/android/app/statistic/logfield/a;
.source "LogFieldEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;,
        Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;
    }
.end annotation


# static fields
.field private static d:J

.field private static e:I


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d:J

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string/jumbo v0, "event"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->k:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->l:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->m:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->n:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->o:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->p:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->q:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->r:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a:Z

    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    iput v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    sget v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    iput v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->p:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d:J

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->k:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->m:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->l:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->n:Ljava/lang/String;

    return-void
.end method

.method public h()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->p:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->r:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d:J

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->q:Ljava/lang/String;

    return-void
.end method
