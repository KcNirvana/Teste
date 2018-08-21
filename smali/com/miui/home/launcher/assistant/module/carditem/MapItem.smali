.class public Lcom/miui/home/launcher/assistant/module/carditem/MapItem;
.super Ljava/lang/Object;
.source "MapItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final AROUND_VALID:J = 0x320L

.field public static MAP_INFO_ALL:I = 0x0

.field public static MAP_INFO_AUTO:I = 0x0

.field public static MAP_INFO_AUTO_INSTALL:I = 0x0

.field public static MAP_INFO_BAIDU_INSTALL:I = 0x0

.field public static MAP_INFO_HOME:I = 0x0

.field public static MAP_INFO_OFFICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MapItem"


# instance fields
.field private mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentAddress:Ljava/lang/String;

.field private volatile mCurrentCity:Ljava/lang/String;

.field private volatile mCurrentLat:Ljava/lang/String;

.field private volatile mCurrentLng:Ljava/lang/String;

.field public volatile mHomeAddress:Ljava/lang/String;

.field public volatile mHomeCity:Ljava/lang/String;

.field public volatile mHomeLat:Ljava/lang/String;

.field public volatile mHomeLng:Ljava/lang/String;

.field public volatile mOfficeAddress:Ljava/lang/String;

.field public volatile mOfficeCity:Ljava/lang/String;

.field public volatile mOfficeLat:Ljava/lang/String;

.field public volatile mOfficeLng:Ljava/lang/String;

.field public volatile mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_AUTO:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_AUTO_INSTALL:I

    const/4 v0, 0x2

    sput v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_BAIDU_INSTALL:I

    const/4 v0, 0x4

    sput v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_HOME:I

    const/16 v0, 0x8

    sput v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_OFFICE:I

    const/16 v0, 0xc

    sput v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_ALL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLng:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLng:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->queryEtaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    return-object v0
.end method

.method private getAddress()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pick_word_home"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pick_word_school"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "latitude_home"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "longitude_home"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "latitude_school"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "longitude_school"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "city_home"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeCity:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "city_school"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeCity:Ljava/lang/String;

    return-void
.end method

.method private queryEtaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v9

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkMapSettingData()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_HOME:I

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_OFFICE:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public clickBtnGroup(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v0, "didi_home"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLat:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLng:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentAddress:Ljava/lang/String;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeAddress:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "didi_office"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLat:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentLng:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCurrentAddress:Ljava/lang/String;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeAddress:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "subway"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/miui/personalassistant/util/QuickStartUtil;->getIntentTransCard(Lcom/miui/personalassistant/model/FunctionLaunch;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->isInstallMapApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/util/Util;->startActivityByUriClearTop(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInstallMapApp()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.autonavi.minimap"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.baidu.BaiduMap"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    const v2, 0x1b0b0263

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 5

    sget v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_AUTO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getRecentMapPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.autonavi.minimap"

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.autonavi.minimap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_AUTO_INSTALL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->getAddress()V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->checkMapSettingData()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mCallBack:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->getCurrentLocation(Landroid/content/Context;Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;I)V

    :cond_3
    return-object v1

    :cond_4
    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mPackageName:Ljava/lang/String;

    sget v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_BAIDU_INSTALL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->queryItem(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
