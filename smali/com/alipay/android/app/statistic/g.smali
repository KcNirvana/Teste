.class public Lcom/alipay/android/app/statistic/g;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "https://mcgw.alipay.com/sdklog.do"

    sput-object v0, Lcom/alipay/android/app/statistic/g;->b:Ljava/lang/String;

    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    sput-object v0, Lcom/alipay/android/app/statistic/g;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/alipay/android/app/statistic/g;->c:Ljava/lang/String;

    const-string/jumbo v0, "cashier_statistic_setting"

    const-string/jumbo v1, "public_key"

    invoke-static {v0, v1, p0}, Lcom/alipay/android/app/d/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "cashier_statistic_setting"

    const-string/jumbo v1, "public_key"

    sget-object v2, Lcom/alipay/android/app/statistic/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/d/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
