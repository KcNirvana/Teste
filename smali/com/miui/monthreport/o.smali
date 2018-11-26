.class public Lcom/miui/monthreport/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aZA:J

.field private aZB:Lorg/json/JSONObject;

.field private aZC:Ljava/lang/String;

.field private aZD:Ljava/util/List;

.field private aZE:Ljava/lang/String;

.field private aZF:Ljava/lang/String;

.field private aZG:Ljava/lang/String;

.field private aZH:J

.field private aZI:I

.field private aZJ:Ljava/lang/String;

.field private aZK:Ljava/lang/String;

.field private aZL:Ljava/lang/String;

.field private aZM:Ljava/lang/String;

.field private aZN:J

.field private aZO:Ljava/lang/String;

.field private aZP:Lorg/json/JSONObject;

.field private aZQ:Ljava/lang/String;

.field private aZR:Ljava/lang/String;

.field private aZS:Ljava/lang/String;

.field private aZT:Ljava/lang/String;

.field private aZz:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/monthreport/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/monthreport/o;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/monthreport/o;->aZK:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZD:Ljava/util/List;

    iput-object v1, p0, Lcom/miui/monthreport/o;->aZP:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/miui/monthreport/o;->aZO:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/monthreport/o;->aZI:I

    return-void
.end method

.method public static bvB(Ljava/lang/String;Ljava/lang/Exception;)Lcom/miui/monthreport/o;
    .locals 1

    new-instance v0, Lcom/miui/monthreport/o;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/o;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/miui/monthreport/o;->bvI()V

    invoke-direct {v0, p1}, Lcom/miui/monthreport/o;->bvM(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private bvI()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/monthreport/o;->aZA:J

    iget-object v0, p0, Lcom/miui/monthreport/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/monthreport/a;->buB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZG:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/monthreport/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/monthreport/a;->buA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZF:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZR:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    invoke-static {v0}, Lcom/miui/monthreport/m;->bvA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZQ:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZE:Ljava/lang/String;

    const-string/jumbo v0, "ro.carrier.name"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZz:Ljava/lang/String;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZL:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZJ:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZS:Ljava/lang/String;

    invoke-static {}, Lcom/miui/common/b/e;->getMiuiVersionType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZT:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/monthreport/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/e;->aHI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->mOperator:Ljava/lang/String;

    return-void
.end method

.method private bvJ()Lorg/json/JSONObject;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/miui/monthreport/o;->bvL()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v6

    :cond_1
    const-string/jumbo v2, "reportId"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZM:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "d"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "c"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZz:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "r"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "l"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZJ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "v"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "t"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "a"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZF:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "m"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "startTime"

    iget-wide v4, p0, Lcom/miui/monthreport/o;->aZN:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "endTime"

    iget-wide v4, p0, Lcom/miui/monthreport/o;->aZH:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "areaCode"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZR:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "area"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZQ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "date"

    iget-object v3, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "events"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "o"

    iget-object v2, p0, Lcom/miui/monthreport/o;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "moduleName"

    iget-object v2, p0, Lcom/miui/monthreport/o;->aZK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v6
.end method

.method private bvL()Lorg/json/JSONArray;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/monthreport/f;->getInstance()Lcom/miui/monthreport/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/o;->aZK:Ljava/lang/String;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/miui/monthreport/f;->buW(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/miui/monthreport/o;->aZN:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/monthreport/o;->aZH:J

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/monthreport/o;->aZD:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/monthreport/h;

    invoke-virtual {p0, v0}, Lcom/miui/monthreport/o;->bvK(Lcom/miui/monthreport/h;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v3
.end method

.method private bvM(Ljava/lang/Exception;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/monthreport/o;->bvJ()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZB:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/monthreport/o;->aZB:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/monthreport/o;->aZB:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/monthreport/o;->bvN(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/monthreport/o;->aZM:Ljava/lang/String;

    const-string/jumbo v1, "m"

    iget-object v2, p0, Lcom/miui/monthreport/o;->aZG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "reportId"

    iget-object v2, p0, Lcom/miui/monthreport/o;->aZM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "date"

    iget-object v2, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "module"

    iget-object v2, p0, Lcom/miui/monthreport/o;->aZK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "class:%s, msg:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "exception"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/monthreport/o;->bvO(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private bvN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/o;->aZO:Ljava/lang/String;

    return-void
.end method

.method private bvO(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/o;->aZP:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public bvC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/o;->aZO:Ljava/lang/String;

    return-object v0
.end method

.method public bvD()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/o;->aZP:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bvE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/o;->aZK:Ljava/lang/String;

    return-object v0
.end method

.method public bvF()V
    .locals 1

    iget v0, p0, Lcom/miui/monthreport/o;->aZI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/monthreport/o;->aZI:I

    return-void
.end method

.method public bvG()I
    .locals 1

    iget v0, p0, Lcom/miui/monthreport/o;->aZI:I

    return v0
.end method

.method public bvH()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/o;->aZD:Ljava/util/List;

    return-object v0
.end method

.method public bvK(Lcom/miui/monthreport/h;)Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    iget v0, p1, Lcom/miui/monthreport/h;->aZg:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/miui/monthreport/h;->version:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/monthreport/o;->aZD:Ljava/util/List;

    iget-object v1, p1, Lcom/miui/monthreport/h;->aZd:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p1, Lcom/miui/monthreport/h;->aZh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/monthreport/h;->aZc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/miui/monthreport/h;->aZf:J

    iget-wide v2, p0, Lcom/miui/monthreport/o;->aZA:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p1, Lcom/miui/monthreport/h;->aZf:J

    const-string/jumbo v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/g;->aIi(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/miui/monthreport/h;->aZf:J

    iget-wide v2, p0, Lcom/miui/monthreport/o;->aZN:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-wide v0, p1, Lcom/miui/monthreport/h;->aZf:J

    iput-wide v0, p0, Lcom/miui/monthreport/o;->aZN:J

    :cond_4
    iget-wide v0, p1, Lcom/miui/monthreport/h;->aZf:J

    iget-wide v2, p0, Lcom/miui/monthreport/o;->aZH:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-wide v0, p1, Lcom/miui/monthreport/h;->aZf:J

    iput-wide v0, p0, Lcom/miui/monthreport/o;->aZH:J

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "eventId"

    iget-object v2, p1, Lcom/miui/monthreport/h;->aZd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "eventTime"

    iget-wide v2, p1, Lcom/miui/monthreport/h;->aZf:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "pkgName"

    iget-object v2, p1, Lcom/miui/monthreport/h;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "eventType"

    iget v2, p1, Lcom/miui/monthreport/h;->aZg:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "version"

    iget v2, p1, Lcom/miui/monthreport/h;->version:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/miui/monthreport/h;->aZc:Ljava/lang/String;

    const-string/jumbo v4, "\\"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/monthreport/o;->aZD:Ljava/util/List;

    iget-object v2, p1, Lcom/miui/monthreport/h;->aZd:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Task : reportId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/o;->aZM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", moduleName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/o;->aZK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/o;->aZC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
