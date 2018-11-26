.class public Lcom/miui/common/datamodel/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aAa:I

.field private static azY:I


# instance fields
.field private azZ:Z

.field private dataVersion:Ljava/lang/String;

.field private initSuccess:Z

.field private layoutId:Ljava/lang/String;

.field private models:Ljava/util/ArrayList;

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/miui/common/datamodel/a;->aAa:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/common/datamodel/a;->azY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    return-void
.end method

.method public static aJB(Lcom/miui/common/datamodel/Function;Ljava/util/ArrayList;Ljava/util/Set;)Lcom/miui/common/datamodel/Function;
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

    invoke-virtual {p0}, Lcom/miui/common/datamodel/Function;->getAction()I

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

    invoke-static {v0}, Lcom/miui/common/datamodel/Function;->aKe(Lorg/json/JSONObject;)Lcom/miui/common/datamodel/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private aJC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/a;->testKey:Ljava/lang/String;

    return-object v0
.end method

.method public static aJE(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string/jumbo v0, "channel"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/info/layout"

    :goto_1
    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/k;->Jf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "3"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "https://adv.sec.miui.com/info/layout"

    goto :goto_1
.end method

.method public static aJG(I)V
    .locals 0

    sput p0, Lcom/miui/common/datamodel/a;->aAa:I

    return-void
.end method

.method private static aJu(Lorg/json/JSONArray;Lcom/miui/common/datamodel/MiActivity;)V
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

    invoke-static {v2}, Lcom/miui/common/datamodel/MiActivity;->aJR(Lorg/json/JSONObject;)Lcom/miui/common/datamodel/MiActivity;

    move-result-object v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/miui/common/datamodel/MiActivity;->aJS(Lcom/miui/common/datamodel/MiActivity;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static aJv(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/common/datamodel/a;Ljava/lang/String;Lcom/miui/common/datamodel/CardTitle;Z)V
    .locals 13

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v2, 0x0

    move v10, v2

    move-object/from16 v9, p4

    :goto_0
    if-ge v10, v11, :cond_e

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v3, "002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Lcom/miui/common/datamodel/Function;->aKe(Lorg/json/JSONObject;)Lcom/miui/common/datamodel/Function;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/miui/common/datamodel/a;->aJB(Lcom/miui/common/datamodel/Function;Ljava/util/ArrayList;Ljava/util/Set;)Lcom/miui/common/datamodel/Function;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    invoke-direct {v0, v2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "001"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "0010"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    if-nez v10, :cond_3

    const-string/jumbo v2, "template"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "DataModel"

    const-string/jumbo v3, "clean it"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/miui/common/datamodel/a;->aJD()Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x7b

    :goto_2
    const-string/jumbo v4, ""

    sget v6, Lcom/miui/common/datamodel/a;->azY:I

    packed-switch v6, :pswitch_data_0

    :goto_3
    sget v6, Lcom/miui/common/datamodel/a;->azY:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/miui/common/datamodel/a;->azY:I

    sget v6, Lcom/miui/common/datamodel/a;->azY:I

    sget v7, Lcom/miui/common/datamodel/a;->aAa:I

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    sput v6, Lcom/miui/common/datamodel/a;->azY:I

    :cond_4
    const-string/jumbo v6, "DataModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DataModel addItem: placeId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3, v5, v4}, Lcom/miui/common/datamodel/Advertisement;->aKD(JLorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/datamodel/Advertisement;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/common/datamodel/a;->layoutId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/common/datamodel/Advertisement;->setTestId(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/miui/common/datamodel/a;->aJx(Lcom/miui/common/datamodel/a;Lcom/miui/common/datamodel/CardTitle;Lcom/miui/common/datamodel/BaseModel;)V

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x1c8

    goto :goto_2

    :pswitch_0
    const-string/jumbo v4, ""

    goto :goto_3

    :pswitch_1
    const-string/jumbo v4, ""

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "003"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v5}, Lcom/miui/common/datamodel/MiActivity;->aJR(Lorg/json/JSONObject;)Lcom/miui/common/datamodel/MiActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    invoke-direct {v0, v2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "004"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/miui/common/datamodel/News;

    invoke-direct {v3, v5}, Lcom/miui/common/datamodel/News;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const v4, 0x7f07074e

    invoke-virtual {v2, v4}, Lcom/miui/securitycenter/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Lcom/miui/common/datamodel/News;->setDetailTitle(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1, v3}, Lcom/miui/common/datamodel/a;->aJx(Lcom/miui/common/datamodel/a;Lcom/miui/common/datamodel/CardTitle;Lcom/miui/common/datamodel/BaseModel;)V

    move-object v9, v2

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "005"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/datamodel/Line;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/common/datamodel/Line;

    invoke-direct {v3}, Lcom/miui/common/datamodel/Line;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "card"

    const-string/jumbo v4, "rowType"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v2, "template"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/common/datamodel/CardTitle;->aKQ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "list"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v7, Lcom/miui/common/datamodel/CardTitle;

    invoke-direct {v7, v12}, Lcom/miui/common/datamodel/CardTitle;-><init>(Lorg/json/JSONObject;)V

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v7}, Lcom/miui/common/datamodel/CardTitle;->getTemplate()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    new-instance v3, Lcom/miui/common/datamodel/MiActivity;

    invoke-direct {v3}, Lcom/miui/common/datamodel/MiActivity;-><init>()V

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/miui/common/datamodel/MiActivity;->setTemplate(I)V

    invoke-static {v2, v3}, Lcom/miui/common/datamodel/a;->aJu(Lorg/json/JSONArray;Lcom/miui/common/datamodel/MiActivity;)V

    invoke-virtual {v3}, Lcom/miui/common/datamodel/MiActivity;->aJT()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_a

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    invoke-direct {v0, v3}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    :cond_a
    :goto_5
    invoke-virtual {v7}, Lcom/miui/common/datamodel/CardTitle;->aKR()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "module"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/miui/common/datamodel/CardBottom;

    invoke-direct {v2, v12}, Lcom/miui/common/datamodel/CardBottom;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7}, Lcom/miui/common/datamodel/CardTitle;->getCardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/datamodel/CardBottom;->setCardId(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-direct {v0, v2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v7}, Lcom/miui/common/datamodel/CardTitle;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p3

    invoke-direct {v0, v7}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    :cond_c
    const-string/jumbo v3, "title"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/miui/common/datamodel/a;->aJv(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/common/datamodel/a;Ljava/lang/String;Lcom/miui/common/datamodel/CardTitle;Z)V

    goto :goto_5

    :cond_d
    const-string/jumbo v3, "020"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/common/datamodel/LocalFunction;

    invoke-direct {v2, v5}, Lcom/miui/common/datamodel/LocalFunction;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, p3

    invoke-direct {v0, v2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    goto/16 :goto_1

    :cond_e
    return-void

    :cond_f
    move-object v2, v9

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private aJw(Lcom/miui/common/datamodel/BaseModel;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/a;->testKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/common/datamodel/BaseModel;->aKd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static aJx(Lcom/miui/common/datamodel/a;Lcom/miui/common/datamodel/CardTitle;Lcom/miui/common/datamodel/BaseModel;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/common/datamodel/CardTitle;->aKR()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/datamodel/CardTitle;->aKS()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/common/datamodel/CardTitle;->aKT()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/common/datamodel/CardTitle;->aKU(Lcom/miui/common/datamodel/BaseModel;)V

    invoke-direct {p0}, Lcom/miui/common/datamodel/a;->aJC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/common/datamodel/BaseModel;->aKd(Ljava/lang/String;)V

    :goto_1
    instance-of v0, p2, Lcom/miui/common/datamodel/News;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/common/datamodel/News;

    invoke-virtual {p1}, Lcom/miui/common/datamodel/CardTitle;->getCardId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/common/datamodel/News;->setCardId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/common/datamodel/a;->aJw(Lcom/miui/common/datamodel/BaseModel;)V

    goto :goto_1
.end method

.method public static aJy(Lorg/json/JSONObject;Z)Lcom/miui/common/datamodel/a;
    .locals 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    new-instance v3, Lcom/miui/common/datamodel/a;

    invoke-direct {v3}, Lcom/miui/common/datamodel/a;-><init>()V

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/common/datamodel/a;->type:Ljava/lang/String;

    const-string/jumbo v0, "dataVersion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/common/datamodel/a;->dataVersion:Ljava/lang/String;

    const-string/jumbo v0, "layoutId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/common/datamodel/a;->layoutId:Ljava/lang/String;

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/miui/common/datamodel/a;->initSuccess:Z

    const-string/jumbo v0, "tn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/common/datamodel/a;->testKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/miui/common/datamodel/a;->aJF(Z)V

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v4

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    return-object v4

    :cond_2
    const-string/jumbo v1, "functions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v8, :cond_5

    move v5, v7

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_3

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_2
    if-ge v5, v6, :cond_5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "data"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v10, "002"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "functionId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v4

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/common/datamodel/a;->aJv(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/common/datamodel/a;Ljava/lang/String;Lcom/miui/common/datamodel/CardTitle;Z)V

    iget-object v0, v3, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v3, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/datamodel/Line;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    return-object v3
.end method


# virtual methods
.method public aJA()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/a;->models:Ljava/util/ArrayList;

    return-object v0
.end method

.method public aJD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/datamodel/a;->azZ:Z

    return v0
.end method

.method public aJF(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/datamodel/a;->azZ:Z

    return-void
.end method

.method public aJz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/datamodel/a;->initSuccess:Z

    return v0
.end method
