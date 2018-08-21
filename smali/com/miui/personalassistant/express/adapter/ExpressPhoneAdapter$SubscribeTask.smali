.class Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;
.super Landroid/os/AsyncTask;
.source "ExpressPhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAMS_LENGTH:I = 0x2


# instance fields
.field private mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

.field private mPhone:Lcom/miui/personalassistant/express/bean/Phone;

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)V

    return-void
.end method

.method private deletePhone(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "ExpressPhoneAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deletePhone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/express/Preferences;->setBindedPhones(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->isPhoneBinded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private onSubscribeResponse()Ljava/lang/String;
    .locals 9

    const v8, 0x1b0b0514

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v6}, Lcom/miui/personalassistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v6}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v6, "ExpressPhoneAdapter"

    const-string/jumbo v7, "onPostExecute: "

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "success"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->refreshAdapter()V

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v6}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->savePhone(Ljava/lang/String;)V

    const-string/jumbo v6, "express_phone_subscribe"

    const-string/jumbo v7, "setting"

    invoke-static {v6, v7}, Lcom/miui/personalassistant/express/util/StatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v6}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1b0b0515

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask$1;

    invoke-direct {v6, p0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask$1;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;)V

    invoke-static {v6}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "errorMsg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v7}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private onUnsubscribeResponse()Ljava/lang/String;
    .locals 9

    const v8, 0x1b0b019c

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v6}, Lcom/miui/personalassistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v6}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v6, "ExpressPhoneAdapter"

    const-string/jumbo v7, "onPostExecute: "

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "success"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->refreshAdapter()V

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v6}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->deletePhone(Ljava/lang/String;)V

    const-string/jumbo v6, "express_phone_unsubscribe"

    const-string/jumbo v7, "setting"

    invoke-static {v6, v7}, Lcom/miui/personalassistant/express/util/StatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v6}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1b0b019e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "errorMsg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v7}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private refreshAdapter()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$600(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$600(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mType:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhoneCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x1b0b0510

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/express/bean/Phone;

    iget-object v4, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v4}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1b0b050c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/express/bean/Phone;->setNumber(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_1
    const-string/jumbo v5, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :pswitch_2
    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->removePhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->removePhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->isDefaulted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->addPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhones()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1b0b0511

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhones()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/express/bean/Phone;

    iget-object v4, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v4}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1b0b050d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/express/bean/Phone;->setNumber(Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private savePhone(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/express/Preferences;->setBindedPhones(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/Phone;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getPhoneSubscribeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->mType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_1

    :goto_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string/jumbo v3, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->onSubscribeResponse()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->onUnsubscribeResponse()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b050e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b0512

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v2}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x1b0b01a8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
