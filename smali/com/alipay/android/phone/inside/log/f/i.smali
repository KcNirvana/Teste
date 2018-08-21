.class public Lcom/alipay/android/phone/inside/log/f/i;
.super Lcom/alipay/android/phone/inside/log/f/a;
.source "PerfField.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/a;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/log/f/i;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/log/f/i;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/inside/log/f/i;->d:Ljava/lang/Long;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/i;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/i;->f:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/inside/log/f/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, p4}, Lcom/alipay/android/phone/inside/log/f/i;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/i;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/i;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/i;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/i;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/i;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/log/f/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
