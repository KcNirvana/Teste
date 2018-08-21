.class public final Lcom/alipay/android/phone/inside/security/a;
.super Ljava/lang/Object;
.source "GlobalInit.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/inside/security/a;->a:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/phone/inside/security/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/inside/security/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/inside/security/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/security/a;->b:Landroid/content/Context;

    return-object v0
.end method
