.class Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;
.super Ljava/lang/Object;
.source "SearchAddressActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/SearchAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityCodeLoaderCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    return-void
.end method


# virtual methods
.method public onParseRequest(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;)Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 6

    new-instance v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "city"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->city:Ljava/lang/String;

    const-string/jumbo v3, "cityCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->cityCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SearchAddressActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " JSONException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreRequest(I)V
    .locals 0

    return-void
.end method

.method public onRequestFinished(ILcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->hasData()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {v3, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1902(Lcom/miui/personalassistant/ui/SearchAddressActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v1, v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$302(Lcom/miui/personalassistant/ui/SearchAddressActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const-string/jumbo v2, "key_city_code"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const-string/jumbo v2, "key_city_name"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$2000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const-string/jumbo v2, "pref_last_navi_location_update_time"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$2100(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->getCityCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->getCityName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const-string/jumbo v2, "pref_last_navi_location_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$2100(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1b0b02ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method
