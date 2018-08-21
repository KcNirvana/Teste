.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.super Ljava/lang/Object;
.source "FlybirdActionType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;,
        Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
    }
.end annotation


# static fields
.field public static final ACTION_STRING_ALERT:Ljava/lang/String; = "loc:alert"

.field public static final ACTION_STRING_ALIPAY:Ljava/lang/String; = "loc:alipay"

.field public static final ACTION_STRING_AUTH:Ljava/lang/String; = "loc:auth"

.field public static final ACTION_STRING_BACK:Ljava/lang/String; = "loc:back"

.field public static final ACTION_STRING_BNCB:Ljava/lang/String; = "loc:bncb"

.field public static final ACTION_STRING_BNVB:Ljava/lang/String; = "loc:bnvb"

.field public static final ACTION_STRING_CASHIERMAIN:Ljava/lang/String; = "loc:cashiermain"

.field public static final ACTION_STRING_CONTINUE:Ljava/lang/String; = "loc:continue"

.field public static final ACTION_STRING_DESTROY:Ljava/lang/String; = "loc:destroy"

.field public static final ACTION_STRING_DISMISS:Ljava/lang/String; = "loc:dismiss"

.field public static final ACTION_STRING_EXIT:Ljava/lang/String; = "loc:exit"

.field public static final ACTION_STRING_FEEDBACK:Ljava/lang/String; = "loc:feedback"

.field public static final ACTION_STRING_FULLPAY:Ljava/lang/String; = "loc:fullpay"

.field public static final ACTION_STRING_LOG:Ljava/lang/String; = "loc:log"

.field public static final ACTION_STRING_LOGIN:Ljava/lang/String; = "loc:login"

.field public static final ACTION_STRING_NONE:Ljava/lang/String; = "loc:none"

.field public static final ACTION_STRING_OPENWEB:Ljava/lang/String; = "loc:openweb"

.field public static final ACTION_STRING_OPERATION:Ljava/lang/String; = "loc:operation"

.field public static final ACTION_STRING_OPRENURL:Ljava/lang/String; = "loc:openurl"

.field public static final ACTION_STRING_READPHONENUM:Ljava/lang/String; = "loc:readPhoneNum"

.field public static final ACTION_STRING_READSMS:Ljava/lang/String; = "loc:readsms"

.field public static final ACTION_STRING_RELOAD:Ljava/lang/String; = "loc:reload"

.field public static final ACTION_STRING_RETURNDATA:Ljava/lang/String; = "loc:returnData"

.field public static final ACTION_STRING_SCAN:Ljava/lang/String; = "loc:scan"

.field public static final ACTION_STRING_SCANCARD:Ljava/lang/String; = "loc:scancard"

.field public static final ACTION_STRING_SCANFACE:Ljava/lang/String; = "loc:scanface"

.field public static final ACTION_STRING_SETRESULT:Ljava/lang/String; = "loc:setResult"

.field public static final ACTION_STRING_SHARE:Ljava/lang/String; = "loc:share"

.field public static final ACTION_STRING_SHOWTPL:Ljava/lang/String; = "loc:showTpl"

.field public static final ACTION_STRING_SWLOAD:Ljava/lang/String; = "loc:swload"

.field public static final ACTION_STRING_VERIFYID:Ljava/lang/String; = "loc:verifyid"

.field public static final ACTION_STRING_WAPPAY:Ljava/lang/String; = "loc:wappay"


