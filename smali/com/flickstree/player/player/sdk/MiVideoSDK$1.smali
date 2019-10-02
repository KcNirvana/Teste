.class Lcom/flickstree/player/player/sdk/MiVideoSDK$1;
.super Ljava/lang/Object;
.source "MiVideoSDK.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/MiVideoSDK;->callPostVideoView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/flickstree/player/player/sdk/PostVideoView/ResponseVideoPostView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/MiVideoSDK;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/flickstree/player/player/sdk/PostVideoView/ResponseVideoPostView;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/flickstree/player/player/sdk/PostVideoView/ResponseVideoPostView;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/flickstree/player/player/sdk/PostVideoView/ResponseVideoPostView;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "advtId"

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-static {v0}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$000(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "additional_info"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    iget-object p1, p1, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-static {p2}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$100(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "adsPlayCount"

    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "spentTime"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;->this$0:Lcom/flickstree/player/player/sdk/MiVideoSDK;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->access$202(Lcom/flickstree/player/player/sdk/MiVideoSDK;I)I

    const-string p2, "pausedPrevTime"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "startTimeComStop"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "videoDuration"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
