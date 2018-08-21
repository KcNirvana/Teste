.class public Lcom/miui/personalassistant/stock/http/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/stock/http/HttpConstants$Tag;
    }
.end annotation


# static fields
.field private static final URL_BASE:Ljava/lang/String; = "http://baojia.itiger.com/stock"

.field public static final URL_BATCH_TYPE:Ljava/lang/String; = "url_batch_type"

.field public static final URL_GETBATCH:Ljava/lang/String; = "http://baojia.itiger.com/stock/getBatch?"

.field public static final URL_GETBATCH_PARAM_KEY:Ljava/lang/String; = "id"

.field public static final URL_GETBATCH_PARAM_KEY_V2:Ljava/lang/String; = "ids"

.field public static final URL_GETBATCH_V2:Ljava/lang/String; = "http://baojia.itiger.com/stock/v2/getBatch?"

.field public static final URL_GET_USER_ID_PARAM_IMEI:Ljava/lang/String; = "imei"

.field public static final URL_GET_USER_ID_URL:Ljava/lang/String; = "http://baojia.itiger.com/stock/getUserName?"

.field public static final URL_GET_USER_ID_URL_V2:Ljava/lang/String; = "http://baojia.itiger.com/stock/v2/getUserName"

.field public static final URL_IMEI_TYPE:Ljava/lang/String; = "url_imei_type"

.field public static final URL_SEARCH:Ljava/lang/String; = "http://baojia.itiger.com/stock/search?"

.field public static final URL_SEARCH_PARAM_KET:Ljava/lang/String; = "key"

.field public static final URL_SEARCH_TYPE:Ljava/lang/String; = "url_search_type"

.field public static final URL_SEARCH_V2:Ljava/lang/String; = "http://baojia.itiger.com/stock/v2/search?"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
