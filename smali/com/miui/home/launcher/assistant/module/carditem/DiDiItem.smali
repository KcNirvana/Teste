.class public Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;
.super Ljava/lang/Object;
.source "DiDiItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field public static final KEY_COMPANY_ADD:Ljava/lang/String; = "key_company_add"

.field public static final KEY_COMPANY_LAT:Ljava/lang/String; = "key_company_lat"

.field public static final KEY_COMPANY_LNG:Ljava/lang/String; = "key_company_lng"

.field public static final KEY_COMPANY_NAME:Ljava/lang/String; = "key_company_name"

.field public static final KEY_HOME_ADD:Ljava/lang/String; = "key_home_add"

.field public static final KEY_HOME_LAT:Ljava/lang/String; = "key_home_lat"

.field public static final KEY_HOME_LNG:Ljava/lang/String; = "key_home_lng"

.field public static final KEY_HOME_NAME:Ljava/lang/String; = "key_home_name"

.field private static final PERSONALASSISTANT_PROVIDER_AUTHORITY:Ljava/lang/String; = "personal_assistant"

.field private static final PERSONALASSISTANT_PROVIDER_URI:Ljava/lang/String; = "miui.home.launcher.assistant.didi"

.field private static final REQ_INTERVAL_MILLS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "DiDiItem"


# instance fields
.field private mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

.field private mCompanyAddr:Ljava/lang/String;

.field private mCompanyLat:Ljava/lang/String;

.field private mCompanyLng:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mHomeAddr:Ljava/lang/String;

.field private mHomeLat:Ljava/lang/String;

.field private mHomeLng:Ljava/lang/String;

.field private mHomeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeLat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyLat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeLng:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyLng:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyAddr:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrAddress()V
    .locals 4

    sget-boolean v0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->isSuccessLast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mLastMills:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->getCurrentLocation(Landroid/content/Context;Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->queryItem(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pick_word_home"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "latitude_home"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeLat:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "longitude_home"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeLng:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "address_home"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pick_word_school"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "latitude_school"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyLat:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "longitude_school"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyLng:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "address_school"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyAddr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->getCurrAddress()V

    const-string/jumbo v1, "key_home_name"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_home_lat"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeLat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_home_lng"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeLng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_home_add"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mHomeAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_company_name"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_company_lat"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyLat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_company_lng"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyLng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key_company_add"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mCompanyAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
