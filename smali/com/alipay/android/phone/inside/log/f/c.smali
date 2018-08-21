.class public Lcom/alipay/android/phone/inside/log/f/c;
.super Lcom/alipay/android/phone/inside/log/f/a;
.source "BehaviorField.java"


# instance fields
.field private b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/a;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v0, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/log/f/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v2, v2, Lcom/alipay/android/phone/inside/log/api/behavior/a;->b:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v0, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->b:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    :cond_0
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v4, v4, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->f:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->h:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/alipay/android/phone/inside/log/f/c;->b:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v3, v3, Lcom/alipay/android/phone/inside/log/api/behavior/a;->i:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0x9

    aput-object v1, v2, v0

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/f/c;->c:Ljava/lang/String;

    aput-object v1, v2, v0

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/inside/log/f/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