# instance fields
.field private actionParams:[Ljava/lang/String;

.field private delayTime:I

.field private mActionData:Ljava/lang/String;

.field private mIsAjax:Z

.field private mIsFromLocalEvent:Z

.field private mLogFieldEndCode:I

.field private mNeedForbidDuplicateState:Z

.field private mNetErrorCode:Ljava/lang/String;

.field private mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/lang/String;

.field private types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsAjax:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsFromLocalEvent:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNeedForbidDuplicateState:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsAjax:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsFromLocalEvent:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNeedForbidDuplicateState:Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getParams()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->setParams([Ljava/lang/String;)V

    return-void
.end method

.method private paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    const-string/jumbo v6, "\'"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "ex"

    const-string/jumbo v5, "JsActionQuoteEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "loc:operation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :goto_2
    const-string/jumbo v1, "loc:scan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :cond_2
    const-string/jumbo v1, "loc:auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :cond_3
    const-string/jumbo v1, "loc:swload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Swload:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->setParams([Ljava/lang/String;)V

    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public static parseAction(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string/jumbo v4, "\'"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private parseJSONAction(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v0, "(\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getActionData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mActionData:Ljava/lang/String;

    return-object v0
.end method

.method public getActionParams()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    return-object v0
.end method

.method public getDelayTime()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->delayTime:I

    return v0
.end method

.method public getNetErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNetErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSourceJson()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getmLogFieldEndCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mLogFieldEndCode:I

    return v0
.end method

.method public isAjax()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsAjax:Z

    return v0
.end method

.method public isDelayEventType()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    array-length v2, v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public ismIsFromLocalEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsFromLocalEvent:Z

    return v0
.end method

.method public ismNeedForbidDuplicateState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNeedForbidDuplicateState:Z

    return v0
.end method

.method public parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
    .locals 8

    const/4 v7, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mActionData:Ljava/lang/String;

    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#flybird"

    const-string/jumbo v4, "FlybirdActionType.parseAction"

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->delayTime:I

    :cond_1
    const-string/jumbo v2, "neec"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "neec"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNetErrorCode:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    array-length v0, v2

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_23

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    sget-object v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v5, p0, v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    aput-object v5, v4, v0

    const-string/jumbo v4, "loc:exit"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "loc:back"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto :goto_3

    :cond_6
    aget-object v4, v2, v0

    if-eqz v4, :cond_7

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:bncb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->setParams([Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    aget-object v4, v2, v0

    if-eqz v4, :cond_8

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:bnvb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto :goto_3

    :cond_8
    aget-object v4, v2, v0

    if-eqz v4, :cond_9

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:reload"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReLoad:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto :goto_3

    :cond_9
    aget-object v4, v2, v0

    if-eqz v4, :cond_a

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:showTpl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ShowTpl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->setParams([Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    aget-object v4, v2, v0

    if-eqz v4, :cond_b

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:openurl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->actionParams:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->setParams([Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    aget-object v4, v2, v0

    if-eqz v4, :cond_c

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:dismiss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_c
    aget-object v4, v2, v0

    if-eqz v4, :cond_e

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:returnData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->params:Ljava/lang/String;

    :cond_d
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_e
    aget-object v4, v2, v0

    if-eqz v4, :cond_f

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:scancard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_f
    aget-object v4, v2, v0

    if-eqz v4, :cond_10

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:readsms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_10
    aget-object v4, v2, v0

    if-eqz v4, :cond_11

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:openweb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_11
    aget-object v4, v2, v0

    if-eqz v4, :cond_12

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:wappay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_12
    aget-object v4, v2, v0

    if-eqz v4, :cond_13

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:scanface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_13
    aget-object v4, v2, v0

    if-eqz v4, :cond_14

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_14
    aget-object v4, v2, v0

    if-eqz v4, :cond_15

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:share"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Share:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_15
    aget-object v4, v2, v0

    if-eqz v4, :cond_16

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:destroy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Destroy:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_16
    aget-object v4, v2, v0

    if-eqz v4, :cond_17

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:readPhoneNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_17
    aget-object v4, v2, v0

    if-eqz v4, :cond_18

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:continue"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Continue:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_18
    aget-object v4, v2, v0

    if-eqz v4, :cond_19

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:login"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Login:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_19
    aget-object v4, v2, v0

    if-eqz v4, :cond_1a

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:verifyid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->VerifyId:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_1a
    aget-object v4, v2, v0

    if-eqz v4, :cond_1b

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseJSONAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Alert:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_1b
    aget-object v4, v2, v0

    if-eqz v4, :cond_1c

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:feedback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseJSONAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Feedback:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_1c
    aget-object v4, v2, v0

    if-eqz v4, :cond_1d

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:setResult"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->SetResult:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_1d
    aget-object v4, v2, v0

    if-eqz v4, :cond_1e

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:alipay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Alipay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_1e
    aget-object v4, v2, v0

    if-eqz v4, :cond_1f

    aget-object v4, v2, v0

    const-string/jumbo v5, "loc:log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseJSONAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Log:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_1f
    aget-object v4, v2, v0

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_20

    aget-object v4, v2, v0

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_20

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    aget-object v5, v2, v0

    invoke-direct {p0, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->paraseAction(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v4, "act"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string/jumbo v4, "loc:exit"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_21
    aget-object v4, v2, v0

    const-string/jumbo v5, "loc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_22
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNeedForbidDuplicateState:Z

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    aget-object v4, v4, v0

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v5, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    goto/16 :goto_3

    :cond_23
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->types:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    goto/16 :goto_1

    :cond_24
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public setActionData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mActionData:Ljava/lang/String;

    return-void
.end method

.method public setDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->delayTime:I

    return-void
.end method

.method public setIsAjax(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsAjax:Z

    return-void
.end method

.method public setmIsFromLocalEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mIsFromLocalEvent:Z

    return-void
.end method

.method public setmLogFieldEndCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mLogFieldEndCode:I

    return-void
.end method

.method public setmNeedForbidDuplicateState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->mNeedForbidDuplicateState:Z

    return-void
.end method
