.class public Lcom/alipay/android/phone/inside/d/a;
.super Ljava/lang/Object;
.source "CommonServiceFactory.java"


# static fields
.field private static a:Lcom/alipay/android/phone/inside/d/a;


# instance fields
.field private b:Lcom/alipay/android/phone/inside/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/inside/d/a;->a:Lcom/alipay/android/phone/inside/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/inside/d/d;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/d/d;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/d/a;->b:Lcom/alipay/android/phone/inside/d/c;

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/inside/d/a;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/inside/d/a;->a:Lcom/alipay/android/phone/inside/d/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/d/a;->a:Lcom/alipay/android/phone/inside/d/a;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/alipay/android/phone/inside/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/d/a;->a:Lcom/alipay/android/phone/inside/d/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/inside/d/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/d/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/d/a;->a:Lcom/alipay/android/phone/inside/d/a;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/alipay/android/phone/inside/d/a;->a:Lcom/alipay/android/phone/inside/d/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Lcom/alipay/android/phone/inside/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/d/a;->b:Lcom/alipay/android/phone/inside/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/d/a;->b:Lcom/alipay/android/phone/inside/d/c;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/d/d;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/d/d;-><init>()V

    goto :goto_0
.end method
