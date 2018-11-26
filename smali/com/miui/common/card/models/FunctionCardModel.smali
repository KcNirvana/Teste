.class public Lcom/miui/common/card/models/FunctionCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# static fields
.field public static LOCAL_FUNCTION_ICONS:Ljava/util/Map; = null

.field protected static final RESOURCE:Landroid/content/res/Resources;

.field protected static SHOW_ACTION_WHITE_LIST:Ljava/util/List; = null

.field private static final TAG:Ljava/lang/String; = "FunctionCardModel"


# instance fields
.field private ABtest:Ljava/lang/String;

.field private curModel:Lcom/miui/securityscan/model/AbsModel;

.field private transient function:Lcom/miui/common/card/functions/BaseFunction;

.field private functionId:I

.field private gridFunctionDataList:Ljava/util/List;

.field private imgUrl:Ljava/lang/String;

.field private isHomePageFunc:Z

.field private isNoDivider:Z

.field private needRemove:Z

.field private score:I

.field private statKey:Ljava/lang/String;

.field private template:I


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/FunctionCardModel;)Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/FunctionCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isNoDivider:Z

    return v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/FunctionCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->needRemove:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->RESOURCE:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string/jumbo v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2401-001"

    const v2, 0x7f02025a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2401-002"

    const v2, 0x7f02026c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2401-003"

    const v2, 0x7f020266

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2401-004"

    const v2, 0x7f020260

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2401-005"

    const v2, 0x7f020195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2401-006"

    const v2, 0x7f020254

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-001"

    const v2, 0x7f02018b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-002"

    const v2, 0x7f02018f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-003"

    const v2, 0x7f0201a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-004"

    const v2, 0x7f020184

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-005"

    const v2, 0x7f0201a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-006"

    const v2, 0x7f02019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-007"

    const v2, 0x7f020198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-008"

    const v2, 0x7f02019b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    const-string/jumbo v1, "2402-009"

    const v2, 0x7f020188

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-void
.end method

