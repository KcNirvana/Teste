.class Lcom/miui/payment/utils/UploadUtil$UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/utils/UploadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/payment/utils/UploadUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/utils/UploadUtil$UploadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "http://api.assistant.miui.com/blackwhite/payment/feedback"

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "data"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/request/core/JSONRequest;->setHttpMethod(Ljava/lang/String;)Lcom/miui/personalassistant/request/core/BaseJSONRequest;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/payment/utils/UploadUtil$UploadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/payment/utils/UploadUtil;->access$100()V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b0336

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b0334

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/payment/utils/UploadUtil$UploadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
