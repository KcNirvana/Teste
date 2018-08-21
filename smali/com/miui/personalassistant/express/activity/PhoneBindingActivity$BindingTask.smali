.class Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;
.super Landroid/os/AsyncTask;
.source "PhoneBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

.field private mRequestType:I

.field final synthetic this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;-><init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)V

    return-void
.end method

.method private savePhone(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/express/Preferences;->setBindedPhones(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "key_express_auth_phone"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mRequestType:I

    iget v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$200(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getPhoneRegisterRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$200(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$300(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getPhoneVerifyRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string/jumbo v5, ""

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v8, 0x1b0b050e

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$400(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/os/CountDownTimer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$400(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/os/CountDownTimer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->onFinish()V

    :goto_1
    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v7, v5}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v8, 0x1b0b0512

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v8, 0x1b0b01a8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v7}, Lcom/miui/personalassistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_0

    const-string/jumbo v7, "success"

    invoke-virtual {v3, v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->mRequestType:I

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v8, 0x1b0b01b1

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "errorMsg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v9, 0x1b0b01af

    invoke-virtual {v8, v9}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$400(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/os/CountDownTimer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$400(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/os/CountDownTimer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->onFinish()V

    goto/16 :goto_1

    :pswitch_1
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v8, 0x1b0b01b3

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const/4 v8, -0x1

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "phone"

    iget-object v11, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v11}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$200(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->access$200(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->savePhone(Ljava/lang/String;)V

    const-string/jumbo v7, "express_phone_subscribe"

    const-string/jumbo v8, "setting"

    invoke-static {v7, v8}, Lcom/miui/personalassistant/express/util/StatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask$1;

    invoke-direct {v7, p0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask$1;-><init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;)V

    invoke-static {v7}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->finish()V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v7, "errorMsg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    const v9, 0x1b0b01b2

    invoke-virtual {v8, v9}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