.method private static getReplaceImei()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/securityscan/utils/b;->It()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RuPJ0BCJNiaPpPV9"

    invoke-static {v1, v0}, Lcom/miui/common/b/j;->aIl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FunctionCardModel"

    const-string/jumbo v2, "getReplaceImei error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    const-string/jumbo v0, "#Intent;action=android.intent.action.SET_FIREWALL;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    return-object v0

    :cond_1
    const-string/jumbo v0, "#Intent;action=android.intent.action.VIEW_DATA_USAGE_SUMMARY;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isShowLocalFunction(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x15

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_2

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-boolean v2, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/common/b/f;->aIb(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_5

    :cond_4
    :goto_2
    move v0, v1

    goto :goto_1

    :cond_5
    sget-boolean v2, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_6
    const-string/jumbo v2, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gamebooster/a/i;->fC(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public static parse(ILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)Lcom/miui/common/card/models/FunctionCardModel;
    .locals 9

    const v8, 0x98e4a2

    const v7, 0x98e4a1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_0

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v3, p0}, Lcom/miui/common/card/models/FunctionCardModel;->setTemplate(I)V

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setSummary(Ljava/lang/String;)V

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setButton(Ljava/lang/String;)V

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setIcon(Ljava/lang/String;)V

    const-string/jumbo v0, "imgUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setImgUrl(Ljava/lang/String;)V

    const-string/jumbo v0, "statKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setStatKey(Ljava/lang/String;)V

    const-string/jumbo v0, "ABtest"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setABtest(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "functionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "action"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/common/card/models/FunctionCardModel;->handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-ne v0, v7, :cond_a

    const/4 v0, 0x0

    invoke-static {v5, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/DataModel;->Db(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v5}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {v5, v0}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_1
    move v2, v0

    :cond_0
    :goto_2
    if-eqz v2, :cond_b

    move-object v0, v3

    :goto_3
    return-object v0

    :sswitch_0
    new-instance v3, Lcom/miui/common/card/models/FuncLeftBannerCardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;-><init>()V

    invoke-virtual {v3, v1}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v3, Lcom/miui/common/card/models/FuncListBannerCardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncListBannerCardModel;-><init>()V

    invoke-virtual {v3, v1}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v3, Lcom/miui/common/card/models/FuncTopBannerCardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncTopBannerCardModel;-><init>()V

    invoke-virtual {v3, v1}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v3, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;-><init>()V

    invoke-virtual {v3, v1}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v3, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;

    invoke-direct {v3}, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;-><init>()V

    invoke-virtual {v3, v1}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    goto/16 :goto_0

    :sswitch_5
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelTemplate()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, p0, :cond_4

    :cond_1
    :try_start_1
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    :cond_2
    iget-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_4
    invoke-virtual {p2, p0}, Lcom/miui/common/card/models/TitleCardModel;->setSubCardModelTemplate(I)V

    :cond_4
    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    :try_start_2
    const-string/jumbo v3, "functionId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_7

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/securityscan/cards/DataModel;->Db(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    :cond_6
    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FunctionCardModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse function card model , module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    if-ne v3, v8, :cond_3

    :try_start_3
    const-string/jumbo v3, "https://api.jr.mi.com/activity/security/?from=insads_security_property_entry&partnerId=128"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&encryptImei="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/card/models/FunctionCardModel;->getReplaceImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    if-ne v0, v8, :cond_c

    :try_start_4
    const-string/jumbo v0, "https://api.jr.mi.com/activity/security/?from=insads_security_property_entry&partnerId=128"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "&encryptImei="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/card/models/FunctionCardModel;->getReplaceImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v5, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {v5, v0}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FunctionCardModel"

    const-string/jumbo v5, "parseData error:"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_b
    move-object v0, v4

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x579 -> :sswitch_5
        0x57a -> :sswitch_5
    .end sparse-switch
.end method

.method private static parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;
    .locals 3

    const-string/jumbo v0, "iconId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    invoke-direct {v1}, Lcom/miui/common/card/GridFunctionData;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v2, "summary"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setSummary(Ljava/lang/String;)V

    const-string/jumbo v2, "functionId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setFunctionId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/common/card/GridFunctionData;->setIconId(Ljava/lang/String;)V

    const-string/jumbo v2, "icon"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setIcon(Ljava/lang/String;)V

    const-string/jumbo v2, "template"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setTemplate(I)V

    const-string/jumbo v2, "dataId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setDataId(Ljava/lang/String;)V

    const-string/jumbo v2, "statKey"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    const-string/jumbo v2, "ABtest"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setABtest(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/miui/common/card/GridFunctionData;->setAction(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/common/card/GridFunctionData;->setIconResourceId(I)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getABtest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->ABtest:Ljava/lang/String;

    return-object v0
.end method

.method public getCurModel()Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method public getFunction()Lcom/miui/common/card/functions/BaseFunction;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->function:Lcom/miui/common/card/functions/BaseFunction;

    return-object v0
.end method

.method public getFunctionId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->functionId:I

    return v0
.end method

.method public getGridFunctionDataList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->gridFunctionDataList:Ljava/util/List;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->score:I

    return v0
.end method

.method public getStatKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->statKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->template:I

    return v0
.end method

.method public isHomePageFunc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc:Z

    return v0
.end method

.method public isNeedRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->needRemove:Z

    return v0
.end method

.method public isNoDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isNoDivider:Z

    return v0
.end method

.method public setABtest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->ABtest:Ljava/lang/String;

    return-void
.end method

.method public setFunction(Lcom/miui/common/card/functions/BaseFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->function:Lcom/miui/common/card/functions/BaseFunction;

    return-void
.end method

.method public setFunctionId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->functionId:I

    return-void
.end method

.method public setGridFunctionDataList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->gridFunctionDataList:Ljava/util/List;

    return-void
.end method

.method public setHomePageFunc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc:Z

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setNeedRemove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->needRemove:Z

    return-void
.end method

.method public setNoDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->isNoDivider:Z

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->score:I

    return-void
.end method

.method public setStatKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->statKey:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->template:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
