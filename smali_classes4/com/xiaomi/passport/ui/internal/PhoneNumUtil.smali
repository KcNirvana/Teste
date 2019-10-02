.class public Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;
.super Ljava/lang/Object;
.source "PhoneNumUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNumUtil"

.field private static pattern:Ljava/lang/String; = "(\\+)?\\d{1,20}"

.field private static regex:Ljava/util/regex/Pattern;

.field private static sContext:Landroid/content/Context;

.field private static sMapCountryPhoneData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation
.end field

.field private static sMapRecommendCountryPhoneData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensureDataLoaded()V
    .locals 6

    const-class v0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapCountryPhoneData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapRecommendCountryPhoneData:Ljava/util/HashMap;

    if-nez v1, :cond_3

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapCountryPhoneData:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapRecommendCountryPhoneData:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->isCNLanguage()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/xiaomi/passport/ui/R$raw;->passport_countries_cn:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/xiaomi/passport/ui/R$raw;->passport_countries:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x200

    :try_start_2
    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "countries"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->processCountryDataFromJson(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapCountryPhoneData:Ljava/util/HashMap;

    const-string v1, "recommend countries"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->processCountryDataFromJson(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapRecommendCountryPhoneData:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_2
    invoke-static {v4}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_6

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    :goto_3
    :try_start_5
    const-string v3, "PhoneNumUtil"

    const-string v5, "error when parse json"

    invoke-static {v3, v5, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    :goto_4
    :try_start_7
    const-string v3, "PhoneNumUtil"

    const-string v5, "error when load area codes"

    invoke-static {v3, v5, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :cond_3
    :goto_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    :goto_6
    :try_start_9
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/xiaomi/accountsdk/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCountryPhoneNumDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->ensureDataLoaded()V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapCountryPhoneData:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->getCountryPhoneNumDataListFromData(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getCountryPhoneNumDataListFromData(Ljava/util/HashMap;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRecommendCountryPhoneNumDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->ensureDataLoaded()V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sMapRecommendCountryPhoneData:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->getCountryPhoneNumDataListFromData(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static initializeCountryPhoneData(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;->sContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static isCNLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static processCountryDataFromJson(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ic"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "iso"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    invoke-direct {v7, v4, v5, v6}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "len"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iput-object v5, v7, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->lengths:Ljava/util/ArrayList;

    :cond_1
    const-string v4, "mc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iput-object v4, v7, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->prefix:Ljava/util/ArrayList;

    :cond_3
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
