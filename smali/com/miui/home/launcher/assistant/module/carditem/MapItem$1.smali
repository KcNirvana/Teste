.class Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;
.super Ljava/lang/Object;
.source "MapItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MapItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "MapItem"

    const-string/jumbo v1, "current:  long:%s   lat:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v0, p2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$002(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$102(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    const-string/jumbo v3, ""

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v4, v1, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v5, v1, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v6, v1, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeAddress:Ljava/lang/String;

    const-string/jumbo v7, "home"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$100(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v4, v4, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v5, v5, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v6, v6, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeAddress:Ljava/lang/String;

    const-string/jumbo v7, "office"

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEtaInfo(Ljava/lang/String;)V
    .locals 29

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MapItem"

    const-string/jumbo v3, "getEtaInfo: isEmpty"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v2, "route"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string/jumbo v2, "traffic"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    if-eqz v25, :cond_0

    invoke-static/range {v24 .. v24}, Lcom/miui/home/launcher/assistant/util/MapUtil;->sortDataByStatus(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v26

    const-string/jumbo v27, ""

    const/4 v9, 0x0

    const-string/jumbo v2, "msg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "duration"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    const-string/jumbo v2, "distance"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v2, v0

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    div-int/lit8 v23, v21, 0x3c

    if-lez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0b027c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, v21, 0x3c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v2, "MapItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    const-string/jumbo v3, "address"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$402(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    const-string/jumbo v3, "startCity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$502(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v6, ""

    const-string/jumbo v2, "home"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$100(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v6, v7, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v7, v7, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeLng:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v8, v8, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mHomeAddress:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getMapUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$100(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v14, v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v15, v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v0, v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "office"

    invoke-static/range {v10 .. v17}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v8, v3, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    move-object/from16 v5, v19

    move-object/from16 v7, v26

    invoke-static/range {v2 .. v8}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->update(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    const-string/jumbo v2, "MapItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "etadetail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0b027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    rem-int/lit8 v5, v21, 0x3c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v2, "MapItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move/from16 v0, v20

    int-to-long v2, v0

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0b026f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/4 v9, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0b027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v2, "office"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$100(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v6, v7, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v7, v7, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeLng:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v8, v8, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mOfficeAddress:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getMapUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_2
.end method
