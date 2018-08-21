.class public Lcom/alipay/apmobilesecuritysdk/commonbiz/e;
.super Ljava/lang/Object;
.source "RushTimeUtil.java"


# static fields
.field private static a:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-void
.end method

.method public static a()Z
    .locals 13

    const/4 v12, 0x2

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "2016-11-10 2016-11-11"

    aput-object v2, v4, v1

    const-string/jumbo v2, "2016-12-11 2016-12-12"

    aput-object v2, v4, v0

    const-string/jumbo v2, "2017-01-27 2017-01-28"

    aput-object v2, v4, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    mul-double/2addr v6, v8

    mul-double/2addr v6, v10

    mul-double/2addr v6, v10

    double-to-int v2, v6

    mul-int/lit8 v5, v2, 0x1

    :try_start_0
    array-length v6, v4

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v7, v4, v2

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v8, v7

    if-eq v8, v12, :cond_2

    :cond_0
    sget-object v7, Lcom/alipay/apmobilesecuritysdk/commonbiz/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v8, "RushTimeUtil"

    const-string/jumbo v9, "[-] time interval configuration error, please reconfigure it."

    invoke-interface {v7, v8, v9}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " 00:00:00"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v7, v7, v11

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " 23:59:59"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xd

    invoke-virtual {v10, v7, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v8, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/e;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "RushTimeUtil"

    const-string/jumbo v3, "[-] Unexpected error happened while judge whether now is in rush hour."

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_1
.end method
