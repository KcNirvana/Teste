.class public Lcom/miui/antivirus/result/DataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xaab6d97e45946f5L


# instance fields
.field private dataVersion:Ljava/lang/String;

.field private initSuccess:Z

.field private isDiversion:Z

.field private layoutId:Ljava/lang/String;

.field private models:Ljava/util/List;

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/DataModel;->models:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/DataModel;->isDiversion:Z

    return-void
.end method

.method public static asV(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-16"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "2"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/info/layout"

    :goto_2
    sget-object v1, Lcom/miui/securityscan/utils/NetUtil$HttpMethod;->Jf:Lcom/miui/securityscan/utils/NetUtil$HttpMethod;

    const-string/jumbo v2, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/securityscan/utils/k;->Jh(Ljava/util/Map;Ljava/lang/String;Lcom/miui/securityscan/utils/NetUtil$HttpMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v1, "channel"

    const-string/jumbo v2, "01-10"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "deviceId"

    invoke-static {v0}, Lcom/miui/antivirus/a/b;->azk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "https://adv.sec.miui.com/info/layout"

    goto :goto_2
.end method

.method public static asW(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/DataModel;
    .locals 9

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Lcom/miui/antivirus/result/DataModel;

    invoke-direct {v3}, Lcom/miui/antivirus/result/DataModel;-><init>()V

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/DataModel;->type:Ljava/lang/String;

    const-string/jumbo v1, "dataVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/DataModel;->dataVersion:Ljava/lang/String;

    const-string/jumbo v1, "layoutId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/DataModel;->layoutId:Ljava/lang/String;

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, v3, Lcom/miui/antivirus/result/DataModel;->initSuccess:Z

    const-string/jumbo v0, "tn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/antivirus/result/DataModel;->testKey:Ljava/lang/String;

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    return-object v4

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "functions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v7, :cond_5

    move v6, v5

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "data"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v8, "002"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "functionId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v4

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/antivirus/result/DataModel;->atb(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/antivirus/result/DataModel;Ljava/lang/String;Lcom/miui/antivirus/result/CardTitle;Z)V

    return-object v3
.end method

.method private static ata(Lorg/json/JSONArray;Lcom/miui/antivirus/result/MiActivity;)V
    .locals 5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "003"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/miui/antivirus/result/MiActivity;->atT(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/MiActivity;

    move-result-object v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/miui/antivirus/result/MiActivity;->atU(Lcom/miui/antivirus/result/MiActivity;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static atb(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/antivirus/result/DataModel;Ljava/lang/String;Lcom/miui/antivirus/result/CardTitle;Z)V
    .locals 12

    if-eqz p5, :cond_2

    const/4 v1, 0x1

    move v10, v1

    :goto_0
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/miui/antivirus/result/CardTitle;->isVisible()Z

    move-result v1

    move v8, v1

    :goto_1
    const/4 v1, 0x0

    move v9, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_10

    if-nez v9, :cond_0

    xor-int/lit8 v1, v8, 0x1

    if-nez v1, :cond_4

    :cond_0
    xor-int/lit8 v1, v10, 0x1

    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v9, v2, :cond_5

    xor-int/lit8 v2, v10, 0x1

    :goto_4
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v3, "type"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "002"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/miui/antivirus/result/Function;->atG(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/Function;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/miui/antivirus/result/DataModel;->ate(Lcom/miui/antivirus/result/Function;Ljava/util/ArrayList;Ljava/util/Set;)Lcom/miui/antivirus/result/Function;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/result/Function;->atX(Z)V

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/result/Function;->atY(Z)V

    invoke-direct {p3, v3}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    :cond_1
    :goto_5
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const-string/jumbo v5, "001"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "0010"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    if-nez v9, :cond_8

    const-string/jumbo v3, "template"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x46

    if-eq v3, v5, :cond_1

    :cond_8
    if-eqz p6, :cond_1

    invoke-static {v4}, Lcom/miui/antivirus/result/Advertisement;->ask(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/Advertisement;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p3, Lcom/miui/antivirus/result/DataModel;->layoutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/result/Advertisement;->setTestId(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/result/Advertisement;->atX(Z)V

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/result/Advertisement;->atY(Z)V

    move-object/from16 v0, p5

    invoke-static {p3, v0, v3}, Lcom/miui/antivirus/result/DataModel;->atd(Lcom/miui/antivirus/result/DataModel;Lcom/miui/antivirus/result/CardTitle;Lcom/miui/antivirus/result/BaseModel;)V

    goto :goto_5

    :cond_9
    const-string/jumbo v5, "003"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Lcom/miui/antivirus/result/MiActivity;->atT(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/MiActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/result/MiActivity;->atX(Z)V

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/result/MiActivity;->atY(Z)V

    invoke-direct {p3, v3}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    goto :goto_5

    :cond_a
    const-string/jumbo v5, "004"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v3

    const v5, 0x7f07074e

    invoke-virtual {v3, v5}, Lcom/miui/securitycenter/Application;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_b
    new-instance v3, Lcom/miui/antivirus/result/News;

    invoke-direct {v3, v4}, Lcom/miui/antivirus/result/News;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/miui/antivirus/result/News;->setDetailTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/result/News;->atX(Z)V

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/result/News;->atY(Z)V

    move-object/from16 v0, p5

    invoke-static {p3, v0, v3}, Lcom/miui/antivirus/result/DataModel;->atd(Lcom/miui/antivirus/result/DataModel;Lcom/miui/antivirus/result/CardTitle;Lcom/miui/antivirus/result/BaseModel;)V

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v1, "card"

    const-string/jumbo v2, "rowType"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "template"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/antivirus/result/CardTitle;->asz(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "list"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v6, Lcom/miui/antivirus/result/CardTitle;

    invoke-direct {v6, v11}, Lcom/miui/antivirus/result/CardTitle;-><init>(Lorg/json/JSONObject;)V

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v6}, Lcom/miui/antivirus/result/CardTitle;->getTemplate()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    new-instance v2, Lcom/miui/antivirus/result/MiActivity;

    invoke-direct {v2}, Lcom/miui/antivirus/result/MiActivity;-><init>()V

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/MiActivity;->setTemplate(I)V

    invoke-static {v1, v2}, Lcom/miui/antivirus/result/DataModel;->ata(Lorg/json/JSONArray;Lcom/miui/antivirus/result/MiActivity;)V

    invoke-virtual {v2}, Lcom/miui/antivirus/result/MiActivity;->atV()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/result/MiActivity;->atX(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/result/MiActivity;->atY(Z)V

    invoke-direct {p3, v6}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    invoke-direct {p3, v2}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    :cond_d
    :goto_6
    invoke-virtual {v6}, Lcom/miui/antivirus/result/CardTitle;->asA()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "module"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/miui/antivirus/result/CardBottom;

    invoke-direct {v1, v11}, Lcom/miui/antivirus/result/CardBottom;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/miui/antivirus/result/CardTitle;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/CardBottom;->setCardId(Ljava/lang/String;)V

    invoke-direct {p3, v1}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v6}, Lcom/miui/antivirus/result/CardTitle;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p3, v6}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    :cond_f
    const-string/jumbo v2, "title"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/miui/antivirus/result/DataModel;->atb(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/antivirus/result/DataModel;Ljava/lang/String;Lcom/miui/antivirus/result/CardTitle;Z)V

    goto :goto_6

    :cond_10
    return-void
.end method

.method private atc(Lcom/miui/antivirus/result/BaseModel;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/DataModel;->testKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/result/BaseModel;->atW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/DataModel;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static atd(Lcom/miui/antivirus/result/DataModel;Lcom/miui/antivirus/result/CardTitle;Lcom/miui/antivirus/result/BaseModel;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/result/CardTitle;->asA()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/antivirus/result/CardTitle;->asy()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/antivirus/result/CardTitle;->asx()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/antivirus/result/CardTitle;->asw(Lcom/miui/antivirus/result/BaseModel;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/result/DataModel;->atf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/antivirus/result/BaseModel;->atW(Ljava/lang/String;)V

    :goto_1
    instance-of v0, p2, Lcom/miui/antivirus/result/News;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/antivirus/result/News;

    invoke-virtual {p1}, Lcom/miui/antivirus/result/CardTitle;->getCardId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/antivirus/result/News;->setCardId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/antivirus/result/DataModel;->atc(Lcom/miui/antivirus/result/BaseModel;)V

    goto :goto_1
.end method

.method public static ate(Lcom/miui/antivirus/result/Function;Ljava/util/ArrayList;Ljava/util/Set;)Lcom/miui/antivirus/result/Function;
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "functionId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/antivirus/result/Function;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "functionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/miui/antivirus/result/Function;->atG(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public asX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/DataModel;->initSuccess:Z

    return v0
.end method

.method public asY()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/DataModel;->models:Ljava/util/List;

    return-object v0
.end method

.method public asZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/DataModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public atf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/DataModel;->testKey:Ljava/lang/String;

    return-object v0
.end method

.method public atg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/DataModel;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public ath(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/DataModel;->models:Ljava/util/List;

    return-void
.end method

.method public ati(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/DataModel;->type:Ljava/lang/String;

    return-void
.end method
