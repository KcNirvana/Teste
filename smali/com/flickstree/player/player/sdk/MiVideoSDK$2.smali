.class Lcom/flickstree/player/player/sdk/MiVideoSDK$2;
.super Landroid/os/AsyncTask;
.source "MiVideoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flickstree/player/player/sdk/MiVideoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/MiVideoSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    iget-object p1, p1, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$002(Lcom/flickstree/player/player/sdk/MiVideoSDK;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    iget-object p1, p1, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-static {v0}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$100(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "advtId"

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-static {v1}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$000(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-static {p1}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$000(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
